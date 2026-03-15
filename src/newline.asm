extern print_char
global newline

SECTION .text

newline:

    push ebp
    mov ebp, esp

    ; implementacion 
    mov al, 10    ;ascii salto de linea
    call print_char 

    mov esp, ebp
    pop ebp
    ret
