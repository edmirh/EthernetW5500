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
	.loc 1 6 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 8 2 view .LVU1
	.loc 1 8 15 is_stmt 0 view .LVU2
	ldr	r1, .L13
	.loc 1 9 13 view .LVU3
	ldr	r2, .L13+4
	.loc 1 8 15 view .LVU4
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 6 1 view .LVU5
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 8 15 view .LVU6
	str	r3, [r1, #64]
	.loc 1 9 2 is_stmt 1 view .LVU7
	.loc 1 9 13 is_stmt 0 view .LVU8
	movs	r5, #83
	.loc 1 12 13 view .LVU9
	movs	r3, #132
	.loc 1 11 13 view .LVU10
	mov	r4, #1000
	.loc 1 9 13 view .LVU11
	strh	r5, [r2, #40]	@ movhi
	.loc 1 11 2 is_stmt 1 view .LVU12
	.loc 1 11 13 is_stmt 0 view .LVU13
	str	r4, [r2, #44]
	.loc 1 12 2 is_stmt 1 view .LVU14
	.loc 1 12 13 is_stmt 0 view .LVU15
	strh	r3, [r2]	@ movhi
	.loc 1 14 2 is_stmt 1 view .LVU16
	.loc 1 14 13 is_stmt 0 view .LVU17
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 15 2 is_stmt 1 view .LVU18
	.loc 1 15 13 is_stmt 0 view .LVU19
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 16 2 is_stmt 1 view .LVU20
	.loc 1 16 7 view .LVU21
	cbz	r0, .L2
.LVL1:
.L3:
	.loc 1 19 44 discriminator 1 view .LVU22
	.loc 1 19 8 discriminator 1 view .LVU23
	.loc 1 19 15 is_stmt 0 discriminator 1 view .LVU24
	ldrh	r3, [r2, #16]
	.loc 1 19 8 discriminator 1 view .LVU25
	lsls	r3, r3, #31
	bpl	.L3
	.loc 1 21 3 is_stmt 1 view .LVU26
	.loc 1 21 13 is_stmt 0 view .LVU27
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 16 7 view .LVU28
	subs	r0, r0, #1
	.loc 1 21 13 view .LVU29
	strh	r3, [r2, #16]	@ movhi
	.loc 1 22 3 is_stmt 1 view .LVU30
	.loc 1 16 7 view .LVU31
	bne	.L3
.L2:
	.loc 1 24 2 view .LVU32
	.loc 1 24 13 is_stmt 0 view .LVU33
	ldr	r1, .L13+4
	.loc 1 25 15 view .LVU34
	ldr	r2, .L13
	.loc 1 24 13 view .LVU35
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 25 2 is_stmt 1 view .LVU36
	.loc 1 25 15 is_stmt 0 view .LVU37
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	.loc 1 26 1 view .LVU38
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 25 15 view .LVU39
	str	r3, [r2, #64]
	.loc 1 26 1 view .LVU40
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE110:
	.size	delay_ms, .-delay_ms
	.align	1
	.p2align 2,,3
	.global	delay_us
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	delay_us, %function
delay_us:
.LVL2:
.LFB111:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 31 2 view .LVU42
	.loc 1 31 15 is_stmt 0 view .LVU43
	ldr	r1, .L26
	.loc 1 32 13 view .LVU44
	ldr	r2, .L26+4
	.loc 1 31 15 view .LVU45
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 29 1 view .LVU46
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 31 15 view .LVU47
	str	r3, [r1, #64]
	.loc 1 32 2 is_stmt 1 view .LVU48
	.loc 1 32 13 is_stmt 0 view .LVU49
	movs	r5, #0
	.loc 1 35 13 view .LVU50
	movs	r3, #132
	.loc 1 34 13 view .LVU51
	movs	r4, #84
	.loc 1 32 13 view .LVU52
	strh	r5, [r2, #40]	@ movhi
	.loc 1 34 2 is_stmt 1 view .LVU53
	.loc 1 34 13 is_stmt 0 view .LVU54
	str	r4, [r2, #44]
	.loc 1 35 2 is_stmt 1 view .LVU55
	.loc 1 35 13 is_stmt 0 view .LVU56
	strh	r3, [r2]	@ movhi
	.loc 1 38 2 is_stmt 1 view .LVU57
	.loc 1 38 13 is_stmt 0 view .LVU58
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 39 2 is_stmt 1 view .LVU59
	.loc 1 39 13 is_stmt 0 view .LVU60
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 40 2 is_stmt 1 view .LVU61
	.loc 1 40 7 view .LVU62
	cbz	r0, .L16
.LVL3:
.L17:
	.loc 1 42 44 discriminator 1 view .LVU63
	.loc 1 42 8 discriminator 1 view .LVU64
	.loc 1 42 15 is_stmt 0 discriminator 1 view .LVU65
	ldrh	r3, [r2, #16]
	.loc 1 42 8 discriminator 1 view .LVU66
	lsls	r3, r3, #31
	bpl	.L17
	.loc 1 44 3 is_stmt 1 view .LVU67
	.loc 1 44 13 is_stmt 0 view .LVU68
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 40 7 view .LVU69
	subs	r0, r0, #1
	.loc 1 44 13 view .LVU70
	strh	r3, [r2, #16]	@ movhi
	.loc 1 45 3 is_stmt 1 view .LVU71
	.loc 1 40 7 view .LVU72
	bne	.L17
.L16:
	.loc 1 47 2 view .LVU73
	.loc 1 47 13 is_stmt 0 view .LVU74
	ldr	r1, .L26+4
	.loc 1 48 15 view .LVU75
	ldr	r2, .L26
	.loc 1 47 13 view .LVU76
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 48 2 is_stmt 1 view .LVU77
	.loc 1 48 15 is_stmt 0 view .LVU78
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	.loc 1 49 1 view .LVU79
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 48 15 view .LVU80
	str	r3, [r2, #64]
	.loc 1 49 1 view .LVU81
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE111:
	.size	delay_us, .-delay_us
	.align	1
	.p2align 2,,3
	.global	initSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSTOPWATCH, %function
initSTOPWATCH:
.LFB112:
	.loc 1 52 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 53 2 view .LVU83
	.loc 1 53 15 is_stmt 0 view .LVU84
	ldr	r1, .L30
	.loc 1 54 12 view .LVU85
	ldr	r3, .L30+4
	.loc 1 53 15 view .LVU86
	ldr	r2, [r1, #64]
	.loc 1 52 1 view .LVU87
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 53 15 view .LVU88
	orr	r2, r2, #8
	str	r2, [r1, #64]
	.loc 1 54 2 is_stmt 1 view .LVU89
	.loc 1 54 12 is_stmt 0 view .LVU90
	movs	r5, #83
	.loc 1 56 12 view .LVU91
	mov	r4, #-1
	.loc 1 59 12 view .LVU92
	movs	r2, #0
	.loc 1 57 12 view .LVU93
	movs	r0, #132
	.loc 1 54 12 view .LVU94
	strh	r5, [r3, #40]	@ movhi
	.loc 1 56 2 is_stmt 1 view .LVU95
	.loc 1 56 12 is_stmt 0 view .LVU96
	str	r4, [r3, #44]
	.loc 1 57 2 is_stmt 1 view .LVU97
	.loc 1 57 12 is_stmt 0 view .LVU98
	strh	r0, [r3]	@ movhi
	.loc 1 59 2 is_stmt 1 view .LVU99
	.loc 1 62 1 is_stmt 0 view .LVU100
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 59 12 view .LVU101
	strh	r2, [r3, #4]	@ movhi
	.loc 1 60 2 is_stmt 1 view .LVU102
	.loc 1 60 12 is_stmt 0 view .LVU103
	str	r2, [r3, #36]
	.loc 1 62 1 view .LVU104
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073887232
	.word	1073744896
	.cfi_endproc
.LFE112:
	.size	initSTOPWATCH, .-initSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	startSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	startSTOPWATCH, %function
startSTOPWATCH:
.LFB113:
	.loc 1 65 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 66 2 view .LVU106
	.loc 1 66 12 is_stmt 0 view .LVU107
	ldr	r2, .L33
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 67 2 is_stmt 1 view .LVU108
	.loc 1 67 12 is_stmt 0 view .LVU109
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 68 1 view .LVU110
	bx	lr
.L34:
	.align	2
.L33:
	.word	1073744896
	.cfi_endproc
.LFE113:
	.size	startSTOPWATCH, .-startSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	stopSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	stopSTOPWATCH, %function
stopSTOPWATCH:
.LFB114:
	.loc 1 71 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 72 2 view .LVU112
	.loc 1 74 2 view .LVU113
	.loc 1 74 7 is_stmt 0 view .LVU114
	ldr	r2, .L36
	ldr	r0, [r2, #36]
.LVL4:
	.loc 1 75 2 is_stmt 1 view .LVU115
	.loc 1 75 12 is_stmt 0 view .LVU116
	ldrh	r3, [r2]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 76 2 is_stmt 1 view .LVU117
	.loc 1 77 1 is_stmt 0 view .LVU118
	bx	lr
.L37:
	.align	2
.L36:
	.word	1073744896
	.cfi_endproc
.LFE114:
	.size	stopSTOPWATCH, .-stopSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	initSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSYSTIMER, %function
initSYSTIMER:
.LFB115:
	.loc 1 80 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 81 2 view .LVU120
	.loc 1 81 15 is_stmt 0 view .LVU121
	ldr	r1, .L40
	ldr	r2, [r1, #64]
	.loc 1 82 12 view .LVU122
	mov	r3, #1073741824
	.loc 1 81 15 view .LVU123
	orr	r2, r2, #1
	.loc 1 80 1 view .LVU124
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 85 12 view .LVU125
	movs	r0, #132
	.loc 1 81 15 view .LVU126
	str	r2, [r1, #64]
	.loc 1 82 2 is_stmt 1 view .LVU127
	.loc 1 82 12 is_stmt 0 view .LVU128
	movs	r5, #83
	.loc 1 87 12 view .LVU129
	movs	r2, #0
	.loc 1 84 12 view .LVU130
	mov	r4, #-1
	.loc 1 82 12 view .LVU131
	strh	r5, [r3, #40]	@ movhi
	.loc 1 84 2 is_stmt 1 view .LVU132
	.loc 1 84 12 is_stmt 0 view .LVU133
	str	r4, [r3, #44]
	.loc 1 85 2 is_stmt 1 view .LVU134
	.loc 1 85 12 is_stmt 0 view .LVU135
	strh	r0, [r3]	@ movhi
	.loc 1 87 2 is_stmt 1 view .LVU136
	.loc 1 87 12 is_stmt 0 view .LVU137
	strh	r2, [r3, #4]	@ movhi
	.loc 1 88 2 is_stmt 1 view .LVU138
	.loc 1 88 12 is_stmt 0 view .LVU139
	str	r2, [r3, #36]
	.loc 1 89 2 is_stmt 1 view .LVU140
	.loc 1 89 12 is_stmt 0 view .LVU141
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 90 2 is_stmt 1 view .LVU142
	.loc 1 90 12 is_stmt 0 view .LVU143
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #1
	.loc 1 91 1 view .LVU144
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 90 12 view .LVU145
	strh	r2, [r3]	@ movhi
	.loc 1 91 1 view .LVU146
	bx	lr
.L41:
	.align	2
.L40:
	.word	1073887232
	.cfi_endproc
.LFE115:
	.size	initSYSTIMER, .-initSYSTIMER
	.align	1
	.p2align 2,,3
	.global	getSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getSYSTIMER, %function
getSYSTIMER:
.LFB116:
	.loc 1 94 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 95 2 view .LVU148
	.loc 1 95 11 is_stmt 0 view .LVU149
	mov	r3, #1073741824
	ldr	r0, [r3, #36]
.LVL5:
	.loc 1 96 2 is_stmt 1 view .LVU150
	.loc 1 97 1 is_stmt 0 view .LVU151
	bx	lr
	.cfi_endproc
.LFE116:
	.size	getSYSTIMER, .-getSYSTIMER
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chk4TimeoutSYSTIMER, %function
chk4TimeoutSYSTIMER:
.LVL6:
.LFB117:
	.loc 1 100 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 101 2 view .LVU153
	.loc 1 101 11 is_stmt 0 view .LVU154
	mov	r3, #1073741824
	ldr	r2, [r3, #36]
.LVL7:
	.loc 1 102 2 is_stmt 1 view .LVU155
	.loc 1 102 4 is_stmt 0 view .LVU156
	cmp	r2, r0
	bcc	.L44
	.loc 1 104 3 is_stmt 1 view .LVU157
	.loc 1 104 21 is_stmt 0 view .LVU158
	add	r0, r0, r1
.LVL8:
	.loc 1 105 11 view .LVU159
	cmp	r0, r2
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL9:
.L44:
.LBB6:
	.loc 1 111 3 is_stmt 1 view .LVU160
	.loc 1 112 3 view .LVU161
	.loc 1 111 12 is_stmt 0 view .LVU162
	mvns	r3, r0
.LVL10:
	.loc 1 112 12 view .LVU163
	add	r3, r3, r2
.LVL11:
	.loc 1 112 12 view .LVU164
.LBE6:
	.loc 1 105 11 view .LVU165
	cmp	r3, r1
	ite	cs
	movcs	r0, #0
.LVL12:
	.loc 1 105 11 view .LVU166
	movcc	r0, #1
	.loc 1 117 1 view .LVU167
	bx	lr
	.cfi_endproc
.LFE117:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
	.align	1
	.p2align 2,,3
	.global	initSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSYSTIM, %function
initSYSTIM:
.LFB118:
	.loc 1 120 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 121 2 view .LVU169
	.loc 1 121 15 is_stmt 0 view .LVU170
	ldr	r1, .L48
	.loc 1 122 12 view .LVU171
	ldr	r3, .L48+4
	.loc 1 121 15 view .LVU172
	ldr	r2, [r1, #64]
.LBB7:
.LBB8:
	.file 2 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1162 32 view .LVU173
	ldr	r0, .L48+8
.LBE8:
.LBE7:
	.loc 1 121 15 view .LVU174
	orr	r2, r2, #32
	.loc 1 120 1 view .LVU175
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 121 15 view .LVU176
	str	r2, [r1, #64]
	.loc 1 122 2 is_stmt 1 view .LVU177
	.loc 1 122 12 is_stmt 0 view .LVU178
	movs	r5, #83
	.loc 1 127 12 view .LVU179
	movs	r1, #0
	.loc 1 124 12 view .LVU180
	mov	r4, #1000
	.loc 1 125 12 view .LVU181
	movs	r2, #132
	.loc 1 122 12 view .LVU182
	strh	r5, [r3, #40]	@ movhi
	.loc 1 124 2 is_stmt 1 view .LVU183
	.loc 1 124 12 is_stmt 0 view .LVU184
	str	r4, [r3, #44]
	.loc 1 125 2 is_stmt 1 view .LVU185
	.loc 1 125 12 is_stmt 0 view .LVU186
	strh	r2, [r3]	@ movhi
	.loc 1 127 2 is_stmt 1 view .LVU187
	.loc 1 127 12 is_stmt 0 view .LVU188
	strh	r1, [r3, #4]	@ movhi
	.loc 1 128 2 is_stmt 1 view .LVU189
	.loc 1 128 12 is_stmt 0 view .LVU190
	str	r1, [r3, #36]
	.loc 1 129 2 is_stmt 1 view .LVU191
	.loc 1 129 12 is_stmt 0 view .LVU192
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	.loc 1 130 13 view .LVU193
	movs	r5, #1
	.loc 1 129 12 view .LVU194
	orr	r2, r2, #1
.LBB10:
.LBB11:
	.loc 2 1075 46 view .LVU195
	mov	r4, #8388608
.LBE11:
.LBE10:
	.loc 1 129 12 view .LVU196
	strh	r2, [r3, #20]	@ movhi
	.loc 1 130 2 is_stmt 1 view .LVU197
	.loc 1 130 13 is_stmt 0 view .LVU198
	strh	r5, [r3, #12]	@ movhi
	.loc 1 132 2 is_stmt 1 view .LVU199
.LVL13:
.LBB13:
.LBI7:
	.loc 2 1157 22 view .LVU200
.LBB9:
	.loc 2 1159 3 view .LVU201
	.loc 2 1162 5 view .LVU202
	.loc 2 1162 32 is_stmt 0 view .LVU203
	strb	r1, [r0, #823]
.LVL14:
	.loc 2 1162 32 view .LVU204
.LBE9:
.LBE13:
	.loc 1 133 2 is_stmt 1 view .LVU205
.LBB14:
.LBI10:
	.loc 2 1072 22 view .LVU206
.LBB12:
	.loc 2 1075 3 view .LVU207
	.loc 2 1075 46 is_stmt 0 view .LVU208
	str	r4, [r0, #4]
.LVL15:
	.loc 2 1075 46 view .LVU209
.LBE12:
.LBE14:
	.loc 1 134 2 is_stmt 1 view .LVU210
	.loc 1 134 12 is_stmt 0 view .LVU211
	ldrh	r2, [r3]
	uxth	r2, r2
	orrs	r2, r2, r5
	strh	r2, [r3]	@ movhi
	.loc 1 135 1 view .LVU212
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L49:
	.align	2
.L48:
	.word	1073887232
	.word	1073746944
	.word	-536813312
	.cfi_endproc
.LFE118:
	.size	initSYSTIM, .-initSYSTIM
	.align	1
	.p2align 2,,3
	.global	TIM7_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	TIM7_IRQHandler, %function
TIM7_IRQHandler:
.LFB119:
	.loc 1 138 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 139 2 view .LVU214
	.loc 1 139 9 is_stmt 0 view .LVU215
	ldr	r3, .L55
	ldrh	r2, [r3, #16]
	.loc 1 139 4 view .LVU216
	lsls	r2, r2, #31
	bpl	.L50
	.loc 1 141 3 is_stmt 1 view .LVU217
	.loc 1 141 13 is_stmt 0 view .LVU218
	ldr	r1, .L55+4
	ldr	r2, [r1]
	.loc 1 142 12 view .LVU219
	movs	r0, #0
	.loc 1 141 13 view .LVU220
	adds	r2, r2, #1
	str	r2, [r1]
	.loc 1 142 3 is_stmt 1 view .LVU221
	.loc 1 142 12 is_stmt 0 view .LVU222
	strh	r0, [r3, #16]	@ movhi
.L50:
	.loc 1 144 1 view .LVU223
	bx	lr
.L56:
	.align	2
.L55:
	.word	1073746944
	.word	.LANCHOR0
	.cfi_endproc
.LFE119:
	.size	TIM7_IRQHandler, .-TIM7_IRQHandler
	.align	1
	.p2align 2,,3
	.global	getSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getSYSTIM, %function
getSYSTIM:
.LFB120:
	.loc 1 147 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 148 2 view .LVU225
	.loc 1 148 9 is_stmt 0 view .LVU226
	ldr	r3, .L58
	ldr	r0, [r3]
	.loc 1 149 1 view .LVU227
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.cfi_endproc
.LFE120:
	.size	getSYSTIM, .-getSYSTIM
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chk4TimeoutSYSTIM, %function
chk4TimeoutSYSTIM:
.LVL16:
.LFB121:
	.loc 1 152 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 153 2 view .LVU229
	.loc 1 153 11 is_stmt 0 view .LVU230
	ldr	r3, .L63
	ldr	r2, [r3]
.LVL17:
	.loc 1 154 2 is_stmt 1 view .LVU231
	.loc 1 154 4 is_stmt 0 view .LVU232
	cmp	r2, r0
	bcc	.L61
	.loc 1 156 3 is_stmt 1 view .LVU233
	.loc 1 156 21 is_stmt 0 view .LVU234
	add	r0, r0, r1
.LVL18:
	.loc 1 157 11 view .LVU235
	cmp	r0, r2
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL19:
.L61:
.LBB15:
	.loc 1 163 3 is_stmt 1 view .LVU236
	.loc 1 164 3 view .LVU237
	.loc 1 163 12 is_stmt 0 view .LVU238
	mvns	r3, r0
.LVL20:
	.loc 1 164 12 view .LVU239
	add	r3, r3, r2
.LVL21:
	.loc 1 164 12 view .LVU240
.LBE15:
	.loc 1 157 11 view .LVU241
	cmp	r3, r1
	ite	cs
	movcs	r0, #0
.LVL22:
	.loc 1 157 11 view .LVU242
	movcc	r0, #1
	.loc 1 169 1 view .LVU243
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.cfi_endproc
.LFE121:
	.size	chk4TimeoutSYSTIM, .-chk4TimeoutSYSTIM
	.global	g_tim7_val
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_tim7_val, %object
	.size	g_tim7_val, 4
g_tim7_val:
	.space	4
	.text
.Letext0:
	.file 3 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/system_stm32f4xx.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xca0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0xc
	.4byte	.LASF200
	.4byte	.LASF201
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x5
	.byte	0x1
	.4byte	0x254
	.byte	0x3
	.byte	0x91
	.byte	0xe
	.4byte	0x254
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x1f
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x22
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x23
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x25
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x26
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x27
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x35
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x36
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x37
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x39
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x3a
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x3b
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x3d
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x3e
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x3f
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x41
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x42
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x43
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x45
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x46
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x47
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x49
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x4a
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x4b
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x4d
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x4e
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x4f
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF92
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x3
	.byte	0xef
	.byte	0x3
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x4
	.byte	0x2b
	.byte	0x18
	.4byte	0x273
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF94
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x28d
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF96
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x4
	.byte	0x4d
	.byte	0x18
	.4byte	0x2a0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x4
	.byte	0x4f
	.byte	0x19
	.4byte	0x2b3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF100
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x267
	.uleb128 0x8
	.4byte	0x2d6
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x281
	.uleb128 0x8
	.4byte	0x2e7
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x294
	.uleb128 0x8
	.4byte	0x2f8
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x2a7
	.uleb128 0x8
	.4byte	0x309
	.uleb128 0x9
	.4byte	0x315
	.uleb128 0xa
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.byte	0x9
	.4byte	0x3e9
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x132
	.byte	0x11
	.4byte	0x3f9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x133
	.byte	0x11
	.4byte	0x3fe
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x134
	.byte	0x11
	.4byte	0x3f9
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x135
	.byte	0x11
	.4byte	0x3fe
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x136
	.byte	0x11
	.4byte	0x3f9
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x137
	.byte	0x11
	.4byte	0x3fe
	.2byte	0x120
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x138
	.byte	0x11
	.4byte	0x3f9
	.2byte	0x180
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x139
	.byte	0x11
	.4byte	0x3fe
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13a
	.byte	0x11
	.4byte	0x3f9
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13b
	.byte	0x11
	.4byte	0x40e
	.2byte	0x220
	.uleb128 0xd
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.byte	0x11
	.4byte	0x42e
	.2byte	0x300
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13d
	.byte	0x11
	.4byte	0x433
	.2byte	0x3f0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13e
	.byte	0x11
	.4byte	0x315
	.2byte	0xe00
	.byte	0
	.uleb128 0xe
	.4byte	0x315
	.4byte	0x3f9
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x3e9
	.uleb128 0xe
	.4byte	0x309
	.4byte	0x40e
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0x309
	.4byte	0x41e
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.4byte	0x2e2
	.4byte	0x42e
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x41e
	.uleb128 0xe
	.4byte	0x309
	.4byte	0x444
	.uleb128 0x10
	.4byte	0x2cf
	.2byte	0x283
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x13f
	.byte	0x4
	.4byte	0x31f
	.uleb128 0x12
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.byte	0x9
	.4byte	0x582
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x152
	.byte	0x11
	.4byte	0x31a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x153
	.byte	0x11
	.4byte	0x315
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x154
	.byte	0x11
	.4byte	0x315
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x155
	.byte	0x11
	.4byte	0x315
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x156
	.byte	0x11
	.4byte	0x315
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x157
	.byte	0x11
	.4byte	0x315
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x158
	.byte	0x11
	.4byte	0x592
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x159
	.byte	0x11
	.4byte	0x315
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x15a
	.byte	0x11
	.4byte	0x315
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x15b
	.byte	0x11
	.4byte	0x315
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x15c
	.byte	0x11
	.4byte	0x315
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x15d
	.byte	0x11
	.4byte	0x315
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x15e
	.byte	0x11
	.4byte	0x315
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x15f
	.byte	0x11
	.4byte	0x315
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x160
	.byte	0x11
	.4byte	0x5ac
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x161
	.byte	0x11
	.4byte	0x31a
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x162
	.byte	0x11
	.4byte	0x31a
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x163
	.byte	0x11
	.4byte	0x5c6
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x164
	.byte	0x11
	.4byte	0x5e0
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x165
	.byte	0x11
	.4byte	0x5e5
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x166
	.byte	0x11
	.4byte	0x315
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.4byte	0x2e2
	.4byte	0x592
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x582
	.uleb128 0xe
	.4byte	0x31a
	.4byte	0x5a7
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x597
	.uleb128 0x8
	.4byte	0x5a7
	.uleb128 0xe
	.4byte	0x31a
	.4byte	0x5c1
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x5b1
	.uleb128 0x8
	.4byte	0x5c1
	.uleb128 0xe
	.4byte	0x31a
	.4byte	0x5db
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x5cb
	.uleb128 0x8
	.4byte	0x5db
	.uleb128 0xe
	.4byte	0x309
	.4byte	0x5f5
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x167
	.byte	0x3
	.4byte	0x451
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x51b
	.byte	0x19
	.4byte	0x304
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x6
	.byte	0x35
	.byte	0x11
	.4byte	0x309
	.uleb128 0xe
	.4byte	0x309
	.4byte	0x62b
	.uleb128 0xf
	.4byte	0x2cf
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.byte	0x9
	.4byte	0x7d9
	.uleb128 0x13
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.byte	0x11
	.4byte	0x315
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x2e0
	.byte	0x11
	.4byte	0x315
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x2e1
	.byte	0x11
	.4byte	0x315
	.byte	0x8
	.uleb128 0x13
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.byte	0x11
	.4byte	0x315
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2e3
	.byte	0x11
	.4byte	0x315
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2e4
	.byte	0x11
	.4byte	0x315
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2e5
	.byte	0x11
	.4byte	0x315
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x2e6
	.byte	0x11
	.4byte	0x309
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2e7
	.byte	0x11
	.4byte	0x315
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2e8
	.byte	0x11
	.4byte	0x315
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e9
	.byte	0x11
	.4byte	0x61b
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2ea
	.byte	0x11
	.4byte	0x315
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2eb
	.byte	0x11
	.4byte	0x315
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2ec
	.byte	0x11
	.4byte	0x315
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x2ed
	.byte	0x11
	.4byte	0x309
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2ee
	.byte	0x11
	.4byte	0x315
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2ef
	.byte	0x11
	.4byte	0x315
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x2f0
	.byte	0x11
	.4byte	0x61b
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2f1
	.byte	0x11
	.4byte	0x315
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2f2
	.byte	0x11
	.4byte	0x315
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2f3
	.byte	0x11
	.4byte	0x315
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x2f4
	.byte	0x11
	.4byte	0x309
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2f5
	.byte	0x11
	.4byte	0x315
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2f6
	.byte	0x11
	.4byte	0x315
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f7
	.byte	0x11
	.4byte	0x61b
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2f8
	.byte	0x11
	.4byte	0x315
	.byte	0x70
	.uleb128 0x13
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.byte	0x11
	.4byte	0x315
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2fa
	.byte	0x11
	.4byte	0x61b
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2fb
	.byte	0x11
	.4byte	0x315
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2fc
	.byte	0x11
	.4byte	0x315
	.byte	0x84
	.byte	0
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x62b
	.uleb128 0x12
	.byte	0x54
	.byte	0x3
	.2byte	0x369
	.byte	0x9
	.4byte	0x9e7
	.uleb128 0x13
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x36b
	.byte	0x11
	.4byte	0x2f3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x36c
	.byte	0x11
	.4byte	0x2e7
	.byte	0x2
	.uleb128 0x13
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x36d
	.byte	0x11
	.4byte	0x2f3
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x36e
	.byte	0x11
	.4byte	0x2e7
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x36f
	.byte	0x11
	.4byte	0x2f3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x370
	.byte	0x11
	.4byte	0x2e7
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x371
	.byte	0x11
	.4byte	0x2f3
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x372
	.byte	0x11
	.4byte	0x2e7
	.byte	0xe
	.uleb128 0x13
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x373
	.byte	0x11
	.4byte	0x2f3
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x374
	.byte	0x11
	.4byte	0x2e7
	.byte	0x12
	.uleb128 0x13
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x375
	.byte	0x11
	.4byte	0x2f3
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x376
	.byte	0x11
	.4byte	0x2e7
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x377
	.byte	0x11
	.4byte	0x2f3
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x378
	.byte	0x11
	.4byte	0x2e7
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x379
	.byte	0x11
	.4byte	0x2f3
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x37a
	.byte	0x11
	.4byte	0x2e7
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x37b
	.byte	0x11
	.4byte	0x2f3
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x37c
	.byte	0x11
	.4byte	0x2e7
	.byte	0x22
	.uleb128 0x13
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x37d
	.byte	0x11
	.4byte	0x315
	.byte	0x24
	.uleb128 0x13
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x37e
	.byte	0x11
	.4byte	0x2f3
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x37f
	.byte	0x11
	.4byte	0x2e7
	.byte	0x2a
	.uleb128 0x13
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x380
	.byte	0x11
	.4byte	0x315
	.byte	0x2c
	.uleb128 0x13
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x381
	.byte	0x11
	.4byte	0x2f3
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x382
	.byte	0x11
	.4byte	0x2e7
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x383
	.byte	0x11
	.4byte	0x315
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x384
	.byte	0x11
	.4byte	0x315
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x385
	.byte	0x11
	.4byte	0x315
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x386
	.byte	0x11
	.4byte	0x315
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x387
	.byte	0x11
	.4byte	0x2f3
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x388
	.byte	0x11
	.4byte	0x2e7
	.byte	0x46
	.uleb128 0x13
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x389
	.byte	0x11
	.4byte	0x2f3
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x38a
	.byte	0x11
	.4byte	0x2e7
	.byte	0x4a
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x38b
	.byte	0x11
	.4byte	0x2f3
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x38c
	.byte	0x11
	.4byte	0x2e7
	.byte	0x4e
	.uleb128 0x13
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x38d
	.byte	0x11
	.4byte	0x2f3
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x38e
	.byte	0x11
	.4byte	0x2e7
	.byte	0x52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x3
	.2byte	0x38f
	.byte	0x3
	.4byte	0x7e6
	.uleb128 0x15
	.4byte	.LASF181
	.byte	0x7
	.byte	0x1c
	.byte	0x1a
	.4byte	0x315
	.uleb128 0x16
	.4byte	0x9f4
	.byte	0x1
	.byte	0x3
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim7_val
	.uleb128 0x17
	.4byte	.LASF184
	.byte	0x1
	.byte	0x97
	.byte	0x9
	.4byte	0x2d6
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7d
	.uleb128 0x18
	.4byte	.LASF186
	.byte	0x1
	.byte	0x97
	.byte	0x24
	.4byte	0x309
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x19
	.4byte	.LASF187
	.byte	0x1
	.byte	0x97
	.byte	0x34
	.4byte	0x309
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x99
	.byte	0xb
	.4byte	0x309
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1a
	.4byte	.LASF183
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.4byte	0x309
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF202
	.byte	0x1
	.byte	0x92
	.byte	0xa
	.4byte	0x309
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x1
	.byte	0x89
	.byte	0x6
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF194
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0b
	.uleb128 0x1f
	.4byte	0xc62
	.4byte	.LBI7
	.byte	.LVU200
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x84
	.byte	0x2
	.4byte	0xaeb
	.uleb128 0x20
	.4byte	0xc7d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x20
	.4byte	0xc70
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x21
	.4byte	0xc8b
	.4byte	.LBI10
	.byte	.LVU206
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x85
	.byte	0x2
	.uleb128 0x20
	.4byte	0xc95
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF185
	.byte	0x1
	.byte	0x63
	.byte	0x9
	.4byte	0x2d6
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7a
	.uleb128 0x18
	.4byte	.LASF186
	.byte	0x1
	.byte	0x63
	.byte	0x26
	.4byte	0x309
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x19
	.4byte	.LASF187
	.byte	0x1
	.byte	0x63
	.byte	0x36
	.4byte	0x309
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x65
	.byte	0xb
	.4byte	0x309
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1a
	.4byte	.LASF183
	.byte	0x1
	.byte	0x6f
	.byte	0xc
	.4byte	0x309
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.4byte	0x309
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba9
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x5f
	.byte	0xb
	.4byte	0x309
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x1
	.byte	0x46
	.byte	0xa
	.4byte	0x309
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbea
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0x309
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF192
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF193
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF195
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x22
	.ascii	"us\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.4byte	0x309
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF196
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc62
	.uleb128 0x22
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x5
	.byte	0x18
	.4byte	0x309
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x485
	.byte	0x16
	.byte	0x3
	.4byte	0xc8b
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x485
	.byte	0x31
	.4byte	0x25b
	.uleb128 0x24
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x485
	.byte	0x40
	.4byte	0x309
	.byte	0
	.uleb128 0x25
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x430
	.byte	0x16
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x430
	.byte	0x2f
	.4byte	0x25b
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU231
	.uleb128 0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU237
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 0
.LLST12:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU200
	.uleb128 .LVU204
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU200
	.uleb128 .LVU204
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU206
	.uleb128 .LVU209
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU155
	.uleb128 0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU161
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU150
	.uleb128 0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU115
	.uleb128 0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU63
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU22
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF149:
	.ascii	"APB1ENR\000"
.LASF134:
	.ascii	"CPACR\000"
.LASF137:
	.ascii	"SystemCoreClock\000"
.LASF163:
	.ascii	"CCMR1\000"
.LASF155:
	.ascii	"APB2LPENR\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF144:
	.ascii	"APB2RSTR\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF203:
	.ascii	"NVIC_SetPriority\000"
.LASF103:
	.ascii	"unsigned int\000"
.LASF194:
	.ascii	"initSYSTIM\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF128:
	.ascii	"DFSR\000"
.LASF156:
	.ascii	"BDCR\000"
.LASF199:
	.ascii	"GNU C17 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -mlittle-endian -mthumb -mcpu=cort"
	.ascii	"ex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4"
	.ascii	"-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-precisio"
	.ascii	"n-constant\000"
.LASF97:
	.ascii	"__int32_t\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF132:
	.ascii	"MMFR\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF152:
	.ascii	"AHB2LPENR\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF180:
	.ascii	"TIM_TypeDef\000"
.LASF92:
	.ascii	"signed char\000"
.LASF166:
	.ascii	"CCER\000"
.LASF107:
	.ascii	"uint32_t\000"
.LASF190:
	.ascii	"initSYSTIMER\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF174:
	.ascii	"BDTR\000"
.LASF108:
	.ascii	"ISER\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF146:
	.ascii	"AHB1ENR\000"
.LASF170:
	.ascii	"CCR1\000"
.LASF158:
	.ascii	"SSCGR\000"
.LASF172:
	.ascii	"CCR3\000"
.LASF111:
	.ascii	"RSERVED1\000"
.LASF188:
	.ascii	"getSYSTIMER\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF164:
	.ascii	"CCMR2\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF192:
	.ascii	"startSTOPWATCH\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF204:
	.ascii	"NVIC_EnableIRQ\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF165:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF189:
	.ascii	"TIM7_IRQHandler\000"
.LASF95:
	.ascii	"__uint16_t\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF182:
	.ascii	"time\000"
.LASF142:
	.ascii	"AHB3RSTR\000"
.LASF193:
	.ascii	"initSTOPWATCH\000"
.LASF181:
	.ascii	"g_tim7_val\000"
.LASF90:
	.ascii	"IRQn_Type\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF121:
	.ascii	"CPUID\000"
.LASF160:
	.ascii	"RCC_TypeDef\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF130:
	.ascii	"BFAR\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF131:
	.ascii	"AFSR\000"
.LASF162:
	.ascii	"DIER\000"
.LASF148:
	.ascii	"AHB3ENR\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF143:
	.ascii	"APB1RSTR\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF127:
	.ascii	"HFSR\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF124:
	.ascii	"AIRCR\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF104:
	.ascii	"uint8_t\000"
.LASF171:
	.ascii	"CCR2\000"
.LASF173:
	.ascii	"CCR4\000"
.LASF161:
	.ascii	"SMCR\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF101:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF125:
	.ascii	"SHCSR\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF154:
	.ascii	"APB1LPENR\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF126:
	.ascii	"CFSR\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF196:
	.ascii	"delay_ms\000"
.LASF183:
	.ascii	"utmp32\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF114:
	.ascii	"ICPR\000"
.LASF150:
	.ascii	"APB2ENR\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF151:
	.ascii	"AHB1LPENR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF186:
	.ascii	"btime\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF105:
	.ascii	"uint16_t\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF197:
	.ascii	"IRQn\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF141:
	.ascii	"AHB2RSTR\000"
.LASF119:
	.ascii	"STIR\000"
.LASF129:
	.ascii	"MMFAR\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF109:
	.ascii	"RESERVED0\000"
.LASF145:
	.ascii	"RESERVED1\000"
.LASF113:
	.ascii	"RESERVED2\000"
.LASF115:
	.ascii	"RESERVED3\000"
.LASF117:
	.ascii	"RESERVED4\000"
.LASF118:
	.ascii	"RESERVED5\000"
.LASF157:
	.ascii	"RESERVED6\000"
.LASF94:
	.ascii	"short int\000"
.LASF167:
	.ascii	"RESERVED8\000"
.LASF168:
	.ascii	"RESERVED9\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF98:
	.ascii	"long int\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF177:
	.ascii	"DMAR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF136:
	.ascii	"ITM_RxBuffer\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF198:
	.ascii	"priority\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF184:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF139:
	.ascii	"CFGR\000"
.LASF185:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF120:
	.ascii	"NVIC_Type\000"
.LASF135:
	.ascii	"SCB_Type\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF138:
	.ascii	"PLLCFGR\000"
.LASF123:
	.ascii	"VTOR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF153:
	.ascii	"AHB3LPENR\000"
.LASF122:
	.ascii	"ICSR\000"
.LASF100:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF202:
	.ascii	"getSYSTIM\000"
.LASF147:
	.ascii	"AHB2ENR\000"
.LASF106:
	.ascii	"int32_t\000"
.LASF200:
	.ascii	"delay.c\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF159:
	.ascii	"PLLI2SCFGR\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF93:
	.ascii	"unsigned char\000"
.LASF99:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF169:
	.ascii	"RESERVED10\000"
.LASF175:
	.ascii	"RESERVED11\000"
.LASF176:
	.ascii	"RESERVED12\000"
.LASF178:
	.ascii	"RESERVED13\000"
.LASF179:
	.ascii	"RESERVED14\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF110:
	.ascii	"ICER\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF116:
	.ascii	"IABR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF91:
	.ascii	"__uint8_t\000"
.LASF201:
	.ascii	"/Users/user/msut/STM32F407/examples/EthernetW5500\000"
.LASF195:
	.ascii	"delay_us\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF187:
	.ascii	"period\000"
.LASF96:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF112:
	.ascii	"ISPR\000"
.LASF133:
	.ascii	"ISAR\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF191:
	.ascii	"stopSTOPWATCH\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF140:
	.ascii	"AHB1RSTR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 9-2019-q4-major) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
