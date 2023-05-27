%assign CALL_WRITE 1

%assign STDIN 0
%assign STDOUT 1


global _start

section .rodata
hello_world: db "hello world 123 456", 0xA, 0x0
len: equ $ - hello_world

section .text
_start:
    mov rbp, rsp

    push len
    push hello_world
    call print
    add rsp, 16 ; clear arguments
    
    jmp exit

; string, length
print:
    push rbp
    mov rbp, rsp

    mov rax, CALL_WRITE
    mov rdi, STDOUT
    mov rsi, [rbp + 16]
    mov rdx, [rbp + 24]
    syscall

    pop rbp
    ret

exit:
    mov eax, 0x01
    mov ebx, 123
    int 0x80