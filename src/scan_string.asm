SECTION .text
global scan_string

; ---------------------------------
; scan_string
; Entrada:
;   EAX = buffer destino
;   EBX = tamaño máximo
; ---------------------------------

scan_string:

    push ebp
    mov ebp, esp

    ;implementacion 
    mov eax, 3 ; syscall scan
    mov ebx, 0 
    mov ecx, char_buffer 
    mov edx, 1 ; El tamaño del caracter
    int 0x80 

    mov al, [char_buffer] ; byte que se leyo a la parte mas baja 

    mov esp, ebp
    pop ebp
    ret
