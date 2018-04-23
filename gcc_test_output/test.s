	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	is_prime
	.type	is_prime, %function
is_prime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	MOV r13, r13
	stmfd	sp!, {fp, lr}
	MOV r13, r13
	add	fp, sp, #4
	MOV r13, r13
	sub	sp, sp, #16
	MOV r13, r13
	str	r0, [fp, #-16]
	MOV r13, r13
	mov	r3, #2
	MOV r13, r13
	str	r3, [fp, #-8]
	b	.L2
.L5:
	MOV r13, r13
	ldr	r3, [fp, #-16]
	MOV r13, r13
	mov	r0, r3
	MOV r13, r13
	ldr	r1, [fp, #-8]
	bl	__aeabi_idivmod
	MOV r13, r13
	mov	r3, r1
	MOV r13, r13
	cmp	r3, #0
	bne	.L3
	MOV r13, r13
	mov	r3, #0
	b	.L4
.L3:
	MOV r13, r13
	ldr	r3, [fp, #-8]
	MOV r13, r13
	add	r3, r3, #1
	MOV r13, r13
	str	r3, [fp, #-8]
.L2:
	MOV r13, r13
	ldr	r3, [fp, #-8]
	MOV r13, r13
	ldr	r2, [fp, #-8]
	MOV r13, r13
	mul	r2, r2, r3
	MOV r13, r13
	ldr	r3, [fp, #-16]
	MOV r13, r13
	cmp	r2, r3
	ble	.L5
	MOV r13, r13
	mov	r3, #1
.L4:
	MOV r13, r13
	mov	r0, r3
	MOV r13, r13
	sub	sp, fp, #4
	@ sp needed
	MOV r13, r13
	ldmfd	sp!, {fp, pc}
	.size	is_prime, .-is_prime
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%i \012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	MOV r13, r13
	stmfd	sp!, {fp, lr}
	MOV r13, r13
	add	fp, sp, #4
	MOV r13, r13
	sub	sp, sp, #16
	MOV r13, r13
	mvn	r3, #0
	MOV r13, r13
	str	r3, [fp, #-12]
	MOV r13, r13
	mov	r3, #0
	MOV r13, r13
	str	r3, [fp, #-16]
	MOV r13, r13
	mov	r3, #2
	MOV r13, r13
	str	r3, [fp, #-8]
	b	.L7
.L9:
	MOV r13, r13
	ldr	r2, [fp, #-8]
	MOV r13, r13
	ldr	r3, [fp, #-12]
	MOV r13, r13
	and	r3, r3, r2
	MOV r13, r13
	str	r3, [fp, #-8]
	MOV r13, r13
	ldr	r2, [fp, #-8]
	MOV r13, r13
	ldr	r3, [fp, #-16]
	MOV r13, r13
	eor	r3, r3, r2
	MOV r13, r13
	str	r3, [fp, #-8]
	MOV r13, r13
	ldr	r0, [fp, #-8]
	bl	is_prime
	MOV r13, r13
	mov	r3, r0
	MOV r13, r13
	cmp	r3, #0
	beq	.L8
	MOV r13, r13
	ldr	r0, .L10
	MOV r13, r13
	ldr	r1, [fp, #-8]
	bl	printf
.L8:
	MOV r13, r13
	ldr	r3, [fp, #-8]
	MOV r13, r13
	add	r3, r3, #1
	MOV r13, r13
	str	r3, [fp, #-8]
.L7:
	MOV r13, r13
	ldr	r3, [fp, #-8]
	MOV r13, r13
	cmp	r3, #99
	ble	.L9
	MOV r13, r13
	mov	r0, r3
	MOV r13, r13
	sub	sp, fp, #4
	@ sp needed
	MOV r13, r13
	ldmfd	sp!, {fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

