SECTION .text
global print_string

; ---------------------------------
; print_string
; Entrada:
;   EAX = direccion de cadena
;   cadena terminada en 0
; ---------------------------------

print_string:

    push ebp
    mov ebp, esp

;implementacion 
    push esi 
    push ebx 
    push ecx
    push edx 

    mov esi, eax 
    xor ecx, ecx 

loop_contador:
    cmp byte [esi+ecx], 0
    je imprimir_1
    inc ecx 
    jmp loop_contador 

imprimir_1:
    mov eax, 4 
    mov ebx, 1
    mov edx, ecx 
    mov ecx, esi
    int 0x80

    pop edx             
    pop ecx
    pop ebx
    pop esi

    mov esp, ebp
    pop ebp
    ret
