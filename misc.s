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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	getDNumMISC
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDNumMISC, %function
getDNumMISC:
.LVL0:
.LFB110:
	.file 1 "misc.c"
	.loc 1 4 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5 5 view .LVU1
	.loc 1 6 5 view .LVU2
	.loc 1 8 5 view .LVU3
	.loc 1 6 14 is_stmt 0 view .LVU4
	ldr	r2, .L9
	.loc 1 16 14 view .LVU5
	ldr	ip, .L9+4
	.loc 1 8 17 is_stmt 1 view .LVU6
	.loc 1 4 1 is_stmt 0 view .LVU7
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	add	r6, r0, #10
	.loc 1 10 21 view .LVU8
	movs	r7, #48
.LVL1:
.L4:
	.loc 1 10 9 is_stmt 1 view .LVU9
	.loc 1 11 15 is_stmt 0 view .LVU10
	cmp	r1, r2
	.loc 1 10 21 view .LVU11
	strb	r7, [r6, #-1]!
.LVL2:
	.loc 1 11 9 is_stmt 1 view .LVU12
	.loc 1 11 15 view .LVU13
	bcc	.L2
	.loc 1 11 15 is_stmt 0 view .LVU14
	movs	r3, #49
.L3:
	.loc 1 13 13 is_stmt 1 view .LVU15
	.loc 1 14 13 view .LVU16
	.loc 1 14 17 is_stmt 0 view .LVU17
	subs	r1, r1, r2
.LVL3:
	.loc 1 11 15 is_stmt 1 view .LVU18
	adds	r4, r3, #1
	cmp	r1, r2
	mov	r5, r3
	uxtb	r3, r4
	bcs	.L3
	strb	r5, [r6]
.L2:
	.loc 1 16 9 discriminator 2 view .LVU19
	.loc 1 16 14 is_stmt 0 discriminator 2 view .LVU20
	umull	r3, r2, ip, r2
.LVL4:
	.loc 1 8 5 discriminator 2 view .LVU21
	cmp	r6, r0
	.loc 1 16 14 discriminator 2 view .LVU22
	lsr	r2, r2, #3
.LVL5:
	.loc 1 8 25 is_stmt 1 discriminator 2 view .LVU23
	.loc 1 8 17 discriminator 2 view .LVU24
	.loc 1 8 5 is_stmt 0 discriminator 2 view .LVU25
	bne	.L4
	.loc 1 18 1 view .LVU26
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6:
	.loc 1 18 1 view .LVU27
	bx	lr
.L10:
	.align	2
.L9:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNumMISC, .-getDNumMISC
	.align	1
	.p2align 2,,3
	.global	putDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	putDNumMISC, %function
putDNumMISC:
.LVL7:
.LFB111:
	.loc 1 21 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 22 5 view .LVU29
	.loc 1 24 5 view .LVU30
	.loc 1 24 17 view .LVU31
	.loc 1 26 9 view .LVU32
	.loc 1 21 1 is_stmt 0 view .LVU33
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	add	r4, r0, #10
	movs	r6, #0
.LVL8:
.L14:
	.loc 1 28 22 view .LVU34
	ldrb	r3, [r4, #-1]!	@ zero_extendqisi2
	.loc 1 28 16 view .LVU35
	cmp	r3, #48
	uxtb	r5, r6
	.loc 1 28 13 is_stmt 1 view .LVU36
	.loc 1 28 16 is_stmt 0 view .LVU37
	beq	.L24
	.loc 1 30 17 is_stmt 1 view .LVU38
.LVL9:
	.loc 1 31 17 view .LVU39
	.loc 1 31 24 is_stmt 0 view .LVU40
	ldrh	r4, [r1]
	.loc 1 31 29 view .LVU41
	strb	r3, [r2, r4]
	.loc 1 32 17 is_stmt 1 view .LVU42
	.loc 1 32 21 is_stmt 0 view .LVU43
	ldrh	r3, [r1]
	.loc 1 24 26 view .LVU44
	adds	r4, r5, #1
	.loc 1 32 21 view .LVU45
	adds	r3, r3, #1
	.loc 1 24 26 view .LVU46
	uxtb	r4, r4
	.loc 1 32 21 view .LVU47
	uxth	r3, r3
	.loc 1 24 5 view .LVU48
	cmp	r4, #10
	.loc 1 32 21 view .LVU49
	strh	r3, [r1]	@ movhi
	.loc 1 24 25 is_stmt 1 view .LVU50
.LVL10:
	.loc 1 24 17 view .LVU51
	.loc 1 24 5 is_stmt 0 view .LVU52
	beq	.L15
	rsb	r5, r5, #8
	add	r6, r0, #8
	subs	r6, r6, r4
	uxtb	r5, r5
	rsb	r4, r4, #9
.LVL11:
	.loc 1 24 5 view .LVU53
	subs	r5, r6, r5
	add	r4, r4, r0
.LVL12:
.L16:
	.loc 1 37 13 is_stmt 1 view .LVU54
	.loc 1 37 31 is_stmt 0 view .LVU55
	ldrb	r0, [r4], #-1	@ zero_extendqisi2
	.loc 1 37 25 view .LVU56
	strb	r0, [r2, r3]
	.loc 1 38 13 is_stmt 1 view .LVU57
	.loc 1 38 17 is_stmt 0 view .LVU58
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	.loc 1 24 5 view .LVU59
	cmp	r5, r4
	.loc 1 38 17 view .LVU60
	strh	r3, [r1]	@ movhi
.LVL13:
	.loc 1 24 25 is_stmt 1 view .LVU61
	.loc 1 24 17 view .LVU62
	.loc 1 24 5 is_stmt 0 view .LVU63
	bne	.L16
.L15:
	.loc 1 41 6 is_stmt 1 view .LVU64
	.loc 1 41 18 is_stmt 0 view .LVU65
	movs	r1, #0
.LVL14:
	.loc 1 42 1 view .LVU66
	pop	{r4, r5, r6}
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 41 18 view .LVU67
	strb	r1, [r2, r3]
	.loc 1 42 1 view .LVU68
	bx	lr
.LVL15:
.L24:
	.cfi_restore_state
	.loc 1 24 25 is_stmt 1 discriminator 1 view .LVU69
	.loc 1 24 17 discriminator 1 view .LVU70
	.loc 1 28 37 is_stmt 0 discriminator 1 view .LVU71
	cmp	r6, #9
	beq	.L13
	adds	r6, r6, #1
.LVL16:
	.loc 1 28 37 discriminator 1 view .LVU72
	b	.L14
.LVL17:
.L13:
	.loc 1 30 17 is_stmt 1 view .LVU73
	.loc 1 31 17 view .LVU74
	.loc 1 31 24 is_stmt 0 view .LVU75
	ldrh	r0, [r1]
.LVL18:
	.loc 1 31 29 view .LVU76
	strb	r3, [r2, r0]
	.loc 1 32 17 is_stmt 1 view .LVU77
	.loc 1 32 21 is_stmt 0 view .LVU78
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	.loc 1 24 25 is_stmt 1 view .LVU79
.LVL19:
	.loc 1 24 17 view .LVU80
	.loc 1 41 6 view .LVU81
	.loc 1 41 18 is_stmt 0 view .LVU82
	movs	r1, #0
.LVL20:
	.loc 1 42 1 view .LVU83
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 41 18 view .LVU84
	strb	r1, [r2, r3]
	.loc 1 42 1 view .LVU85
	bx	lr
	.cfi_endproc
.LFE111:
	.size	putDNumMISC, .-putDNumMISC
	.align	1
	.p2align 2,,3
	.global	getStr4NumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getStr4NumMISC, %function
getStr4NumMISC:
.LVL21:
.LFB112:
	.loc 1 45 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 5 view .LVU87
	.loc 1 48 5 view .LVU88
	.loc 1 49 5 view .LVU89
	.loc 1 50 5 view .LVU90
	.loc 1 45 1 is_stmt 0 view .LVU91
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 50 14 view .LVU92
	movs	r3, #0
	.loc 1 53 5 view .LVU93
	cmp	r0, #256
	.loc 1 51 13 view .LVU94
	strb	r3, [r2]
	.loc 1 50 14 view .LVU95
	strh	r3, [sp, #10]	@ movhi
	.loc 1 51 5 is_stmt 1 view .LVU96
	.loc 1 53 5 view .LVU97
	beq	.L26
	bhi	.L27
	subs	r0, r0, #1
.LVL22:
	.loc 1 53 5 is_stmt 0 view .LVU98
	uxth	r3, r0
	cmp	r3, #31
	bhi	.L25
	cmp	r0, #31
	bhi	.L25
	tbb	[pc, r0]
.L30:
	.byte	(.L33-.L30)/2
	.byte	(.L32-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L31-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.p2align 1
.L29:
	.loc 1 110 4 is_stmt 1 view .LVU99
.LVL23:
	.loc 1 111 13 view .LVU100
	.loc 1 111 16 is_stmt 0 view .LVU101
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L46
	.loc 1 113 17 is_stmt 1 view .LVU102
	.loc 1 113 25 is_stmt 0 view .LVU103
	movs	r3, #45
	strb	r3, [r2]
	.loc 1 114 17 is_stmt 1 view .LVU104
	.loc 1 115 38 is_stmt 0 view .LVU105
	ldr	r3, [r1]
	.loc 1 114 18 view .LVU106
	movs	r0, #1
	.loc 1 115 38 view .LVU107
	rsbs	r3, r3, #0
	.loc 1 115 26 view .LVU108
	str	r3, [r1]
	.loc 1 114 18 view .LVU109
	strh	r0, [sp, #10]	@ movhi
	.loc 1 115 17 is_stmt 1 view .LVU110
.L46:
	.loc 1 118 13 view .LVU111
.LBB14:
.LBB15:
	.loc 1 6 14 is_stmt 0 view .LVU112
	ldr	r0, .L105
	.loc 1 16 14 view .LVU113
	ldr	r6, .L105+4
.LBE15:
.LBE14:
	.loc 1 118 13 view .LVU114
	mov	r1, r3
.LVL24:
.LBB17:
.LBI14:
	.loc 1 3 6 is_stmt 1 view .LVU115
.LBB16:
	.loc 1 5 5 view .LVU116
	.loc 1 6 5 view .LVU117
	.loc 1 8 5 view .LVU118
	.loc 1 8 17 view .LVU119
	add	r10, sp, #12
.LVL25:
	.loc 1 8 17 is_stmt 0 view .LVU120
	add	r4, sp, #22
	.loc 1 10 21 view .LVU121
	movs	r5, #48
.LVL26:
.L49:
	.loc 1 10 9 is_stmt 1 view .LVU122
	.loc 1 11 15 is_stmt 0 view .LVU123
	cmp	r0, r1
	.loc 1 10 21 view .LVU124
	strb	r5, [r4, #-1]!
.LVL27:
	.loc 1 11 9 is_stmt 1 view .LVU125
	.loc 1 11 15 view .LVU126
	bhi	.L47
	movs	r3, #48
.L48:
	.loc 1 13 13 view .LVU127
	.loc 1 14 17 is_stmt 0 view .LVU128
	subs	r1, r1, r0
.LVL28:
	.loc 1 13 24 view .LVU129
	adds	r3, r3, #1
	.loc 1 11 15 view .LVU130
	cmp	r1, r0
	.loc 1 13 24 view .LVU131
	uxtb	r3, r3
	.loc 1 14 13 is_stmt 1 view .LVU132
.LVL29:
	.loc 1 11 15 view .LVU133
	bcs	.L48
	strb	r3, [r4]
.L47:
	.loc 1 16 9 view .LVU134
	.loc 1 16 14 is_stmt 0 view .LVU135
	umull	r3, r0, r6, r0
.LVL30:
	.loc 1 8 5 view .LVU136
	cmp	r10, r4
	.loc 1 16 14 view .LVU137
	lsr	r0, r0, #3
.LVL31:
	.loc 1 8 25 is_stmt 1 view .LVU138
	.loc 1 8 17 view .LVU139
	.loc 1 8 5 is_stmt 0 view .LVU140
	bne	.L49
	.loc 1 8 5 view .LVU141
	add	r1, sp, #10
.LVL32:
.L69:
	.loc 1 8 5 view .LVU142
.LBE16:
.LBE17:
	.loc 1 119 13 is_stmt 1 view .LVU143
	mov	r0, r10
	bl	putDNumMISC
.LVL33:
	.loc 1 120 4 view .LVU144
.L25:
	.loc 1 283 1 is_stmt 0 view .LVU145
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL34:
.L27:
	.cfi_restore_state
	.loc 1 53 5 view .LVU146
	cmp	r0, #1024
	beq	.L34
	cmp	r0, #2048
	bne	.L102
	ldr	r3, [r1]
	mov	r0, r2
.LVL35:
	.loc 1 53 5 view .LVU147
	add	r5, r2, #8
.L79:
.LBB18:
	.loc 1 262 17 is_stmt 1 view .LVU148
	.loc 1 265 21 view .LVU149
	.loc 1 269 21 view .LVU150
	.loc 1 263 20 is_stmt 0 view .LVU151
	cmp	r3, #-1610612736
	.loc 1 262 23 view .LVU152
	lsr	r4, r3, #28
.LVL36:
	.loc 1 263 17 is_stmt 1 view .LVU153
	.loc 1 265 37 is_stmt 0 view .LVU154
	add	r3, r4, #48
	.loc 1 269 44 view .LVU155
	itet	cs
	addcs	r4, r4, #55
.LVL37:
	.loc 1 265 29 view .LVU156
	strbcc	r3, [r0]
	.loc 1 269 29 view .LVU157
	strbcs	r4, [r0]
	.loc 1 271 17 is_stmt 1 view .LVU158
	.loc 1 271 33 is_stmt 0 view .LVU159
	ldr	r3, [r1]
.LVL38:
	.loc 1 271 33 view .LVU160
	adds	r0, r0, #1
	lsls	r3, r3, #4
	.loc 1 260 13 view .LVU161
	cmp	r5, r0
	.loc 1 271 24 view .LVU162
	str	r3, [r1]
	.loc 1 272 17 is_stmt 1 view .LVU163
	.loc 1 260 26 view .LVU164
	.loc 1 260 22 view .LVU165
	.loc 1 260 13 is_stmt 0 view .LVU166
	bne	.L79
.LVL39:
	.loc 1 274 13 is_stmt 1 view .LVU167
	.loc 1 274 21 is_stmt 0 view .LVU168
	movs	r3, #0
	strb	r3, [r2, #8]
	.loc 1 275 4 is_stmt 1 view .LVU169
.L103:
	.loc 1 275 4 is_stmt 0 view .LVU170
.LBE18:
	.loc 1 283 1 view .LVU171
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL40:
.L102:
	.cfi_restore_state
	.loc 1 53 5 view .LVU172
	cmp	r0, #512
	bne	.L25
.LVL41:
.LBB19:
	.loc 1 222 17 is_stmt 1 view .LVU173
	.loc 1 222 47 is_stmt 0 view .LVU174
	ldr	r3, [r1]
	.loc 1 222 23 view .LVU175
	ubfx	r3, r3, #4, #4
.LVL42:
	.loc 1 223 17 is_stmt 1 view .LVU176
	.loc 1 223 20 is_stmt 0 view .LVU177
	cmp	r3, #9
	.loc 1 229 21 is_stmt 1 view .LVU178
	.loc 1 229 44 is_stmt 0 view .LVU179
	ite	hi
	addhi	r3, r3, #55
.LVL43:
	.loc 1 225 21 is_stmt 1 view .LVU180
	.loc 1 231 17 view .LVU181
	.loc 1 225 37 is_stmt 0 view .LVU182
	addls	r3, r3, #48
	.loc 1 225 29 view .LVU183
	strb	r3, [r2]
.LVL44:
	.loc 1 231 27 view .LVU184
	ldr	r3, [r1]
	.loc 1 231 33 view .LVU185
	lsls	r0, r3, #4
.LVL45:
	.loc 1 222 23 view .LVU186
	and	r3, r3, #15
	.loc 1 223 20 view .LVU187
	cmp	r3, #9
	.loc 1 225 37 view .LVU188
	ite	ls
	addls	r3, r3, #48
	.loc 1 229 44 view .LVU189
	addhi	r3, r3, #55
	.loc 1 231 24 view .LVU190
	str	r0, [r1]
	.loc 1 232 17 is_stmt 1 view .LVU191
	.loc 1 220 26 view .LVU192
.LVL46:
	.loc 1 220 22 view .LVU193
	.loc 1 222 17 view .LVU194
	.loc 1 223 17 view .LVU195
	.loc 1 225 21 view .LVU196
	.loc 1 229 21 view .LVU197
	.loc 1 229 29 is_stmt 0 view .LVU198
	strb	r3, [r2, #1]
	.loc 1 231 17 is_stmt 1 view .LVU199
	.loc 1 231 33 is_stmt 0 view .LVU200
	ldr	r3, [r1]
	.loc 1 234 21 view .LVU201
	movs	r0, #0
	.loc 1 231 33 view .LVU202
	lsls	r3, r3, #4
	.loc 1 231 24 view .LVU203
	str	r3, [r1]
	.loc 1 232 17 is_stmt 1 view .LVU204
	.loc 1 220 26 view .LVU205
.LVL47:
	.loc 1 220 22 view .LVU206
	.loc 1 234 13 view .LVU207
	.loc 1 234 21 is_stmt 0 view .LVU208
	strb	r0, [r2, #2]
	.loc 1 235 4 is_stmt 1 view .LVU209
.LBE19:
	.loc 1 283 1 is_stmt 0 view .LVU210
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL48:
.L33:
	.cfi_restore_state
	.loc 1 283 1 view .LVU211
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #8
	.loc 1 65 14 view .LVU212
	movs	r6, #48
	.loc 1 61 14 view .LVU213
	movs	r5, #49
.L39:
	.loc 1 59 5 is_stmt 1 view .LVU214
	.loc 1 61 6 view .LVU215
	.loc 1 65 6 view .LVU216
	.loc 1 59 7 is_stmt 0 view .LVU217
	lsls	r7, r3, #24
	.loc 1 61 14 view .LVU218
	ite	mi
	strbmi	r5, [r0]
	.loc 1 65 14 view .LVU219
	strbpl	r6, [r0]
	.loc 1 67 5 is_stmt 1 view .LVU220
	.loc 1 67 18 is_stmt 0 view .LVU221
	ldr	r3, [r1]
	adds	r0, r0, #1
	lsls	r3, r3, #1
	.loc 1 57 4 view .LVU222
	cmp	r4, r0
	.loc 1 67 10 view .LVU223
	str	r3, [r1]
	.loc 1 57 16 is_stmt 1 view .LVU224
	.loc 1 57 12 view .LVU225
	.loc 1 57 4 is_stmt 0 view .LVU226
	bne	.L39
.LVL49:
.LBB20:
	.loc 1 274 13 is_stmt 1 view .LVU227
	.loc 1 274 21 is_stmt 0 view .LVU228
	movs	r3, #0
	strb	r3, [r2, #8]
	.loc 1 275 4 is_stmt 1 view .LVU229
	b	.L103
.LVL50:
.L32:
	.loc 1 275 4 is_stmt 0 view .LVU230
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #16
.LBE20:
	.loc 1 82 14 view .LVU231
	movs	r6, #48
	.loc 1 78 14 view .LVU232
	movs	r5, #49
.L42:
	.loc 1 76 5 is_stmt 1 view .LVU233
	.loc 1 78 6 view .LVU234
	.loc 1 82 6 view .LVU235
	.loc 1 76 7 is_stmt 0 view .LVU236
	lsls	r3, r3, #16
	.loc 1 78 14 view .LVU237
	ite	mi
	strbmi	r5, [r0]
	.loc 1 82 14 view .LVU238
	strbpl	r6, [r0]
	.loc 1 84 5 is_stmt 1 view .LVU239
	.loc 1 84 18 is_stmt 0 view .LVU240
	ldr	r3, [r1]
	adds	r0, r0, #1
	lsls	r3, r3, #1
	.loc 1 74 4 view .LVU241
	cmp	r4, r0
	.loc 1 84 10 view .LVU242
	str	r3, [r1]
	.loc 1 74 17 is_stmt 1 view .LVU243
	.loc 1 74 12 view .LVU244
	.loc 1 74 4 is_stmt 0 view .LVU245
	bne	.L42
	.loc 1 86 4 is_stmt 1 view .LVU246
	.loc 1 86 12 is_stmt 0 view .LVU247
	movs	r3, #0
	strb	r3, [r2, #16]
	.loc 1 87 4 is_stmt 1 view .LVU248
	.loc 1 283 1 is_stmt 0 view .LVU249
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L31:
	.cfi_restore_state
	.loc 1 283 1 view .LVU250
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #32
	.loc 1 99 14 view .LVU251
	movs	r5, #48
	.loc 1 95 14 view .LVU252
	movs	r6, #49
.L45:
	.loc 1 93 5 is_stmt 1 view .LVU253
	.loc 1 95 6 view .LVU254
	.loc 1 99 6 view .LVU255
	.loc 1 93 7 is_stmt 0 view .LVU256
	cmp	r3, #0
	.loc 1 95 14 view .LVU257
	ite	lt
	strblt	r6, [r0]
	.loc 1 99 14 view .LVU258
	strbge	r5, [r0]
	.loc 1 101 5 is_stmt 1 view .LVU259
	.loc 1 101 18 is_stmt 0 view .LVU260
	ldr	r3, [r1]
	adds	r0, r0, #1
	lsls	r3, r3, #1
	.loc 1 91 4 view .LVU261
	cmp	r4, r0
	.loc 1 101 10 view .LVU262
	str	r3, [r1]
	.loc 1 91 17 is_stmt 1 view .LVU263
	.loc 1 91 12 view .LVU264
	.loc 1 91 4 is_stmt 0 view .LVU265
	bne	.L45
	.loc 1 103 4 is_stmt 1 view .LVU266
	.loc 1 103 12 is_stmt 0 view .LVU267
	movs	r3, #0
	strb	r3, [r2, #32]
	.loc 1 104 4 is_stmt 1 view .LVU268
	.loc 1 283 1 is_stmt 0 view .LVU269
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL51:
.L34:
	.cfi_restore_state
	.loc 1 283 1 view .LVU270
	ldr	r3, [r1]
	mov	r0, r2
.LVL52:
	.loc 1 283 1 view .LVU271
	adds	r5, r2, #4
.L76:
.LBB21:
	.loc 1 242 17 is_stmt 1 view .LVU272
	.loc 1 245 21 view .LVU273
	.loc 1 249 21 view .LVU274
	.loc 1 242 23 is_stmt 0 view .LVU275
	ubfx	r3, r3, #12, #4
.LVL53:
	.loc 1 243 17 is_stmt 1 view .LVU276
	.loc 1 243 20 is_stmt 0 view .LVU277
	cmp	r3, #9
	.loc 1 245 37 view .LVU278
	add	r4, r3, #48
	.loc 1 249 44 view .LVU279
	itet	hi
	addhi	r3, r3, #55
.LVL54:
	.loc 1 245 29 view .LVU280
	strbls	r4, [r0]
	.loc 1 249 29 view .LVU281
	strbhi	r3, [r0]
	.loc 1 251 17 is_stmt 1 view .LVU282
	.loc 1 251 33 is_stmt 0 view .LVU283
	ldr	r3, [r1]
	adds	r0, r0, #1
	lsls	r3, r3, #4
	.loc 1 240 13 view .LVU284
	cmp	r5, r0
	.loc 1 251 24 view .LVU285
	str	r3, [r1]
	.loc 1 252 17 is_stmt 1 view .LVU286
	.loc 1 240 26 view .LVU287
	.loc 1 240 22 view .LVU288
	.loc 1 240 13 is_stmt 0 view .LVU289
	bne	.L76
.LVL55:
	.loc 1 254 13 is_stmt 1 view .LVU290
	.loc 1 254 21 is_stmt 0 view .LVU291
	movs	r3, #0
	strb	r3, [r2, #4]
	.loc 1 255 4 is_stmt 1 view .LVU292
.LBE21:
	.loc 1 283 1 is_stmt 0 view .LVU293
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL56:
.L26:
	.cfi_restore_state
.LBB22:
	.loc 1 153 4 is_stmt 1 view .LVU294
	.loc 1 154 4 view .LVU295
	.loc 1 154 10 is_stmt 0 view .LVU296
	vldr.32	s13, [r1]
.LVL57:
	.loc 1 155 4 is_stmt 1 view .LVU297
	.loc 1 156 4 view .LVU298
	.loc 1 157 4 view .LVU299
	.loc 1 159 13 view .LVU300
	.loc 1 159 16 is_stmt 0 view .LVU301
	vcmpe.f32	s13, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L50
	.loc 1 161 17 is_stmt 1 view .LVU302
	.loc 1 161 25 is_stmt 0 view .LVU303
	movs	r1, #45
.LVL58:
	.loc 1 162 18 view .LVU304
	movs	r3, #1
	.loc 1 163 23 view .LVU305
	vneg.f32	s13, s13
.LVL59:
	.loc 1 161 25 view .LVU306
	strb	r1, [r2]
.LVL60:
	.loc 1 162 17 is_stmt 1 view .LVU307
	.loc 1 162 18 is_stmt 0 view .LVU308
	strh	r3, [sp, #10]	@ movhi
	.loc 1 163 17 is_stmt 1 view .LVU309
.LVL61:
.L50:
	.loc 1 166 13 view .LVU310
	.loc 1 166 16 is_stmt 0 view .LVU311
	vmov.f32	s15, #1.0e+0
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L52
.LVL62:
	.loc 1 181 23 is_stmt 1 view .LVU312
	ble	.L104
	movs	r3, #0
	.loc 1 183 28 is_stmt 0 view .LVU313
	vmov.f32	s12, #1.0e+1
.LVL63:
.L53:
	.loc 1 183 21 is_stmt 1 view .LVU314
	.loc 1 183 28 is_stmt 0 view .LVU315
	vmul.f32	s15, s15, s12
.LVL64:
	.loc 1 184 21 is_stmt 1 view .LVU316
	.loc 1 181 23 view .LVU317
	mov	r4, r3
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	add	r3, r3, #1
.LVL65:
	.loc 1 181 23 is_stmt 0 view .LVU318
	bgt	.L53
	vdiv.f32	s14, s15, s12
	uxth	r4, r4
.LVL66:
.L54:
	.loc 1 186 17 is_stmt 1 view .LVU319
	.loc 1 187 17 view .LVU320
	.loc 1 155 12 is_stmt 0 view .LVU321
	movs	r3, #32
	str	r3, [sp]
.LVL67:
.L55:
	.loc 1 190 13 is_stmt 1 view .LVU322
	add	r8, sp, #22
.LBB23:
.LBB24:
	.loc 1 6 14 is_stmt 0 view .LVU323
	ldr	r6, .L105
	.loc 1 16 14 view .LVU324
	ldr	fp, .L105+4
.LBE24:
.LBE23:
	.loc 1 194 20 view .LVU325
	mov	ip, r8
	add	r10, sp, #12
.LBB27:
.LBB25:
	.loc 1 10 21 view .LVU326
	mov	lr, #48
.LBE25:
.LBE27:
	.loc 1 190 19 view .LVU327
	vdiv.f32	s15, s13, s14
.LVL68:
	.loc 1 191 13 is_stmt 1 view .LVU328
	.loc 1 194 38 is_stmt 0 view .LVU329
	vldr.32	s14, .L105+8
.LVL69:
	.loc 1 191 20 view .LVU330
	vcvt.u32.f32	s13, s15
	vmov	r3, s13	@ int
.LVL70:
	.loc 1 193 13 is_stmt 1 view .LVU331
	.loc 1 194 13 view .LVU332
	.loc 1 193 29 is_stmt 0 view .LVU333
	vcvt.f32.u32	s13, s13
	.loc 1 193 19 view .LVU334
	vsub.f32	s15, s15, s13
.LVL71:
	.loc 1 194 38 view .LVU335
	vmul.f32	s15, s15, s14
.LVL72:
	.loc 1 194 20 view .LVU336
	vcvt.u32.f32	s15, s15
	vmov	r5, s15	@ int
.LVL73:
	.loc 1 196 13 is_stmt 1 view .LVU337
.LBB28:
.LBI23:
	.loc 1 3 6 view .LVU338
.LBB26:
	.loc 1 5 5 view .LVU339
	.loc 1 6 5 view .LVU340
	.loc 1 8 5 view .LVU341
	.loc 1 8 17 view .LVU342
.L60:
	.loc 1 10 9 view .LVU343
	.loc 1 11 15 is_stmt 0 view .LVU344
	cmp	r6, r3
	mov	r9, ip
	.loc 1 10 21 view .LVU345
	strb	lr, [ip, #-1]!
.LVL74:
	.loc 1 11 9 is_stmt 1 view .LVU346
	.loc 1 11 15 view .LVU347
	bhi	.L58
	.loc 1 11 15 is_stmt 0 view .LVU348
	movs	r1, #49
.L59:
	.loc 1 13 13 is_stmt 1 view .LVU349
	.loc 1 14 13 view .LVU350
	.loc 1 14 17 is_stmt 0 view .LVU351
	subs	r3, r3, r6
.LVL75:
	.loc 1 11 15 is_stmt 1 view .LVU352
	adds	r7, r1, #1
	cmp	r3, r6
	mov	r0, r1
	uxtb	r1, r7
	bcs	.L59
	strb	r0, [ip]
.L58:
	.loc 1 16 9 view .LVU353
	.loc 1 16 14 is_stmt 0 view .LVU354
	umull	r1, r6, fp, r6
.LVL76:
	.loc 1 8 5 view .LVU355
	cmp	r10, ip
	.loc 1 16 14 view .LVU356
	lsr	r6, r6, #3
.LVL77:
	.loc 1 8 25 is_stmt 1 view .LVU357
	.loc 1 8 17 view .LVU358
	.loc 1 8 5 is_stmt 0 view .LVU359
	bne	.L60
.LVL78:
	.loc 1 8 5 view .LVU360
.LBE26:
.LBE28:
	.loc 1 197 13 is_stmt 1 view .LVU361
	add	r1, sp, #10
	mov	r0, r10
	str	r1, [sp, #4]
	bl	putDNumMISC
.LVL79:
	.loc 1 199 13 view .LVU362
.LBB29:
.LBI29:
	.loc 1 3 6 view .LVU363
.LBB30:
	.loc 1 8 17 view .LVU364
	.loc 1 6 14 is_stmt 0 view .LVU365
	ldr	r0, .L105
	.loc 1 16 14 view .LVU366
	ldr	ip, .L105+4
	.loc 1 10 21 view .LVU367
	ldr	r1, [sp, #4]
	movs	r7, #48
.LVL80:
.L63:
	.loc 1 10 9 is_stmt 1 view .LVU368
	.loc 1 11 15 is_stmt 0 view .LVU369
	cmp	r0, r5
	mov	r6, r8
	.loc 1 10 21 view .LVU370
	strb	r7, [r8, #-1]!
.LVL81:
	.loc 1 11 9 is_stmt 1 view .LVU371
	.loc 1 11 15 view .LVU372
	bhi	.L61
	.loc 1 11 15 is_stmt 0 view .LVU373
	movs	r3, #48
.L62:
	.loc 1 13 13 is_stmt 1 view .LVU374
	.loc 1 14 17 is_stmt 0 view .LVU375
	subs	r5, r5, r0
.LVL82:
	.loc 1 13 24 view .LVU376
	adds	r3, r3, #1
	.loc 1 11 15 view .LVU377
	cmp	r5, r0
	.loc 1 13 24 view .LVU378
	uxtb	r3, r3
	.loc 1 14 13 is_stmt 1 view .LVU379
.LVL83:
	.loc 1 11 15 view .LVU380
	bcs	.L62
	strb	r3, [r8]
.L61:
	.loc 1 16 9 view .LVU381
	.loc 1 16 14 is_stmt 0 view .LVU382
	umull	r3, r0, ip, r0
.LVL84:
	.loc 1 8 5 view .LVU383
	cmp	r9, r6
	.loc 1 16 14 view .LVU384
	lsr	r0, r0, #3
.LVL85:
	.loc 1 8 25 is_stmt 1 view .LVU385
	.loc 1 8 17 view .LVU386
	.loc 1 8 5 is_stmt 0 view .LVU387
	bne	.L63
.LVL86:
	.loc 1 8 5 view .LVU388
.LBE30:
.LBE29:
	.loc 1 200 13 is_stmt 1 view .LVU389
	.loc 1 200 21 is_stmt 0 view .LVU390
	movs	r3, #46
	.loc 1 201 13 view .LVU391
	mov	r0, r10
	str	r1, [sp, #4]
	.loc 1 200 21 view .LVU392
	strb	r3, [sp, #15]
	.loc 1 201 13 is_stmt 1 view .LVU393
	bl	putDNumMISC
.LVL87:
	.loc 1 203 13 view .LVU394
	.loc 1 203 17 is_stmt 0 view .LVU395
	ldrh	r0, [sp, #10]
	.loc 1 206 16 view .LVU396
	ldr	r1, [sp]
	.loc 1 204 14 view .LVU397
	adds	r3, r0, #1
	.loc 1 203 21 view .LVU398
	movs	r5, #101
	.loc 1 204 14 view .LVU399
	uxth	r3, r3
	.loc 1 206 16 view .LVU400
	cmp	r1, #45
	.loc 1 203 21 view .LVU401
	strb	r5, [r2, r0]
	.loc 1 204 13 is_stmt 1 view .LVU402
	.loc 1 206 16 is_stmt 0 view .LVU403
	ldr	r1, [sp, #4]
	.loc 1 204 14 view .LVU404
	strh	r3, [sp, #10]	@ movhi
	.loc 1 206 13 is_stmt 1 view .LVU405
	.loc 1 206 16 is_stmt 0 view .LVU406
	bne	.L64
	.loc 1 208 17 is_stmt 1 view .LVU407
	.loc 1 208 25 is_stmt 0 view .LVU408
	ldr	r5, [sp]
	strb	r5, [r2, r3]
	.loc 1 209 17 is_stmt 1 view .LVU409
	.loc 1 209 18 is_stmt 0 view .LVU410
	adds	r0, r0, #2
	strh	r0, [sp, #10]	@ movhi
.L64:
	.loc 1 212 13 is_stmt 1 view .LVU411
.LVL88:
.LBB31:
.LBI31:
	.loc 1 3 6 view .LVU412
.LBB32:
	.loc 1 5 5 view .LVU413
	.loc 1 6 5 view .LVU414
	.loc 1 8 5 view .LVU415
	.loc 1 8 17 view .LVU416
	.loc 1 10 9 view .LVU417
	.loc 1 10 21 is_stmt 0 view .LVU418
	mov	ip, #48
	.loc 1 6 14 view .LVU419
	ldr	r0, .L105
	.loc 1 16 14 view .LVU420
	ldr	lr, .L105+4
	.loc 1 10 21 view .LVU421
	strb	ip, [sp, #21]
	.loc 1 11 9 is_stmt 1 view .LVU422
	.loc 1 11 15 view .LVU423
	sub	r9, r9, #2
	add	r7, sp, #20
.LVL89:
.L65:
	.loc 1 16 9 view .LVU424
	.loc 1 16 14 is_stmt 0 view .LVU425
	umull	r3, r0, lr, r0
	.loc 1 8 5 view .LVU426
	cmp	r9, r7
	.loc 1 16 14 view .LVU427
	lsr	r0, r0, #3
.LVL90:
	.loc 1 8 25 is_stmt 1 view .LVU428
	.loc 1 8 17 view .LVU429
	.loc 1 8 5 is_stmt 0 view .LVU430
	beq	.L69
	.loc 1 10 9 is_stmt 1 view .LVU431
	.loc 1 11 15 is_stmt 0 view .LVU432
	cmp	r4, r0
	.loc 1 10 21 view .LVU433
	strb	ip, [r7]
	.loc 1 11 9 is_stmt 1 view .LVU434
	.loc 1 11 15 view .LVU435
	bcc	.L66
	movs	r3, #49
.L67:
	.loc 1 13 13 view .LVU436
	.loc 1 14 13 view .LVU437
	.loc 1 14 17 is_stmt 0 view .LVU438
	subs	r4, r4, r0
.LVL91:
	.loc 1 11 15 is_stmt 1 view .LVU439
	adds	r5, r3, #1
	cmp	r4, r0
	mov	r6, r3
	uxtb	r3, r5
	bcs	.L67
	strb	r6, [r7]
.L66:
.LVL92:
	.loc 1 11 15 is_stmt 0 view .LVU440
	subs	r7, r7, #1
	b	.L65
.LVL93:
.L52:
	.loc 1 11 15 view .LVU441
.LBE32:
.LBE31:
	.loc 1 171 23 is_stmt 1 view .LVU442
	vldr.32	s14, .L105+12
	vcmpe.f32	s13, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L98
	.loc 1 173 28 is_stmt 0 view .LVU443
	vmov.f32	s15, s14
	.loc 1 170 24 view .LVU444
	movs	r4, #1
.LVL94:
.L57:
	.loc 1 173 21 is_stmt 1 view .LVU445
	.loc 1 173 28 is_stmt 0 view .LVU446
	vmul.f32	s14, s14, s15
.LVL95:
	.loc 1 174 21 is_stmt 1 view .LVU447
	.loc 1 174 27 is_stmt 0 view .LVU448
	adds	r4, r4, #1
.LVL96:
	.loc 1 171 23 view .LVU449
	vcmpe.f32	s13, s14
	vmrs	APSR_nzcv, FPSCR
	.loc 1 174 27 view .LVU450
	uxth	r4, r4
.LVL97:
	.loc 1 171 23 is_stmt 1 view .LVU451
	bmi	.L57
.LVL98:
.L100:
	.loc 1 168 22 is_stmt 0 view .LVU452
	movs	r3, #45
	str	r3, [sp]
	b	.L55
.LVL99:
.L104:
	.loc 1 181 23 view .LVU453
	vldr.32	s14, .L105+12
	movw	r4, #65535
	b	.L54
.LVL100:
.L98:
	.loc 1 171 23 view .LVU454
	movs	r4, #1
	b	.L100
.L106:
	.align	2
.L105:
	.word	1000000000
	.word	-858993459
	.word	1148846080
	.word	1036831949
.LBE22:
	.cfi_endproc
.LFE112:
	.size	getStr4NumMISC, .-getStr4NumMISC
.Letext0:
	.file 2 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/Users/user/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/system_stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4ff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x60
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x67
	.uleb128 0x5
	.4byte	0xba
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x51b
	.byte	0x19
	.4byte	0xc6
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.byte	0x11
	.4byte	0xcb
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ef
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.byte	0x1e
	.4byte	0xae
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xa
	.ascii	"num\000"
	.byte	0x1
	.byte	0x2c
	.byte	0x30
	.4byte	0x3ef
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.byte	0x3f
	.4byte	0x3f5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2f
	.byte	0xf
	.4byte	0x3fb
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0xa2
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.ascii	"m\000"
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0xae
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xf
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x32a
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x99
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9a
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9b
	.byte	0xc
	.4byte	0xa2
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	0xae
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9d
	.byte	0xd
	.4byte	0xcb
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9d
	.byte	0x15
	.4byte	0xcb
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x10
	.4byte	0x488
	.4byte	.LBI23
	.2byte	.LVU338
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xc4
	.byte	0xd
	.4byte	0x259
	.uleb128 0x11
	.4byte	0x4a1
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x11
	.4byte	0x495
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x13
	.4byte	0x4ad
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x13
	.4byte	0x4b7
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x488
	.4byte	.LBI29
	.2byte	.LVU363
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.4byte	0x2a8
	.uleb128 0x11
	.4byte	0x4a1
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x11
	.4byte	0x495
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x13
	.4byte	0x4ad
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x13
	.4byte	0x4b7
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.uleb128 0x14
	.4byte	0x488
	.4byte	.LBI31
	.2byte	.LVU412
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.4byte	0x2f7
	.uleb128 0x11
	.4byte	0x4a1
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x11
	.4byte	0x495
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x13
	.4byte	0x4ad
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x13
	.4byte	0x4b7
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.uleb128 0x15
	.4byte	.LVL79
	.4byte	0x411
	.4byte	0x312
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL87
	.4byte	0x411
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x34c
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xdb
	.byte	0xc
	.4byte	0xa2
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0xf
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x36e
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xef
	.byte	0xc
	.4byte	0xa2
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x38d
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x103
	.byte	0x15
	.4byte	0xa2
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x10
	.4byte	0x488
	.4byte	.LBI14
	.2byte	.LVU115
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x76
	.byte	0xd
	.4byte	0x3de
	.uleb128 0x11
	.4byte	0x4a1
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x11
	.4byte	0x495
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	0x4ad
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x13
	.4byte	0x4b7
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL33
	.4byte	0x411
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xcb
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xba
	.uleb128 0x1b
	.4byte	0xa2
	.4byte	0x411
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x482
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x14
	.byte	0x1b
	.4byte	0x3f5
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xa
	.ascii	"m\000"
	.byte	0x1
	.byte	0x14
	.byte	0x2b
	.4byte	0x482
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.byte	0x37
	.4byte	0x3f5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0xa2
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.4byte	0xa2
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xae
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.byte	0x1
	.4byte	0x4c4
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3
	.byte	0x1b
	.4byte	0x3f5
	.uleb128 0x1f
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3
	.byte	0x2a
	.4byte	0xcb
	.uleb128 0x20
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.byte	0xd
	.4byte	0xa2
	.uleb128 0x21
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.4byte	0xcb
	.byte	0
	.uleb128 0x22
	.4byte	0x488
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	0x495
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	0x4a1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x13
	.4byte	0x4ad
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x13
	.4byte	0x4b7
	.4byte	.LLST2
	.4byte	.LVUS2
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 0
.LLST7:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 0
.LLST8:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU100
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU142
.LLST9:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU173
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU211
.LLST10:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU167
	.uleb128 .LVU172
	.uleb128 .LVU207
	.uleb128 .LVU211
	.uleb128 .LVU227
	.uleb128 .LVU230
	.uleb128 .LVU290
	.uleb128 .LVU294
.LLST11:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU312
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU319
	.uleb128 .LVU322
	.uleb128 .LVU330
	.uleb128 .LVU441
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU454
	.uleb128 .LVU454
	.uleb128 0
.LLST19:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU297
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 .LVU310
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU441
	.uleb128 0
.LLST20:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0xb
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x25
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU298
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU441
	.uleb128 .LVU453
	.uleb128 .LVU454
.LLST21:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU312
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU318
	.uleb128 .LVU441
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU449
	.uleb128 .LVU451
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU454
	.uleb128 .LVU454
	.uleb128 0
.LLST22:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU337
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU441
.LLST23:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU331
	.uleb128 .LVU343
.LLST24:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU338
	.uleb128 .LVU360
.LLST25:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU338
	.uleb128 .LVU360
.LLST26:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU342
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU346
	.uleb128 .LVU358
	.uleb128 .LVU360
.LLST27:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU341
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU355
	.uleb128 .LVU357
	.uleb128 .LVU360
.LLST28:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU363
	.uleb128 .LVU376
	.uleb128 .LVU380
	.uleb128 .LVU388
.LLST29:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU363
	.uleb128 .LVU388
.LLST30:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU371
	.uleb128 .LVU386
	.uleb128 .LVU388
.LLST31:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU383
	.uleb128 .LVU385
	.uleb128 .LVU388
.LLST32:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU429
	.uleb128 .LVU440
.LLST33:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU412
	.uleb128 .LVU441
.LLST34:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU416
	.uleb128 .LVU424
	.uleb128 .LVU429
	.uleb128 .LVU440
.LLST35:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x8
	.byte	0x91
	.sleb128 -44
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU415
	.uleb128 .LVU424
	.uleb128 .LVU428
	.uleb128 .LVU440
.LLST36:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU176
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU184
.LLST17:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU276
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU294
.LLST18:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU153
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU160
.LLST16:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU122
	.uleb128 .LVU129
	.uleb128 .LVU133
	.uleb128 .LVU142
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU115
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU142
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU119
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU125
	.uleb128 .LVU139
	.uleb128 .LVU142
.LLST14:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -42
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU118
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU142
.LLST15:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU51
	.uleb128 .LVU53
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU30
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU54
	.uleb128 .LVU61
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU12
	.uleb128 .LVU24
	.uleb128 .LVU27
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"misc.c\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF29:
	.ascii	"getStr4NumMISC\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF35:
	.ascii	"step\000"
.LASF0:
	.ascii	"float\000"
.LASF24:
	.ascii	"sige\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF22:
	.ascii	"f_step\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF31:
	.ascii	"dnum\000"
.LASF18:
	.ascii	"ITM_RxBuffer\000"
.LASF26:
	.ascii	"d_part\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF32:
	.ascii	"rstr\000"
.LASF21:
	.ascii	"p_int32\000"
.LASF34:
	.ascii	"flag\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF28:
	.ascii	"t_rez\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF38:
	.ascii	"/Users/user/msut/STM32F407/examples/EthernetW5500\000"
.LASF25:
	.ascii	"e_part\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF33:
	.ascii	"r_str\000"
.LASF12:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"SystemCoreClock\000"
.LASF20:
	.ascii	"type\000"
.LASF4:
	.ascii	"short int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF36:
	.ascii	"GNU C17 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -mlittle-endian -mthumb -mcpu=cort"
	.ascii	"ex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4"
	.ascii	"-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-precisio"
	.ascii	"n-constant\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF9:
	.ascii	"long int\000"
.LASF23:
	.ascii	"f_num\000"
.LASF2:
	.ascii	"signed char\000"
.LASF30:
	.ascii	"putDNumMISC\000"
.LASF27:
	.ascii	"i_part\000"
.LASF39:
	.ascii	"getDNumMISC\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 9-2019-q4-major) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
