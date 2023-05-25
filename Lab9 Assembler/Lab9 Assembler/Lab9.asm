;Universidad del Valle de Guatemala
;Alexis Mesias, 22562
;Hugo Rivas, 22500
;Catedrático: Roger 
;Descripción; Laboratorio 9 Assembler 
;17/05/2023
.386
.model flat, stdcall, c
.stack 4096

includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib

extrn printf:near
extrn scanf:near
extrn exit:near

.data

array_montos dw 0,0,0,0,0,0,0,0,0,0,0,0

bienvenida db "HOLA, bienvenido al calculadora de IVA! ", 0ah, 0

monto_jun word 0
monto_jun1 db "%d", 0
res_jun dword 0
msg_jun  db "Ingrese el monto facturado en el mes de JUNIO 2022: Q", 0ah, 0
msg_out_jun db "Mes: Junio 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_jul word 0
monto_jul1 db "%d", 0
msg_jul  db "Ingrese el monto facturado en el mes de JULIO 2022: Q", 0ah, 0
msg_out_jul db "Mes: JULIO 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_ago word 0
monto_ago1 db "%d", 0
msg_ago  db "Ingrese el monto facturado en el mes de Agosto 2022: Q", 0ah, 0
msg_out_ago db "Mes: AGOSTO 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_sep word 0
monto_sep1 db "%d", 0
msg_sep  db "Ingrese el monto facturado en el mes de SEPTIEMBRE 2022: Q", 0ah, 0
msg_out_sep db "Mes: SEPTIEMBRE 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_oct word 0
monto_oct1 db "%d", 0
msg_oct  db "Ingrese el monto facturado en el mes de OCTUBRE 2022: Q", 0ah, 0
msg_out_oct db "Mes: OCTUBRE 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_nov word 0
monto_nov1 db "%d", 0
msg_nov  db "Ingrese el monto facturado en el mes de NOBIEMBRE 2022: Q", 0
msg_out_nov db "Mes: NOVIEMBRE 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_dic word 0
monto_dic1 db "%d", 0
msg_dic  db "Ingrese el monto facturado en el mes de DICIEMBRE 2022: Q", 0
msg_out_dic db "Mes: DICIEMBRE 	|Anio: 2022 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_ene word 0
monto_ene1 db "%d", 0
msg_ene  db "Ingrese el monto facturado en el mes de ENERO 2023: Q", 0
msg_out_ene db "Mes: ENERO 	|Anio: 2023 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_feb word 0
monto_feb1 db "%d", 0
msg_feb  db "Ingrese el monto facturado en el mes de FEBRERO 2023: Q", 0
msg_out_feb db "Mes: FEBRERO 	|Anio: 2023 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_mar word 0
monto_mar1 db "%d", 0
msg_mar  db "Ingrese el monto facturado en el mes de MARZO 2023: Q", 0
msg_out_mar db "Mes: MARZO 	|Anio: 2023 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_abr word 0
monto_abr1 db "%d", 0
msg_abr  db "Ingrese el monto facturado en el mes de ABRIL 2023: Q", 0
msg_out_abr db "Mes: ABRIL 	|Anio: 2023 	|MONTO:Q%d		|IVA:Q%d",0ah, 0

monto_may word 0
monto_may1 db "%d", 0
msg_may  db "Ingrese el monto facturado en el mes de MAYO 2023: Q", 0
msg_out_may db "Mes: MAYO 	|Anio: 2023 	|MONTO:Q%d		|IVA:Q%d",0ah, 0


.code

public main
main proc
    push offset bienvenida
    call printf          
    add esp, 4           
    push ebp
    mov ebp, esp

    ;JUNIO
    push offset msg_jun   
    call printf          
    lea eax, monto_jun
    push eax             
    push offset monto_jun1    
    call scanf           
    add esp, 4 
    mov ax, monto_jun       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[0], ax

    ;JULIO
    push offset msg_jul  
    call printf          
    lea eax, monto_jul
    push eax             
    push offset monto_jul1    
    call scanf           
    add esp, 4 
    mov ax, monto_jul       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[1], ax

    ;Agosto
    push offset msg_ago  
    call printf          
    lea eax, monto_ago
    push eax             
    push offset monto_ago1    
    call scanf           
    add esp, 4 
    mov ax, monto_ago       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[2], ax

    ;Septiembre
    push offset msg_sep 
    call printf          
    lea eax, monto_sep
    push eax             
    push offset monto_sep1    
    call scanf           
    add esp, 4 
    mov ax, monto_sep      ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[3], ax

    ;Octubre
    push offset msg_oct 
    call printf          
    lea eax, monto_oct
    push eax             
    push offset monto_oct1    
    call scanf           
    add esp, 4 
    mov ax, monto_oct     ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[4], ax

    ;Noviembre
    push offset msg_nov  
    call printf          
    lea eax, monto_nov
    push eax             
    push offset monto_nov1    
    call scanf           
    add esp, 4 
    mov ax, monto_nov      ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[5], ax

    ;Diciembre
    push offset msg_dic  
    call printf          
    lea eax, monto_dic
    push eax             
    push offset monto_dic1    
    call scanf           
    add esp, 4 
    mov ax, monto_dic       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[6], ax

    ;ENERO
    push offset msg_ene 
    call printf          
    lea eax, monto_ene
    push eax             
    push offset monto_ene1    
    call scanf           
    add esp, 4 
    mov ax, monto_ene       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[7], ax

    ;FEBRERO
    push offset msg_feb  
    call printf          
    lea eax, monto_feb
    push eax             
    push offset monto_feb1    
    call scanf           
    add esp, 4 
    mov ax, monto_feb      ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[8], ax

    ;MARZO
    push offset msg_mar  
    call printf          
    lea eax, monto_mar
    push eax             
    push offset monto_mar1    
    call scanf           
    add esp, 4 
    mov ax, monto_mar       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[9], ax

    ;ABRIL
    push offset msg_abr  
    call printf          
    lea eax, monto_abr
    push eax             
    push offset monto_abr1    
    call scanf           
    add esp, 4 
    mov ax, monto_abr       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[10], ax

    ;MAYO
    push offset msg_may 
    call printf          
    lea eax, monto_may
    push eax             
    push offset monto_may1    
    call scanf           
    add esp, 4 
    mov ax, monto_may       ; Mueve el monto de junio a registro AX
    mov bx,0
    mov array_montos[11], ax
		

main endp
     end
