	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"delay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	delay_ms
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	delay_ms, %function
delay_ms:
.LVL0:
.LFB110:
	.file 1 "delay.c"
	.loc 1 3 30 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 4 2 view .LVU1
	.loc 1 4 15 is_stmt 0 view .LVU2
	ldr	r1, .L13
	.loc 1 6 13 view .LVU3
	ldr	r2, .L13+4
	.loc 1 4 15 view .LVU4
	ldr	r3, [r1, #64]
	.loc 1 3 30 view .LVU5
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 4 15 view .LVU6
	orr	r3, r3, #256
	.loc 1 6 13 view .LVU7
	movs	r5, #83
	.loc 1 7 13 view .LVU8
	mov	r4, #1000
	.loc 1 4 15 view .LVU9
	str	r3, [r1, #64]
	.loc 1 6 2 is_stmt 1 view .LVU10
	.loc 1 6 13 is_stmt 0 view .LVU11
	str	r5, [r2, #44]
	.loc 1 7 2 is_stmt 1 view .LVU12
	.loc 1 7 13 is_stmt 0 view .LVU13
	strh	r4, [r2, #40]	@ movhi
	.loc 1 9 2 is_stmt 1 view .LVU14
	.loc 1 9 13 is_stmt 0 view .LVU15
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #128
	strh	r3, [r2]	@ movhi
	.loc 1 11 2 is_stmt 1 view .LVU16
	.loc 1 11 13 is_stmt 0 view .LVU17
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 12 2 is_stmt 1 view .LVU18
	.loc 1 12 13 is_stmt 0 view .LVU19
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 14 2 is_stmt 1 view .LVU20
	.loc 1 14 7 view .LVU21
	cbz	r0, .L2
.L3:
	.loc 1 15 46 discriminator 1 view .LVU22
	.loc 1 15 8 discriminator 1 view .LVU23
	.loc 1 15 16 is_stmt 0 discriminator 1 view .LVU24
	ldrh	r3, [r2, #16]
	.loc 1 15 8 discriminator 1 view .LVU25
	lsls	r3, r3, #31
	bpl	.L3
	.loc 1 16 3 is_stmt 1 view .LVU26
	.loc 1 16 13 is_stmt 0 view .LVU27
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	.loc 1 17 7 view .LVU28
	subs	r0, r0, #1
.LVL1:
	.loc 1 16 13 view .LVU29
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 17 7 view .LVU30
	uxth	r0, r0
	.loc 1 16 13 view .LVU31
	strh	r3, [r2, #16]	@ movhi
	.loc 1 17 3 is_stmt 1 view .LVU32
.LVL2:
	.loc 1 14 7 view .LVU33
	cmp	r0, #0
	bne	.L3
.L2:
	.loc 1 20 2 view .LVU34
	.loc 1 20 13 is_stmt 0 view .LVU35
	ldr	r1, .L13+4
	.loc 1 21 15 view .LVU36
	ldr	r2, .L13
	.loc 1 20 13 view .LVU37
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 21 2 is_stmt 1 view .LVU38
	.loc 1 21 15 is_stmt 0 view .LVU39
	ldr	r3, [r2, #64]
	and	r3, r3, #256
	.loc 1 22 1 view .LVU40
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 21 15 view .LVU41
	str	r3, [r2, #64]
	.loc 1 22 1 view .LVU42
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073887232
	.word	1073750016
	.cfi_endproc
.LFE110:
	.size	delay_ms, .-delay_ms
.Letext0:
	.file 2 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/system_stm32f4xx.h"
	.file 6 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4f0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x5
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x5
	.4byte	0xc9
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.byte	0x19
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.byte	0x11
	.4byte	0xc9
	.uleb128 0x8
	.4byte	0xc9
	.4byte	0x103
	.uleb128 0x9
	.4byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.byte	0x9
	.4byte	0x2b1
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.byte	0x11
	.4byte	0xd5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x2e0
	.byte	0x11
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x2e1
	.byte	0x11
	.4byte	0xd5
	.byte	0x8
	.uleb128 0xb
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.byte	0x11
	.4byte	0xd5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x2e3
	.byte	0x11
	.4byte	0xd5
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x2e4
	.byte	0x11
	.4byte	0xd5
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x2e5
	.byte	0x11
	.4byte	0xd5
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x2e6
	.byte	0x11
	.4byte	0xc9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x2e7
	.byte	0x11
	.4byte	0xd5
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x2e8
	.byte	0x11
	.4byte	0xd5
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e9
	.byte	0x11
	.4byte	0xf3
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2ea
	.byte	0x11
	.4byte	0xd5
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2eb
	.byte	0x11
	.4byte	0xd5
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2ec
	.byte	0x11
	.4byte	0xd5
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2ed
	.byte	0x11
	.4byte	0xc9
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2ee
	.byte	0x11
	.4byte	0xd5
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2ef
	.byte	0x11
	.4byte	0xd5
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2f0
	.byte	0x11
	.4byte	0xf3
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2f1
	.byte	0x11
	.4byte	0xd5
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2f2
	.byte	0x11
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2f3
	.byte	0x11
	.4byte	0xd5
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2f4
	.byte	0x11
	.4byte	0xc9
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2f5
	.byte	0x11
	.4byte	0xd5
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2f6
	.byte	0x11
	.4byte	0xd5
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2f7
	.byte	0x11
	.4byte	0xf3
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f8
	.byte	0x11
	.4byte	0xd5
	.byte	0x70
	.uleb128 0xb
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.byte	0x11
	.4byte	0xd5
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2fa
	.byte	0x11
	.4byte	0xf3
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2fb
	.byte	0x11
	.4byte	0xd5
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2fc
	.byte	0x11
	.4byte	0xd5
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x103
	.uleb128 0xa
	.byte	0x54
	.byte	0x6
	.2byte	0x369
	.byte	0x9
	.4byte	0x4bf
	.uleb128 0xb
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x36b
	.byte	0x11
	.4byte	0xb3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x36c
	.byte	0x11
	.4byte	0xa7
	.byte	0x2
	.uleb128 0xb
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x36d
	.byte	0x11
	.4byte	0xb3
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x36e
	.byte	0x11
	.4byte	0xa7
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x36f
	.byte	0x11
	.4byte	0xb3
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x370
	.byte	0x11
	.4byte	0xa7
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x371
	.byte	0x11
	.4byte	0xb3
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x372
	.byte	0x11
	.4byte	0xa7
	.byte	0xe
	.uleb128 0xb
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x373
	.byte	0x11
	.4byte	0xb3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x374
	.byte	0x11
	.4byte	0xa7
	.byte	0x12
	.uleb128 0xb
	.ascii	"EGR\000"
	.byte	0x6
	.2byte	0x375
	.byte	0x11
	.4byte	0xb3
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x376
	.byte	0x11
	.4byte	0xa7
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x377
	.byte	0x11
	.4byte	0xb3
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x378
	.byte	0x11
	.4byte	0xa7
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x379
	.byte	0x11
	.4byte	0xb3
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x37a
	.byte	0x11
	.4byte	0xa7
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x37b
	.byte	0x11
	.4byte	0xb3
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x37c
	.byte	0x11
	.4byte	0xa7
	.byte	0x22
	.uleb128 0xb
	.ascii	"CNT\000"
	.byte	0x6
	.2byte	0x37d
	.byte	0x11
	.4byte	0xd5
	.byte	0x24
	.uleb128 0xb
	.ascii	"PSC\000"
	.byte	0x6
	.2byte	0x37e
	.byte	0x11
	.4byte	0xb3
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x37f
	.byte	0x11
	.4byte	0xa7
	.byte	0x2a
	.uleb128 0xb
	.ascii	"ARR\000"
	.byte	0x6
	.2byte	0x380
	.byte	0x11
	.4byte	0xd5
	.byte	0x2c
	.uleb128 0xb
	.ascii	"RCR\000"
	.byte	0x6
	.2byte	0x381
	.byte	0x11
	.4byte	0xb3
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x382
	.byte	0x11
	.4byte	0xa7
	.byte	0x32
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x383
	.byte	0x11
	.4byte	0xd5
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x384
	.byte	0x11
	.4byte	0xd5
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x385
	.byte	0x11
	.4byte	0xd5
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x386
	.byte	0x11
	.4byte	0xd5
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x387
	.byte	0x11
	.4byte	0xb3
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x388
	.byte	0x11
	.4byte	0xa7
	.byte	0x46
	.uleb128 0xb
	.ascii	"DCR\000"
	.byte	0x6
	.2byte	0x389
	.byte	0x11
	.4byte	0xb3
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x38a
	.byte	0x11
	.4byte	0xa7
	.byte	0x4a
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x38b
	.byte	0x11
	.4byte	0xb3
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x38c
	.byte	0x11
	.4byte	0xa7
	.byte	0x4e
	.uleb128 0xb
	.ascii	"OR\000"
	.byte	0x6
	.2byte	0x38d
	.byte	0x11
	.4byte	0xb3
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x38e
	.byte	0x11
	.4byte	0xa7
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x38f
	.byte	0x3
	.4byte	0x2be
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3
	.byte	0x18
	.4byte	0xa7
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF35:
	.ascii	"AHB1LPENR\000"
.LASF52:
	.ascii	"CCER\000"
.LASF70:
	.ascii	"delay_ms\000"
.LASF25:
	.ascii	"APB1RSTR\000"
.LASF29:
	.ascii	"AHB2ENR\000"
.LASF63:
	.ascii	"DMAR\000"
.LASF49:
	.ascii	"CCMR1\000"
.LASF50:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF42:
	.ascii	"BDCR\000"
.LASF45:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"SSCGR\000"
.LASF69:
	.ascii	"/Users/user/msut/STM32F407/examples/EthernetW5500\000"
.LASF37:
	.ascii	"AHB3LPENR\000"
.LASF20:
	.ascii	"CFGR\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF32:
	.ascii	"APB1ENR\000"
.LASF68:
	.ascii	"delay.c\000"
.LASF30:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF56:
	.ascii	"CCR1\000"
.LASF7:
	.ascii	"long int\000"
.LASF58:
	.ascii	"CCR3\000"
.LASF59:
	.ascii	"CCR4\000"
.LASF46:
	.ascii	"RCC_TypeDef\000"
.LASF26:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF64:
	.ascii	"RESERVED13\000"
.LASF66:
	.ascii	"TIM_TypeDef\000"
.LASF47:
	.ascii	"SMCR\000"
.LASF57:
	.ascii	"CCR2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF55:
	.ascii	"RESERVED10\000"
.LASF61:
	.ascii	"RESERVED11\000"
.LASF62:
	.ascii	"RESERVED12\000"
.LASF33:
	.ascii	"APB2ENR\000"
.LASF65:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF71:
	.ascii	"time\000"
.LASF48:
	.ascii	"DIER\000"
.LASF19:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF39:
	.ascii	"APB1LPENR\000"
.LASF60:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF36:
	.ascii	"AHB2LPENR\000"
.LASF24:
	.ascii	"RESERVED0\000"
.LASF27:
	.ascii	"RESERVED1\000"
.LASF31:
	.ascii	"RESERVED2\000"
.LASF34:
	.ascii	"RESERVED3\000"
.LASF38:
	.ascii	"RESERVED4\000"
.LASF41:
	.ascii	"RESERVED5\000"
.LASF43:
	.ascii	"RESERVED6\000"
.LASF51:
	.ascii	"RESERVED7\000"
.LASF53:
	.ascii	"RESERVED8\000"
.LASF54:
	.ascii	"RESERVED9\000"
.LASF28:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF21:
	.ascii	"AHB1RSTR\000"
.LASF67:
	.ascii	"GNU C17 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -mlittle-endian -mthumb -mcpu=cort"
	.ascii	"ex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4"
	.ascii	"-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-precisio"
	.ascii	"n-constant\000"
.LASF23:
	.ascii	"AHB3RSTR\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF40:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 9-2019-q4-major) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
