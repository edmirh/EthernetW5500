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

//Socket register block
#define W5500_SREG(N)       (1+4*N)
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
#define Sn_IMR(N)	W5500_BASE + (0x002F << 8) + (W5500_SREG(N) << 3)	
#define Sn_KPALVTR(N)	W5500_BASE + (0x002C << 8) + (W5500_SREG(N) << 3)	

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

void writeReg(uint32_t addr, uint8_t data);							//SPI must be LOW for transmit data
uint8_t readReg(uint32_t addr);								//SPI must be HIGH for transmit data
void writeBuff(uint32_t addr, uint8_t * pBuff, uint16_t len);
void readBuff(uint32_t addr, uint8_t *pBuff, uint16_t len);

#endif
