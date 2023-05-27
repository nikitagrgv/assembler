%assign CALL_WRITE 1

%assign STDIN 0
%assign STDOUT 1


global _start

section .rodata
    hello_world: db "hfhl1w wrld!", 0xA, 0x0

section .text
_start:

    mov eax, CALL_WRITE
    mov edi, STDOUT
    mov esi, hello_world
    mov edx, 13
    syscall


    mov eax, 0x01
    mov ebx, 123
    int 0x80
