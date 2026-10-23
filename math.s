.text
	.globl	power
	.type	power, @function
power:
   push %rbp
   mov  %rsp, %rbp 

   mov $1, %rax
   mov %rsi, %rcx
   test %rcx, %rcx
   jz .done
.loop:
   imul %rdi, %rax
   dec %rcx
   jnz .loop
.done:
   #function exiis
   mov %rbp, %rsp
   pop %rbp
   ret
