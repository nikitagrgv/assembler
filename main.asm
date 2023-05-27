%assign CALL_WRITE 1

%assign STDIN 0
%assign STDOUT 1


global _start

section .rodata
    hello_world: db "hfhl1w wrld!", 0xA, 0x0

section .text
_start:
    mov rbp, rsp

    push 6
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
    mov rdx, [rbp + 24]
    mov rsi, [rbp + 16]
    syscall

    pop rbp
    ret

exit:
    mov eax, 0x01
    mov ebx, 123
    int 0x80