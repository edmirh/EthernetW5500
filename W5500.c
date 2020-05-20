#include "W5500.h"
#include "usart.h"

#define SOCK_ANY_PORT_NUM  0xC000

uint8_t  sock_pack_info[_WIZCHIP_SOCK_NUM_] = {0,};
static uint16_t sock_remained_size[_WIZCHIP_SOCK_NUM_] = {0,0,};
static uint16_t sock_any_port = SOCK_ANY_PORT_NUM;
static uint16_t sock_io_mode = 0;
static uint16_t sock_is_sending = 0;

uint8_t initW5500(uint8_t * gaddr, uint8_t * subnet, uint8_t * mac, uint8_t * saddr) {
	initSPI(SPI_BaudRatePrescaler_32);

	setGAR(gaddr);
	setSUBR(subnet);
	setSHAR(mac);
	setSIPR(saddr);
	
	return 1;
}

uint8_t readReg(uint32_t addr) {
	uint8_t tmp;
	addr |= (SPI_READ)|(SPI_VDM);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	
	tmp = rxSPI();
	SPI_HIGH;
	
	return tmp;
}

void writeReg(uint32_t addr, uint8_t data) {
	addr |= (SPI_WRITE)|(SPI_VDM);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	txSPI(data);
	SPI_HIGH;
}

void writeBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_WRITE)|(SPI_VDM);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	for(uint8_t i=0;i<len;i++) {
		txSPI(pBuff[i]);
	}
	SPI_HIGH;
}

void readBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_READ)|(SPI_VDM);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	for(uint8_t i=0;i<len;i++) {
		pBuff[i] = rxSPI();
	}
	SPI_HIGH;
}

uint16_t getSn_PORT(uint8_t sn) {
	uint16_t tmp = 0;
	uint16_t tmp1 = 0;
	tmp1 = ((uint16_t)readReg(Sn_PORT(sn)) << 8);
	tmp = tmp1 + readReg(W5500_OFFSET_INC(Sn_PORT(sn),1));
	return tmp;	
}

uint16_t getSn_TX_FSR(uint8_t sn) {
	uint16_t val = 0, val1 = 0;
	
	do {
		val1 = readReg(Sn_TX_FSR(sn));
		val1 = (val1 << 8) + readReg(W5500_OFFSET_INC(Sn_TX_FSR(sn),1));
		if(val1 != 0) {
			val = readReg(Sn_TX_FSR(sn));
			val = (val << 8) + readReg(W5500_OFFSET_INC(Sn_TX_FSR(sn),1));
		}
	}while(val != val1);
	return val;
}

uint16_t getSn_RX_RSR(uint8_t sn) {
	uint16_t val = 0, val1 = 0;
	
	do {
		val1 = readReg(Sn_RX_RSR(sn));
		val1 = (val1 << 8) + readReg(W5500_OFFSET_INC(Sn_RX_RSR(sn),1));
		if(val1 != 0) {
			val = readReg(Sn_TX_FSR(sn));
			val = (val << 8) + readReg(W5500_OFFSET_INC(Sn_RX_RSR(sn),1));
		}
	}while(val != val1);
	return val;
}

void sendData(uint8_t sn, uint8_t * data, uint16_t len) {
	uint16_t ptr = 0;
	uint32_t addrsel = 0;
	
	if(len == 0) return;
	ptr = getSn_TX_WR(sn);
	
	addrsel = ((uint32_t)ptr << 8) + (W5500_TXBUF_BLOCK(sn) << 3);
	
	writeBuff(addrsel, data, len);
	ptr += len;
	setSn_TX_WR(sn, ptr);
}

void recvData(uint8_t sn, uint8_t * data, uint16_t len) {
	uint16_t ptr = 0;
	uint32_t addrsel = 0;
	
	if(len == 0) return;
	
	addrsel = ((uint32_t)ptr << 8) + (W5500_RXBUF_BLOCK(sn) << 3);
	
	readBuff(addrsel, data, len);
	ptr += len;
	
	setSn_RX_RD(sn, ptr);
}

uint8_t connect(uint8_t sn, uint8_t * addr, uint16_t port)
{  
	if(port == 0) return SOCKERR_PORTZERO;
	setSn_MR(sn, Sn_MR_TCP);
	setSn_DIPR(sn,addr);
	setSn_DPORT(sn,port);
	setSn_CR(sn,Sn_CR_OPEN);
	setSn_CR(sn,Sn_CR_CONNECT);
   while(getSn_CR(sn));
   if(sock_io_mode & (1<<sn)) return SOCK_BUSY;
   
   while(getSn_SR(sn) != SOCK_ESTABLISHED)
   {
		if (getSn_IR(sn) & Sn_IR_TIMEOUT)
		{
			setSn_IR(sn, Sn_IR_TIMEOUT);
            return SOCKERR_TIMEOUT;
		}

		if (getSn_SR(sn) == SOCK_CLOSED)
		{
			return SOCKERR_SOCKCLOSED;
		}
	}
   
   return SOCK_OK;
}

int8_t listen(uint8_t sn)
{
	setSn_MR(sn, Sn_MR_TCP);
	setSn_CR(sn,Sn_CR_OPEN);
	setSn_CR(sn,Sn_CR_LISTEN);
	while(getSn_CR(sn));
   
   while(getSn_SR(sn) != SOCK_LISTEN)
   {
         close(sn);
         return SOCKERR_SOCKCLOSED;
   }
   return SOCK_OK;
}

int32_t send(uint8_t sn, uint8_t * buf, uint16_t len)
{
   uint8_t tmp=0;
   uint16_t freesize=0;

   tmp = getSn_SR(sn);
   if(tmp != SOCK_ESTABLISHED && tmp != SOCK_CLOSE_WAIT) return SOCKERR_SOCKSTATUS;
   if( sock_is_sending & (1<<sn) )
   {
      tmp = getSn_IR(sn);
      if(tmp & Sn_IR_SENDOK)
      {
         setSn_IR(sn, Sn_IR_SENDOK);
         sock_is_sending &= ~(1<<sn);         
      }
      else if(tmp & Sn_IR_TIMEOUT)
      {
         close(sn);
         return SOCKERR_TIMEOUT;
      }
      else return SOCK_BUSY;
   }
   freesize = getSn_TxMAX(sn);
   if (len > freesize) len = freesize; // check size not to exceed MAX size.
   while(1)
   {
      freesize = getSn_TX_FSR(sn);
      tmp = getSn_SR(sn);
      if ((tmp != SOCK_ESTABLISHED) && (tmp != SOCK_CLOSE_WAIT))
      {
         close(sn);
         return SOCKERR_SOCKSTATUS;
      }
      if( (sock_io_mode & (1<<sn)) && (len > freesize) ) return SOCK_BUSY;
      if(len <= freesize) break;
   }
   sendData(sn, buf, len);
   
   setSn_CR(sn,Sn_CR_SEND);
   while(getSn_CR(sn));
   sock_is_sending |= (1 << sn);

   return (int32_t)len;
}

int8_t close(uint8_t sn)
{
	CHECK_SOCKNUM();
	setSn_CR(sn,Sn_CR_CLOSE);
   /* wait to process the command... */
	while( getSn_CR(sn) );
	/* clear all interrupt of the socket. */
	setSn_IR(sn, 0xFF);
	//A20150401 : Release the sock_io_mode of socket n.
	sock_io_mode &= ~(1<<sn);
	//
	sock_is_sending &= ~(1<<sn);
	sock_remained_size[sn] = 0;
	sock_pack_info[sn] = 0;
	while(getSn_SR(sn) != SOCK_CLOSED);
	return SOCK_OK;
}
