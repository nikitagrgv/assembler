%include "syscalls.asm"

%assign STDIN 0
%assign STDOUT 1


global _start

section .rodata
hello_world: db "you  printed: ", 0xA, 0x0
len: equ $ - hello_world

section .text
_start:


    mov rax, 123
    add rax, 3
    add rax, 6

    mov rdi, rax

    mov rdi, 123
    mov rax, SYSCALL_EXIT
    syscall 



    

;     mov rbp, rsp

;     ; sub rsp, 8 ; allocate 8 bytes on the stack
;     push "1"
;     push "2"
;     push "3"
;     push "4"
;     push "5"
;     push "6"
;     push "7"
;     push "8"


;     push 8
;     mov rax, rsp
;     add rax, 16
;     push rax
;     call read
;     add rsp, 16 ; clear arguments

;     push len
;     push hello_world
;     call print
;     add rsp, 16 ; clear arguments

;     push 19
;     mov rax, rsp
;     add rax, 24
;     push rax,
;     call print
;     add rsp, 16 ; clear arguments


;     add rsp, 8 ; deallocate 8 bytes from the stack
    
;     jmp exit

; ; string, length
; print:
;     push rbp
;     mov rbp, rsp

;     mov rax, CALL_WRITE
;     mov rdi, STDOUT
;     mov rsi, [rbp + 16]
;     mov rdx, [rbp + 24]
;     syscall

;     pop rbp
;     ret

; ; string, length
; read:
;     push rbp
;     mov rbp, rsp

;     mov rax, CALL_READ
;     mov rdi, STDIN
;     mov rsi, [rbp + 16]
;     mov rdx, [rbp + 24]
;     syscall

;     pop rbp
;     ret

; exit:
;     mov eax, 0x01
;     mov ebx, 123
;     int 0x80