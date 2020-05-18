#ifndef _W5500_H_
#define _W5500_H_

#include "spi.h"

#define W5500_Mode							0x0000
#define W5500_BASE							0x00000000
#define W5500_CR							0x00

//Control mode
#define SPI_READ							0x00
#define SPI_WRITE							0x04
#define SPI_VDM								0x00

#define W5500_OFFSET_INC(ADDR, N)    		(ADDR + (N<<8))

//Common register block
#define	MR	 		W5500_BASE + (0x0000 << 8) + (W5500_CR << 3) //This representing an SPI Frame, 16bits for address offset, and 8 bits for Common Reg
#define GAR         W5500_BASE + (0x0001 << 8) + (W5500_CR << 3)		
#define SUBR		W5500_BASE + (0x0005 << 8) + (W5500_CR << 3)
#define SHAR		W5500_BASE + (0x0009 << 8) + (W5500_CR << 3)		
#define SIPR		W5500_BASE + (0x000F << 8) + (W5500_CR << 3)		
#define INTLEVEL	W5500_BASE + (0x0013 << 8) + (W5500_CR << 3)		
#define IR			W5500_BASE + (0x0015 << 8) + (W5500_CR << 3)		
#define IMR			W5500_BASE + (0x0016 << 8) + (W5500_CR << 3)		
#define SIR			W5500_BASE + (0x0017 << 8) + (W5500_CR << 3)		
#define SIMR		W5500_BASE + (0x0018 << 8) + (W5500_CR << 3)		
#define RTR			W5500_BASE + (0x0019 << 8) + (W5500_CR << 3)		
#define RCR			W5500_BASE + (0x001B << 8) + (W5500_CR << 3)		
#define PTIMER		W5500_BASE + (0x001C << 8) + (W5500_CR << 3)		
#define PHAR		W5500_BASE + (0x001E << 8) + (W5500_CR << 3)	

#define setGAR(gar) \
		writeBuff(GAR,gar,4)
#define setSUBR(subr) \
		writeBuff(SUBR,subr,4)
#define setSHAR(shar) \
		writeBuff(SHAR,shar,4)
#define setSIPR(sipr) \
		writeBuff(SIPR,sipr,4)

//Socket register block
#define W5500_SREG(N)       (1+4*N)										//Socket register
#define W5500_TXBUF_BLOCK(N)      (2+4*N) 								//Socket N Tx buffer address block
#define W5500_RXBUF_BLOCK(N)      (3+4*N) 								//Socket N Rx buffer address block
#define Sn_MR(N)	W5500_BASE + (0x0000 << 8) + (W5500_SREG(N) << 3)	
#define Sn_CR(N)	W5500_BASE + (0x0001 << 8) + (W5500_SREG(N) << 3)	
#define Sn_IR(N)	W5500_BASE + (0x0002 << 8) + (W5500_SREG(N) << 3)	
#define Sn_SR(N)	W5500_BASE + (0x0003 << 8) + (W5500_SREG(N) << 3)	
#define Sn_PORT(N)	W5500_BASE + (0x0004 << 8) + (W5500_SREG(N) << 3)	
#define Sn_DHAR(N)	W5500_BASE + (0x0006 << 8) + (W5500_SREG(N) << 3)	
#define Sn_DIPR(N)	W5500_BASE + (0x000C << 8) + (W5500_SREG(N) << 3)	
#define Sn_DPORT(N)	W5500_BASE + (0x0010 << 8) + (W5500_SREG(N) << 3)	
#define Sn_MSSR(N)	W5500_BASE + (0x0012 << 8) + (W5500_SREG(N) << 3)	
#define Sn_TOS(N)	W5500_BASE + (0x0015 << 8) + (W5500_SREG(N) << 3)	
#define Sn_TTL(N)	W5500_BASE + (0x0016 << 8) + (W5500_SREG(N) << 3)	
#define Sn_RXBUFSIZE(N)	W5500_BASE + (0x001E << 8) + (W5500_SREG(N) << 3)	
#define Sn_TXBUFSIZE(N)	W5500_BASE + (0x001F << 8) + (W5500_SREG(N) << 3)	
#define Sn_TX_FSR(N)	W5500_BASE + (0x0020 << 8) + (W5500_SREG(N) << 3)	
#define Sn_TX_WR(N)	W5500_BASE + (0x0024 << 8) + (W5500_SREG(N) << 3)	
#define Sn_RX_RSR(N)	W5500_BASE + (0x0026 << 8) + (W5500_SREG(N) << 3)	
#define Sn_RX_RD(N)	W5500_BASE + (0x0028 << 8) + (W5500_SREG(N) << 3)	
#define Sn_RX_WR(N)	W5500_BASE + (0x002A << 8) + (W5500_SREG(N) << 3)	
#define Sn_IMR(N)	W5500_BASE + (0x002C << 8) + (W5500_SREG(N) << 3)	
#define Sn_FRAAG(N)	W5500_BASE + (0x002D << 8) + (W5500_SREG(N) << 3)		
#define Sn_KPALVTR(N)	W5500_BASE + (0x002C << 8) + (W5500_SREG(N) << 3)	
#define Sn_TX_RD(N)     W5500_BASE + (0x0022 << 8) + (W5500_SREG(N) << 3)
#define Sn_TX_WR(N)     W5500_BASE + (0x0024 << 8) + (W5500_SREG(N) << 3)

#define setSn_RX_RD(sn, rxrd) { \
		writeReg(Sn_RX_RD(sn),   (uint8_t)(rxrd>>8)); \
		writeReg(W5500_OFFSET_INC(Sn_RX_RD(sn),1), (uint8_t) rxrd); \
	}
	
#define getSn_TX_WR(sn) \
		(((uint16_t)readReg(Sn_TX_WR(sn)) << 8) + readReg(W5500_OFFSET_INC(Sn_TX_WR(sn),1)))		

#define setSn_TX_WR(sn, txwr) { \
		writeReg(Sn_TX_WR(sn),   (uint8_t)(txwr>>8)); \
		writeReg(W5500_OFFSET_INC(Sn_TX_WR(sn),1), (uint8_t) txwr); \
		}
#define setSn_CR(sn, cr) \
		writeReg(Sn_CR(sn), cr)
#define getSn_CR(sn) \
		readReg(Sn_CR(sn))
		
#define getSn_IR(sn) \
		(readReg(Sn_IR(sn)) & 0x1F)


#define setSn_IR(sn, ir) \
		writeReg(Sn_IR(sn), (ir & 0x1F))
		
#define getSn_SR(sn) \
		readReg(Sn_SR(sn))

#define setSn_DPORT(sn, dport) { \
		writeReg(Sn_DPORT(sn),   (uint8_t) (dport>>8)); \
		writeReg(W5500_OFFSET_INC(Sn_DPORT(sn),1), (uint8_t)  dport); \
	}

#define getSn_MR(sn) \
	readReg(Sn_MR(sn))	
	
#define setSn_DIPR(sn, dipr) \
		writeBuff(Sn_DIPR(sn), dipr, 4)


//PHYCFGR register
#define PHYCFGR            (W5500_BASE + (0x002E << 8) + (W5500_CR << 3))
#define PHYCFGR_RST                  ~(1<<7)  
#define PHYCFGR_OPMD                 (1<<6)  
#define PHYCFGR_OPMDC_ALLA           (7<<3)
#define PHYCFGR_OPMDC_PDOWN          (6<<3)
#define PHYCFGR_OPMDC_NA             (5<<3)
#define PHYCFGR_OPMDC_100FA          (4<<3)
#define PHYCFGR_OPMDC_100F           (3<<3)
#define PHYCFGR_OPMDC_100H           (2<<3)
#define PHYCFGR_OPMDC_10F            (1<<3)
#define PHYCFGR_OPMDC_10H            (0<<3)           
#define PHYCFGR_DPX_FULL             (1<<2)
#define PHYCFGR_DPX_HALF             (0<<2)
#define PHYCFGR_SPD_100              (1<<1)
#define PHYCFGR_SPD_10               (0<<1)
#define PHYCFGR_LNK_ON               (1<<0)
#define PHYCFGR_LNK_OFF              (0<<0)	

#define Sn_MR_TCP                    0x01
#define Sn_CR_SEND_KEEP              0x22

//Socket status
#define SOCKET                uint8_t  ///< SOCKET type define for legacy driver

#define SOCK_OK               1        ///< Result is OK about socket process.
#define SOCK_BUSY             0        ///< Socket is busy on processing the operation. Valid only Non-block IO Mode.
#define SOCK_FATAL            -1000    ///< Result is fatal error about socket process.

#define SOCK_ERROR            0        
#define SOCKERR_SOCKNUM       (SOCK_ERROR + 1)     ///< Invalid socket number
#define SOCKERR_SOCKOPT       (SOCK_ERROR + 2)     ///< Invalid socket option
#define SOCKERR_SOCKINIT      (SOCK_ERROR + 3)     ///< Socket is not initialized or SIPR is Zero IP address when Sn_MR_TCP
#define SOCKERR_SOCKCLOSED    (SOCK_ERROR + 4)     ///< Socket unexpectedly closed.
#define SOCKERR_SOCKMODE      (SOCK_ERROR + 5)     ///< Invalid socket mode for socket operation.
#define SOCKERR_SOCKFLAG      (SOCK_ERROR + 6)     ///< Invalid socket flag
#define SOCKERR_SOCKSTATUS    (SOCK_ERROR + 7)     ///< Invalid socket status for socket operation.
#define SOCKERR_ARG           (SOCK_ERROR + 10)    ///< Invalid argument.
#define SOCKERR_PORTZERO      (SOCK_ERROR + 11)    ///< Port number is zero
#define SOCKERR_IPINVALID     (SOCK_ERROR + 12)    ///< Invalid IP address
#define SOCKERR_TIMEOUT       (SOCK_ERROR + 13)    ///< Timeout occurred
#define SOCKERR_DATALEN       (SOCK_ERROR + 14)    ///< Data length is zero or greater than buffer max size.
#define SOCKERR_BUFFER        (SOCK_ERROR + 15)    ///< Socket buffer is not enough for data communication.

#define SOCKFATAL_PACKLEN     (SOCK_FATAL - 1)     ///< Invalid packet length. Fatal Error.

#define Sn_CR_OPEN                   0x01
#define Sn_CR_CONNECT                0x04
#define Sn_CR_DISCON                 0x08
#define Sn_CR_CLOSE                  0x10
#define Sn_CR_SEND                   0x20
#define Sn_CR_RECV                   0x40
#define SOCK_CLOSED                  0x00
#define SOCK_INIT                    0x13
#define SOCK_LISTEN                  0x14
#define SOCK_ESTABLISHED             0x17

#define _WIZCHIP_SOCK_NUM_			 8

#define CHECK_SOCKNUM()   \
   do{                    \
      if(sn > _WIZCHIP_SOCK_NUM_) return SOCKERR_SOCKNUM;   \
   }while(0);             \

#define CHECK_SOCKMODE(mode)  \
   do{                     \
      if((getSn_MR(sn) & 0x0F) != mode) return SOCKERR_SOCKMODE;  \
   }while(0);              \

#define CHECK_SOCKINIT()   \
   do{                     \
      if((getSn_SR(sn) != SOCK_INIT)) return SOCKERR_SOCKINIT; \
   }while(0);              \

#define CHECK_SOCKDATA()   \
   do{                     \
      if(len == 0) return SOCKERR_DATALEN;   \
   }while(0);   

#define Sn_IR_TIMEOUT                0x08

uint8_t initW5500(uint8_t * gaddr, uint8_t * subnet, uint8_t * mac, uint8_t * saddr);
void writeReg(uint32_t addr, uint8_t data);							//SPI must be LOW for transmit data
uint8_t readReg(uint32_t addr);								//SPI must be HIGH for transmit data
void writeBuff(uint32_t addr, uint8_t * pBuff, uint16_t len);
void readBuff(uint32_t addr, uint8_t *pBuff, uint16_t len);
void sendData(uint8_t sn, uint8_t * data, uint16_t len);
void recvData(uint8_t sn, uint8_t * data, uint16_t len);
uint8_t connect(uint8_t sn, uint8_t * addr, uint16_t port);

#endif
