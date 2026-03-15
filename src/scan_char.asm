SECTION .bss
char_buffer resb 1

SECTION .text
global scan_char

; ---------------------------------
; scan_char
; Salida:
;   AL = caracter leído
; ---------------------------------

scan_char:

    push ebp
    mov ebp, esp

   ;implementacion 
    push ebx
    push ecx
    push edx

    mov eax, 3    ; sys read
    mov ebx, 0
    mov ecx, char_buffer ; buffer destino 
    mov edx, 1
    int 0x80

    mov al, [char_buffer] ; devuelve el caracter leido en al
    
    pop edx
    pop ecx
    pop ebx

    mov esp, ebp
    pop ebp
    ret
