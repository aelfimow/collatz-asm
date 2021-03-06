# size_t collatz_length(size_t value)
# value is in %rdi
.global collatz_length
.section .text
collatz_length:
	xor %rax, %rax
	mov $0x0000000000000001, %r9
start:
	cmp %r9, %rdi
	je end
# Compute (3n + 1) using LEA
	lea 1(%rdi, %rdi, 2), %rdx
# Compute (n / 2)
	shr $0x01, %rdi
# Overwrite value, if it was odd
	cmovc %rdx, %rdi
# Computation step performed - count it
	inc %rax
	jmp start
end:
	ret
# size_t collatz_calc(size_t value)
# value is in %rdi
.global collatz_calc
.section .text
collatz_calc:
# Compute (3n + 1) using LEA
	lea 1(%rdi, %rdi, 2), %rax
# Compute (n / 2)
	shr $0x01, %rdi
# Overwrite result, if value was odd
	cmovnc %rdi, %rax
	ret
