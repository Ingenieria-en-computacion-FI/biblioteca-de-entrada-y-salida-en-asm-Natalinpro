SECTION .text
global print_char

; ---------------------------------
; print_char
; Entrada:
;   AL = caracter a imprimir
; ---------------------------------

print_char:

    push ebp
    mov ebp, esp

  
    ;implementacion
    push eax
    mov eax, 4          ; sys write
    mov ebx, 1
    mov ecx, esp    ; puntero al caracter en la pila
    mov edx, 1
    int 0x80     

    mov esp, ebp
    pop ebp
    ret
