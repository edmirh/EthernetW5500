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
	.file	"spi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	initSPI
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSPI, %function
initSPI:
.LVL0:
.LFB110:
	.file 1 "spi.c"
	.loc 1 4 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 13 2 view .LVU1
	.loc 1 4 1 is_stmt 0 view .LVU2
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 13 15 view .LVU3
	ldr	r4, .L4
	.loc 1 14 15 view .LVU4
	ldr	r3, .L4+4
	.loc 1 13 15 view .LVU5
	ldr	r1, [r4, #48]
	.loc 1 26 12 view .LVU6
	ldr	r2, .L4+8
	.loc 1 13 15 view .LVU7
	orr	r1, r1, #2
	str	r1, [r4, #48]
	.loc 1 14 2 is_stmt 1 view .LVU8
	.loc 1 14 15 is_stmt 0 view .LVU9
	ldr	r1, [r3]
	bic	r1, r1, #-67108864
	str	r1, [r3]
	.loc 1 15 2 is_stmt 1 view .LVU10
	.loc 1 15 15 is_stmt 0 view .LVU11
	ldr	r1, [r3]
	orr	r1, r1, #-1476395008
	str	r1, [r3]
	.loc 1 16 2 is_stmt 1 view .LVU12
	.loc 1 16 16 is_stmt 0 view .LVU13
	ldr	r1, [r3, #36]
	orr	r1, r1, #1426063360
	orr	r1, r1, #5242880
	str	r1, [r3, #36]
	.loc 1 17 2 is_stmt 1 view .LVU14
	.loc 1 17 17 is_stmt 0 view .LVU15
	ldr	r1, [r3, #8]
	orr	r1, r1, #-1476395008
	str	r1, [r3, #8]
	.loc 1 19 2 is_stmt 1 view .LVU16
	.loc 1 19 15 is_stmt 0 view .LVU17
	ldr	r1, [r3]
	bic	r1, r1, #50331648
	str	r1, [r3]
	.loc 1 20 2 is_stmt 1 view .LVU18
	.loc 1 20 15 is_stmt 0 view .LVU19
	ldr	r1, [r3]
	orr	r1, r1, #16777216
	str	r1, [r3]
	.loc 1 21 2 is_stmt 1 view .LVU20
	.loc 1 21 16 is_stmt 0 view .LVU21
	ldr	r1, [r3, #4]
	bic	r1, r1, #50331648
	str	r1, [r3, #4]
	.loc 1 22 2 is_stmt 1 view .LVU22
	.loc 1 22 17 is_stmt 0 view .LVU23
	ldr	r1, [r3, #8]
	orr	r1, r1, #33554432
	str	r1, [r3, #8]
	.loc 1 23 2 is_stmt 1 view .LVU24
	ldr	r1, [r3, #20]
	orr	r1, r1, #4096
	str	r1, [r3, #20]
	.loc 1 23 10 view .LVU25
	.loc 1 25 2 view .LVU26
	.loc 1 25 15 is_stmt 0 view .LVU27
	ldr	r3, [r4, #64]
	.loc 1 26 12 view .LVU28
	movs	r1, #4
	.loc 1 25 15 view .LVU29
	orr	r3, r3, #16384
	str	r3, [r4, #64]
	.loc 1 26 2 is_stmt 1 view .LVU30
	.loc 1 26 12 is_stmt 0 view .LVU31
	strh	r1, [r2]	@ movhi
	.loc 1 27 2 is_stmt 1 view .LVU32
	.loc 1 27 12 is_stmt 0 view .LVU33
	ldrh	r3, [r2]
	.loc 1 31 1 view .LVU34
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 27 12 view .LVU35
	uxth	r3, r3
	orr	r3, r3, #768
	strh	r3, [r2]	@ movhi
	.loc 1 29 2 is_stmt 1 view .LVU36
	.loc 1 29 12 is_stmt 0 view .LVU37
	ldrh	r3, [r2]
	uxth	r3, r3
	orrs	r3, r3, r0
	strh	r3, [r2]	@ movhi
	.loc 1 30 2 is_stmt 1 view .LVU38
	.loc 1 30 12 is_stmt 0 view .LVU39
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #64
	strh	r3, [r2]	@ movhi
	.loc 1 31 1 view .LVU40
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073873920
	.word	1073756160
	.cfi_endproc
.LFE110:
	.size	initSPI, .-initSPI
	.align	1
	.p2align 2,,3
	.global	rxSPI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	rxSPI, %function
rxSPI:
.LFB111:
	.loc 1 34 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 35 2 view .LVU42
	.loc 1 37 2 view .LVU43
	.loc 1 37 11 is_stmt 0 view .LVU44
	ldr	r2, .L15
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
	.loc 1 38 2 is_stmt 1 view .LVU45
.L7:
	.loc 1 38 39 discriminator 1 view .LVU46
	.loc 1 38 7 discriminator 1 view .LVU47
	.loc 1 38 14 is_stmt 0 discriminator 1 view .LVU48
	ldrh	r3, [r2, #8]
	.loc 1 38 7 discriminator 1 view .LVU49
	lsls	r0, r3, #30
	bpl	.L7
	.loc 1 39 14 view .LVU50
	ldr	r2, .L15
.L8:
	.loc 1 39 40 is_stmt 1 discriminator 1 view .LVU51
	.loc 1 39 7 discriminator 1 view .LVU52
	.loc 1 39 14 is_stmt 0 discriminator 1 view .LVU53
	ldrh	r3, [r2, #8]
	.loc 1 39 7 discriminator 1 view .LVU54
	lsls	r1, r3, #31
	bpl	.L8
	.loc 1 40 12 view .LVU55
	ldr	r2, .L15
.L9:
	.loc 1 40 36 is_stmt 1 discriminator 1 view .LVU56
	.loc 1 40 7 discriminator 1 view .LVU57
	.loc 1 40 12 is_stmt 0 discriminator 1 view .LVU58
	ldrh	r3, [r2, #8]
	.loc 1 40 7 discriminator 1 view .LVU59
	lsls	r3, r3, #24
	bmi	.L9
	.loc 1 41 2 is_stmt 1 view .LVU60
	.loc 1 41 13 is_stmt 0 view .LVU61
	ldrh	r0, [r2, #12]
.LVL1:
	.loc 1 43 2 is_stmt 1 view .LVU62
	.loc 1 44 1 is_stmt 0 view .LVU63
	uxtb	r0, r0
	.loc 1 44 1 view .LVU64
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073756160
	.cfi_endproc
.LFE111:
	.size	rxSPI, .-rxSPI
	.align	1
	.p2align 2,,3
	.global	txSPI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	txSPI, %function
txSPI:
.LVL2:
.LFB112:
	.loc 1 47 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 48 2 view .LVU66
	.loc 1 50 2 view .LVU67
	.loc 1 50 11 is_stmt 0 view .LVU68
	ldr	r2, .L26
	strh	r0, [r2, #12]	@ movhi
	.loc 1 51 2 is_stmt 1 view .LVU69
.LVL3:
.L18:
	.loc 1 51 39 discriminator 1 view .LVU70
	.loc 1 51 7 discriminator 1 view .LVU71
	.loc 1 51 14 is_stmt 0 discriminator 1 view .LVU72
	ldrh	r3, [r2, #8]
	.loc 1 51 7 discriminator 1 view .LVU73
	lsls	r0, r3, #30
	bpl	.L18
	.loc 1 52 14 view .LVU74
	ldr	r2, .L26
.L19:
	.loc 1 52 40 is_stmt 1 discriminator 1 view .LVU75
	.loc 1 52 7 discriminator 1 view .LVU76
	.loc 1 52 14 is_stmt 0 discriminator 1 view .LVU77
	ldrh	r3, [r2, #8]
	.loc 1 52 7 discriminator 1 view .LVU78
	lsls	r1, r3, #31
	bpl	.L19
	.loc 1 53 12 view .LVU79
	ldr	r2, .L26
.L20:
	.loc 1 53 36 is_stmt 1 discriminator 1 view .LVU80
	.loc 1 53 7 discriminator 1 view .LVU81
	.loc 1 53 12 is_stmt 0 discriminator 1 view .LVU82
	ldrh	r3, [r2, #8]
	.loc 1 53 7 discriminator 1 view .LVU83
	lsls	r3, r3, #24
	bmi	.L20
	.loc 1 54 2 is_stmt 1 view .LVU84
	.loc 1 54 12 is_stmt 0 view .LVU85
	ldrh	r0, [r2, #12]
.LVL4:
	.loc 1 56 2 is_stmt 1 view .LVU86
	.loc 1 57 1 is_stmt 0 view .LVU87
	uxtb	r0, r0
	.loc 1 57 1 view .LVU88
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073756160
	.cfi_endproc
.LFE112:
	.size	txSPI, .-txSPI
	.align	1
	.p2align 2,,3
	.global	initSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSPI1, %function
initSPI1:
.LVL5:
.LFB113:
	.loc 1 62 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 72 2 view .LVU90
	.loc 1 72 15 is_stmt 0 view .LVU91
	ldr	r1, .L30
	.loc 1 78 15 view .LVU92
	ldr	r3, .L30+4
	.loc 1 84 12 view .LVU93
	ldr	r2, .L30+8
	.loc 1 62 1 view .LVU94
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 72 15 view .LVU95
	ldr	r5, [r1, #48]
	.loc 1 73 15 view .LVU96
	ldr	r4, .L30+12
	.loc 1 72 15 view .LVU97
	orr	r5, r5, #1
	str	r5, [r1, #48]
	.loc 1 73 2 is_stmt 1 view .LVU98
	.loc 1 73 15 is_stmt 0 view .LVU99
	ldr	r5, [r4]
	orr	r5, r5, #43008
	str	r5, [r4]
	.loc 1 74 2 is_stmt 1 view .LVU100
	.loc 1 74 16 is_stmt 0 view .LVU101
	ldr	r5, [r4, #32]
	orr	r5, r5, #1426063360
	orr	r5, r5, #5242880
	str	r5, [r4, #32]
	.loc 1 75 2 is_stmt 1 view .LVU102
	.loc 1 75 17 is_stmt 0 view .LVU103
	ldr	r5, [r4, #8]
	orr	r5, r5, #43008
	str	r5, [r4, #8]
	.loc 1 77 2 is_stmt 1 view .LVU104
	.loc 1 77 15 is_stmt 0 view .LVU105
	ldr	r4, [r1, #48]
	orr	r4, r4, #16
	str	r4, [r1, #48]
	.loc 1 78 2 is_stmt 1 view .LVU106
	.loc 1 78 15 is_stmt 0 view .LVU107
	ldr	r4, [r3]
	orr	r4, r4, #64
	str	r4, [r3]
	.loc 1 79 2 is_stmt 1 view .LVU108
	.loc 1 79 16 is_stmt 0 view .LVU109
	ldr	r4, [r3, #4]
	bic	r4, r4, #8
	str	r4, [r3, #4]
	.loc 1 80 2 is_stmt 1 view .LVU110
	.loc 1 80 17 is_stmt 0 view .LVU111
	ldr	r4, [r3, #8]
	orr	r4, r4, #128
	str	r4, [r3, #8]
	.loc 1 81 2 is_stmt 1 view .LVU112
	ldr	r4, [r3, #20]
	orr	r4, r4, #8
	str	r4, [r3, #20]
	.loc 1 81 14 view .LVU113
	.loc 1 83 2 view .LVU114
	.loc 1 83 15 is_stmt 0 view .LVU115
	ldr	r3, [r1, #68]
	.loc 1 84 12 view .LVU116
	movs	r4, #4
	.loc 1 83 15 view .LVU117
	orr	r3, r3, #4096
	str	r3, [r1, #68]
	.loc 1 84 2 is_stmt 1 view .LVU118
	.loc 1 84 12 is_stmt 0 view .LVU119
	strh	r4, [r2]	@ movhi
	.loc 1 85 2 is_stmt 1 view .LVU120
	.loc 1 85 12 is_stmt 0 view .LVU121
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #768
	strh	r3, [r2]	@ movhi
	.loc 1 87 2 is_stmt 1 view .LVU122
	.loc 1 87 12 is_stmt 0 view .LVU123
	ldrh	r3, [r2]
	uxth	r3, r3
	orrs	r3, r3, r0
	strh	r3, [r2]	@ movhi
	.loc 1 88 2 is_stmt 1 view .LVU124
	.loc 1 88 12 is_stmt 0 view .LVU125
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #64
	.loc 1 89 1 view .LVU126
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 88 12 view .LVU127
	strh	r3, [r2]	@ movhi
	.loc 1 89 1 view .LVU128
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073887232
	.word	1073876992
	.word	1073819648
	.word	1073872896
	.cfi_endproc
.LFE113:
	.size	initSPI1, .-initSPI1
	.align	1
	.p2align 2,,3
	.global	rxByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	rxByteSPI1, %function
rxByteSPI1:
.LFB114:
	.loc 1 92 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 93 2 view .LVU130
	.loc 1 95 2 view .LVU131
	.loc 1 95 11 is_stmt 0 view .LVU132
	ldr	r2, .L41
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
	.loc 1 96 2 is_stmt 1 view .LVU133
.L33:
	.loc 1 96 39 discriminator 1 view .LVU134
	.loc 1 96 7 discriminator 1 view .LVU135
	.loc 1 96 14 is_stmt 0 discriminator 1 view .LVU136
	ldrh	r3, [r2, #8]
	.loc 1 96 7 discriminator 1 view .LVU137
	lsls	r0, r3, #30
	bpl	.L33
	.loc 1 97 14 view .LVU138
	ldr	r2, .L41
.L34:
	.loc 1 97 40 is_stmt 1 discriminator 1 view .LVU139
	.loc 1 97 7 discriminator 1 view .LVU140
	.loc 1 97 14 is_stmt 0 discriminator 1 view .LVU141
	ldrh	r3, [r2, #8]
	.loc 1 97 7 discriminator 1 view .LVU142
	lsls	r1, r3, #31
	bpl	.L34
	.loc 1 98 12 view .LVU143
	ldr	r2, .L41
.L35:
	.loc 1 98 36 is_stmt 1 discriminator 1 view .LVU144
	.loc 1 98 7 discriminator 1 view .LVU145
	.loc 1 98 12 is_stmt 0 discriminator 1 view .LVU146
	ldrh	r3, [r2, #8]
	.loc 1 98 7 discriminator 1 view .LVU147
	lsls	r3, r3, #24
	bmi	.L35
	.loc 1 99 2 is_stmt 1 view .LVU148
	.loc 1 99 13 is_stmt 0 view .LVU149
	ldrh	r0, [r2, #12]
.LVL6:
	.loc 1 101 2 is_stmt 1 view .LVU150
	.loc 1 102 1 is_stmt 0 view .LVU151
	uxtb	r0, r0
	.loc 1 102 1 view .LVU152
	bx	lr
.L42:
	.align	2
.L41:
	.word	1073819648
	.cfi_endproc
.LFE114:
	.size	rxByteSPI1, .-rxByteSPI1
	.align	1
	.p2align 2,,3
	.global	txByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	txByteSPI1, %function
txByteSPI1:
.LVL7:
.LFB115:
	.loc 1 105 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 2 view .LVU154
	.loc 1 108 2 view .LVU155
	.loc 1 108 11 is_stmt 0 view .LVU156
	ldr	r2, .L52
	strh	r0, [r2, #12]	@ movhi
	.loc 1 109 2 is_stmt 1 view .LVU157
.LVL8:
.L44:
	.loc 1 109 39 discriminator 1 view .LVU158
	.loc 1 109 7 discriminator 1 view .LVU159
	.loc 1 109 14 is_stmt 0 discriminator 1 view .LVU160
	ldrh	r3, [r2, #8]
	.loc 1 109 7 discriminator 1 view .LVU161
	lsls	r0, r3, #30
	bpl	.L44
	.loc 1 110 14 view .LVU162
	ldr	r2, .L52
.L45:
	.loc 1 110 40 is_stmt 1 discriminator 1 view .LVU163
	.loc 1 110 7 discriminator 1 view .LVU164
	.loc 1 110 14 is_stmt 0 discriminator 1 view .LVU165
	ldrh	r3, [r2, #8]
	.loc 1 110 7 discriminator 1 view .LVU166
	lsls	r1, r3, #31
	bpl	.L45
	.loc 1 111 12 view .LVU167
	ldr	r2, .L52
.L46:
	.loc 1 111 36 is_stmt 1 discriminator 1 view .LVU168
	.loc 1 111 7 discriminator 1 view .LVU169
	.loc 1 111 12 is_stmt 0 discriminator 1 view .LVU170
	ldrh	r3, [r2, #8]
	.loc 1 111 7 discriminator 1 view .LVU171
	lsls	r3, r3, #24
	bmi	.L46
	.loc 1 112 2 is_stmt 1 view .LVU172
	.loc 1 112 12 is_stmt 0 view .LVU173
	ldrh	r0, [r2, #12]
.LVL9:
	.loc 1 114 2 is_stmt 1 view .LVU174
	.loc 1 115 1 is_stmt 0 view .LVU175
	uxtb	r0, r0
	.loc 1 115 1 view .LVU176
	bx	lr
.L53:
	.align	2
.L52:
	.word	1073819648
	.cfi_endproc
.LFE115:
	.size	txByteSPI1, .-txByteSPI1
.Letext0:
	.file 2 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/system_stm32f4xx.h"
	.file 6 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5b0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
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
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.byte	0x9
	.4byte	0x19a
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x290
	.byte	0x11
	.4byte	0xd5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x291
	.byte	0x11
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x292
	.byte	0x11
	.4byte	0xd5
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x293
	.byte	0x11
	.4byte	0xd5
	.byte	0xc
	.uleb128 0xc
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.byte	0x11
	.4byte	0xd5
	.byte	0x10
	.uleb128 0xc
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.byte	0x11
	.4byte	0xd5
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x296
	.byte	0x11
	.4byte	0xb3
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x297
	.byte	0x11
	.4byte	0xb3
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x298
	.byte	0x11
	.4byte	0xd5
	.byte	0x1c
	.uleb128 0xc
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.byte	0x11
	.4byte	0x1aa
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x1aa
	.uleb128 0x9
	.4byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x19a
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x29a
	.byte	0x3
	.4byte	0x103
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.byte	0x9
	.4byte	0x36a
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.byte	0x11
	.4byte	0xd5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e0
	.byte	0x11
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2e1
	.byte	0x11
	.4byte	0xd5
	.byte	0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.byte	0x11
	.4byte	0xd5
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2e3
	.byte	0x11
	.4byte	0xd5
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2e4
	.byte	0x11
	.4byte	0xd5
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2e5
	.byte	0x11
	.4byte	0xd5
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2e6
	.byte	0x11
	.4byte	0xc9
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2e7
	.byte	0x11
	.4byte	0xd5
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2e8
	.byte	0x11
	.4byte	0xd5
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2e9
	.byte	0x11
	.4byte	0xf3
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2ea
	.byte	0x11
	.4byte	0xd5
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2eb
	.byte	0x11
	.4byte	0xd5
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2ec
	.byte	0x11
	.4byte	0xd5
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2ed
	.byte	0x11
	.4byte	0xc9
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2ee
	.byte	0x11
	.4byte	0xd5
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2ef
	.byte	0x11
	.4byte	0xd5
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f0
	.byte	0x11
	.4byte	0xf3
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2f1
	.byte	0x11
	.4byte	0xd5
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2f2
	.byte	0x11
	.4byte	0xd5
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2f3
	.byte	0x11
	.4byte	0xd5
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2f4
	.byte	0x11
	.4byte	0xc9
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2f5
	.byte	0x11
	.4byte	0xd5
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2f6
	.byte	0x11
	.4byte	0xd5
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2f7
	.byte	0x11
	.4byte	0xf3
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2f8
	.byte	0x11
	.4byte	0xd5
	.byte	0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.byte	0x11
	.4byte	0xd5
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2fa
	.byte	0x11
	.4byte	0xf3
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2fb
	.byte	0x11
	.4byte	0xd5
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2fc
	.byte	0x11
	.4byte	0xd5
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x1bc
	.uleb128 0xa
	.byte	0x24
	.byte	0x6
	.2byte	0x34f
	.byte	0x9
	.4byte	0x47c
	.uleb128 0xc
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x351
	.byte	0x11
	.4byte	0xb3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x352
	.byte	0x11
	.4byte	0xa7
	.byte	0x2
	.uleb128 0xc
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x353
	.byte	0x11
	.4byte	0xb3
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x354
	.byte	0x11
	.4byte	0xa7
	.byte	0x6
	.uleb128 0xc
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x355
	.byte	0x11
	.4byte	0xb3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x356
	.byte	0x11
	.4byte	0xa7
	.byte	0xa
	.uleb128 0xc
	.ascii	"DR\000"
	.byte	0x6
	.2byte	0x357
	.byte	0x11
	.4byte	0xb3
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x358
	.byte	0x11
	.4byte	0xa7
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x359
	.byte	0x11
	.4byte	0xb3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x35a
	.byte	0x11
	.4byte	0xa7
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x35b
	.byte	0x11
	.4byte	0xb3
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x35c
	.byte	0x11
	.4byte	0xa7
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x35d
	.byte	0x11
	.4byte	0xb3
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x35e
	.byte	0x11
	.4byte	0xa7
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x35f
	.byte	0x11
	.4byte	0xb3
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x360
	.byte	0x11
	.4byte	0xa7
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x361
	.byte	0x11
	.4byte	0xb3
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x362
	.byte	0x11
	.4byte	0xa7
	.byte	0x22
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x363
	.byte	0x3
	.4byte	0x377
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cc
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x68
	.byte	0x1c
	.4byte	0x9b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x10
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x6a
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fb
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x520
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3d
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2e
	.byte	0x17
	.4byte	0x9b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x10
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x30
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x592
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
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
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU174
	.uleb128 0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU150
	.uleb128 0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU86
	.uleb128 0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU62
	.uleb128 0
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE111-.Ltext0
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
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF64:
	.ascii	"rxByteSPI1\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF57:
	.ascii	"TXCRCR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF56:
	.ascii	"RXCRCR\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF66:
	.ascii	"txSPI\000"
.LASF7:
	.ascii	"long int\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF19:
	.ascii	"MODER\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF70:
	.ascii	"spi.c\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF71:
	.ascii	"/Users/user/msut/STM32F407/examples/EthernetW5500\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF63:
	.ascii	"txByteSPI1\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF58:
	.ascii	"I2SCFGR\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF68:
	.ascii	"prescaler\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF73:
	.ascii	"initSPI\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF67:
	.ascii	"rxSPI\000"
.LASF62:
	.ascii	"SPI_TypeDef\000"
.LASF60:
	.ascii	"I2SPR\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF65:
	.ascii	"data\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF55:
	.ascii	"CRCPR\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF61:
	.ascii	"RESERVED8\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF72:
	.ascii	"initSPI1\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF69:
	.ascii	"GNU C17 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -mlittle-endian -mthumb -mcpu=cort"
	.ascii	"ex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4"
	.ascii	"-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-precisio"
	.ascii	"n-constant\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF48:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 9-2019-q4-major) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
