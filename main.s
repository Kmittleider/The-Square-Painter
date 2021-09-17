	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	ip, #0
	mov	r2, #31744
	push	{r4, r5, r6, lr}
	mov	r1, #992
	mvn	lr, #64512
	mvn	r0, #32768
	ldr	r4, .L4
	strh	r4, [r3]	@ movhi
	ldr	r4, .L4+4
	ldr	r3, .L4+8
	ldrh	r4, [r4, #48]
	strh	r4, [r3]	@ movhi
	ldr	r3, .L4+12
	strh	ip, [r3]	@ movhi
	ldr	r3, .L4+16
	ldr	ip, .L4+20
	strh	r2, [r3]	@ movhi
	ldr	r2, .L4+24
	ldr	r3, .L4+28
	strh	lr, [ip]	@ movhi
	strh	r1, [r2]	@ movhi
	ldr	ip, .L4+32
	ldr	lr, .L4+36
	ldr	r2, .L4+40
	strh	r0, [r3]	@ movhi
	add	r1, r1, #31744
	ldr	r3, .L4+44
	add	r0, r0, #65536
	strh	lr, [ip]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #30
	mov	r4, #180
	mov	lr, #100
	mov	ip, #15
	mov	r0, #73
	mov	r1, #113
	mov	r2, #1
	ldr	r5, .L4+48
	str	r3, [r5]
	ldr	r5, .L4+52
	str	r3, [r5]
	ldr	r5, .L4+56
	str	r3, [r5]
	ldr	r5, .L4+60
	str	r3, [r5]
	ldr	r5, .L4+64
	str	r3, [r5]
	ldr	r5, .L4+68
	str	r3, [r5]
	ldr	r3, .L4+72
	str	r4, [r3]
	ldr	r3, .L4+76
	str	r4, [r3]
	ldr	r3, .L4+80
	str	lr, [r3]
	ldr	r3, .L4+84
	str	lr, [r3]
	ldr	r3, .L4+88
	ldr	lr, .L4+92
	str	ip, [r3]
	ldr	r4, .L4+96
	ldr	r3, .L4+100
	str	ip, [lr]
	str	r0, [r3]
	ldr	lr, .L4+104
	str	r0, [r4]
	ldr	ip, .L4+108
	ldr	r0, .L4+112
	ldr	r3, .L4+116
	str	r1, [lr]
	str	r1, [ip]
	str	r2, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	pColor
	.word	c2Color
	.word	c3Color
	.word	bgColor
	.word	c1Color
	.word	31775
	.word	c4Color
	.word	fillScreen
	.word	cHeight
	.word	cWidth
	.word	c1Row
	.word	c1Col
	.word	c2Row
	.word	c4Col
	.word	c2Col
	.word	c3Col
	.word	c3Row
	.word	c4Row
	.word	pWidth
	.word	pHeight
	.word	pRow
	.word	pOldRow
	.word	pCol
	.word	pOldCol
	.word	pRDel
	.word	pCDel
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L28
	ldrh	r3, [r3]
	tst	r3, #1
	sub	sp, sp, #16
	beq	.L7
	ldr	r2, .L28+4
	ldrh	r2, [r2]
	ands	r2, r2, #1
	ldreq	r1, .L28+8
	strheq	r2, [r1]	@ movhi
.L7:
	tst	r3, #2
	beq	.L8
	ldr	r3, .L28+4
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #31744
	ldreq	r3, .L28+8
	strheq	r2, [r3]	@ movhi
.L8:
	ldr	r4, .L28+12
	ldr	r0, [r4]
	cmp	r0, #0
	movlt	r3, #0
	ldrlt	r2, .L28+16
	strlt	r0, [r2]
	movlt	r0, r3
	ldr	r6, .L28+20
	ldr	r2, [r6]
	strlt	r3, [r4]
	add	r3, r2, r0
	ldr	r5, .L28+24
	cmp	r3, #240
	ldrgt	r3, .L28+16
	ldr	r1, [r5]
	strgt	r0, [r3]
	rsbgt	r0, r2, #240
	strgt	r0, [r4]
	cmp	r1, #0
	movlt	r3, #0
	ldrlt	ip, .L28+28
	strlt	r1, [ip]
	movlt	r1, r3
	ldr	r7, .L28+32
	strlt	r3, [r5]
	ldr	r3, [r7]
	add	ip, r3, r1
	cmp	ip, #160
	ldrgt	ip, .L28+28
	strgt	r1, [ip]
	ldr	ip, .L28+36
	ldrh	ip, [ip, #48]
	rsbgt	r1, r3, #160
	strgt	r1, [r5]
	tst	ip, #16
	ldr	ip, .L28+36
	ldrh	ip, [ip, #48]
	addeq	r0, r0, #1
	streq	r0, [r4]
	tst	ip, #32
	ldr	ip, .L28+36
	ldrh	ip, [ip, #48]
	subeq	r0, r0, #1
	streq	r0, [r4]
	tst	ip, #64
	ldr	ip, .L28+36
	ldr	r9, .L28+40
	ldrh	ip, [ip, #48]
	subeq	r1, r1, #1
	streq	r1, [r5]
	ldr	r8, .L28+44
	tst	ip, #128
	ldr	r10, [r9]
	ldr	lr, .L28+48
	ldr	ip, .L28+52
	ldr	lr, [lr]
	ldr	ip, [ip]
	str	r10, [sp, #12]
	ldr	r10, [r8]
	str	lr, [sp, #4]
	str	ip, [sp]
	addeq	r1, r1, #1
	str	r10, [sp, #8]
	ldr	r10, .L28+56
	streq	r1, [r5]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldrgt	r2, .L28+60
	ldrgt	r3, .L28+8
	ldrhgt	r2, [r2]
	strhgt	r2, [r3]	@ movhi
	ldr	r2, .L28+64
	ldr	r3, .L28+68
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r9]
	ldr	r3, [r8]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r1, [r5]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldrgt	r2, .L28+72
	ldrgt	r3, .L28+8
	ldrhgt	r2, [r2]
	strhgt	r2, [r3]	@ movhi
	ldr	r2, .L28+76
	ldr	r3, .L28+80
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r9]
	ldr	r3, [r8]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r1, [r5]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldrgt	r2, .L28+84
	ldrgt	r3, .L28+8
	ldrhgt	r2, [r2]
	ldr	r0, .L28+88
	ldr	r1, .L28+92
	strhgt	r2, [r3]	@ movhi
	ldr	lr, [r0]
	ldr	ip, [r1]
	ldr	r2, [r9]
	ldr	r3, [r8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r6]
	ldr	r3, [r7]
	stm	sp, {ip, lr}
	ldr	r1, [r5]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldrgt	r2, .L28+96
	ldrgt	r3, .L28+8
	ldrhgt	r2, [r2]
	strhgt	r2, [r3]	@ movhi
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	oldButtons
	.word	buttons
	.word	pColor
	.word	pCol
	.word	pOldCol
	.word	pWidth
	.word	pRow
	.word	pOldRow
	.word	pHeight
	.word	67109120
	.word	cHeight
	.word	cWidth
	.word	c1Row
	.word	c1Col
	.word	collision
	.word	c1Color
	.word	c2Row
	.word	c2Col
	.word	c2Color
	.word	c3Row
	.word	c3Col
	.word	c3Color
	.word	c4Row
	.word	c4Col
	.word	c4Color
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L35
	ldrh	r3, [r3, #48]
	ldr	r6, .L35+4
	ldr	r5, .L35+8
	tst	r3, #4
	ldr	r10, .L35+12
	ldr	r9, .L35+16
	ldr	r2, [r6]
	ldr	r3, [r5]
	sub	sp, sp, #8
	beq	.L33
	ldr	r4, .L35+20
.L31:
	ldr	r1, .L35+24
	ldr	r8, .L35+28
	ldrh	r1, [r1]
	ldr	r7, .L35+32
	str	r1, [sp]
	ldr	r0, [r7]
	ldr	r1, [r8]
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+36
	ldrh	r3, [r3]
	ldr	r6, .L35+40
	str	r3, [sp]
	ldr	r5, .L35+44
	ldr	r1, .L35+48
	ldr	r0, .L35+52
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+56
	ldrh	r3, [r3]
	ldr	r1, .L35+60
	str	r3, [sp]
	ldr	r0, .L35+64
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+68
	ldrh	r3, [r3]
	ldr	r1, .L35+72
	str	r3, [sp]
	ldr	r0, .L35+76
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+80
	ldrh	ip, [r3]
	ldr	r2, [r5]
	ldr	r3, [r6]
	ldr	r1, .L35+84
	str	ip, [sp]
	ldr	r0, .L35+88
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r2, [r8]
	ldr	r3, [r7]
	str	r2, [r10]
	str	r3, [r9]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L33:
	ldr	ip, .L35+92
	ldr	r1, [r10]
	ldr	r0, [r9]
	str	ip, [sp]
	ldr	r4, .L35+20
	mov	lr, pc
	bx	r4
	ldr	r2, [r6]
	ldr	r3, [r5]
	b	.L31
.L36:
	.align	2
.L35:
	.word	67109120
	.word	pWidth
	.word	pHeight
	.word	pOldRow
	.word	pOldCol
	.word	drawRect
	.word	pColor
	.word	pRow
	.word	pCol
	.word	c1Color
	.word	cHeight
	.word	cWidth
	.word	c1Row
	.word	c1Col
	.word	c2Color
	.word	c2Row
	.word	c2Col
	.word	c3Color
	.word	c3Row
	.word	c3Col
	.word	c4Color
	.word	c4Row
	.word	c4Col
	.word	32767
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r9, .L40+4
	ldr	r4, .L40+8
	ldr	r8, .L40+12
	ldr	r7, .L40+16
	ldr	r6, .L40+20
	ldr	r5, .L40+24
.L38:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L38
.L41:
	.align	2
.L40:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	pColor,2,2
	.comm	pWidth,4,4
	.comm	pHeight,4,4
	.comm	pCDel,4,4
	.comm	pRDel,4,4
	.comm	pOldCol,4,4
	.comm	pOldRow,4,4
	.comm	pCol,4,4
	.comm	pRow,4,4
	.comm	c4Color,2,2
	.comm	c4Col,4,4
	.comm	c4Row,4,4
	.comm	c3Color,2,2
	.comm	c3Col,4,4
	.comm	c3Row,4,4
	.comm	c2Color,2,2
	.comm	c2Col,4,4
	.comm	c2Row,4,4
	.comm	c1Color,2,2
	.comm	c1Col,4,4
	.comm	c1Row,4,4
	.comm	cWidth,4,4
	.comm	cHeight,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
