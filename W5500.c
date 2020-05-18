#include "W5500.h"
#include "usart.h"

#define SOCK_ANY_PORT_NUM  0xC000

static uint16_t sock_any_port = SOCK_ANY_PORT_NUM;
static uint16_t sock_io_mode = 0;
static uint16_t sock_is_sending = 0;

uint8_t readReg(uint32_t addr) {
	uint8_t tmp;
	addr |= (SPI_READ)|(SPI_VDM);
	
	initSPI(SPI_BaudRatePrescaler_32);
	
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
	
	initSPI(SPI_BaudRatePrescaler_32);
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	txSPI(data);
	SPI_HIGH;
}

void writeBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_WRITE)|(SPI_VDM);
	
	initSPI(SPI_BaudRatePrescaler_32);
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	printUSART2("Write into buf\n");
	for(uint8_t i = 0; i<len; i++) {
		txSPI(pBuff[i]);
		printUSART2("%x", pBuff[i]);
	}
	printUSART2("\n");
	SPI_HIGH;
}

void readBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_READ)|(SPI_VDM);
	initSPI(SPI_BaudRatePrescaler_32);
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	printUSART2("Read buffer\n");
	for(uint8_t i = 0; i<len; i++) {
		pBuff[i] = rxSPI();
		printUSART2("%c", pBuff[i]);
	}
	printUSART2("\n");
	SPI_HIGH;
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
   //CHECK_SOCKNUM();
   //CHECK_SOCKMODE(Sn_MR_TCP);
   //CHECK_SOCKINIT();
   //M20140501 : For avoiding fatal error on memory align mismatched
   //if( *((uint32_t*)addr) == 0xFFFFFFFF || *((uint32_t*)addr) == 0) return SOCKERR_IPINVALID;
   {
      uint32_t taddr;
      taddr = ((uint32_t)addr[0] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[1] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[2] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[3] & 0x000000FF);
      if( taddr == 0xFFFFFFFF || taddr == 0) return SOCKERR_IPINVALID;
   }
   //
	
	if(port == 0) return SOCKERR_PORTZERO;
	setSn_DIPR(sn,addr);
	setSn_DPORT(sn,port);
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

