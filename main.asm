global _start

; ----------------------------------------
section .rodata
message: db "hello world"

; ----------------------------------------
section .text
_start:
    mov rax, 1 ; syscall `write`
    mov rdi, 1 ; file descriptor for stdout
    mov rsi, message
    mov rdx, 11 ; message length
    syscall

    mov rdi, 123 ; exit code
    mov rax, 60 ; syscall `exit`
    syscall 
