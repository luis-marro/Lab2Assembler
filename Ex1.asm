; Luis Marroquin
; Carne 1011516 

.MODEL small
.DATA
idNum DB '1011516$'
cadena DB 'Luis Marroquin$'

.code
programa: 
; iniciar el programa
    MOV AX, @DATA ; se obtiene la direccion de inico del segmento de datos 
    MOV DS, AX ; asignamos el registro data segment la direccion de inicio de segmento 
    ; Imprimir ambos valores 
    MOV DX, offset cadena 
    MOV AH, 09h ; etiqueta h hace que asuma hexadecimal, b binario y d decimal 
    INT 21h
    MOV DX, offset idNum
    MOV AH, 09h ; etiqueta h hace que asuma hexadecimal, b binario y d decimal 
    INT 21h
    ; pasar temporalmente el carne a AX
    XOR AL, AL
    MOV AL, idNum
    XOR BL, BL
    MOV BL, cadena
    ; almacenar el nombre en la variable de id 
    MOV cadena, AL 
    MOV idNum, BL
    ; print the values to check result 
    MOV DX, offset cadena 
    MOV AH, 09h ; etiqueta h hace que asuma hexadecimal, b binario y d decimal 
    INT 21h
    MOV DX, offset idNum
    MOV AH, 09h ; etiqueta h hace que asuma hexadecimal, b binario y d decimal 
    INT 21h
        
; finalizar el programa 
    MOV AH, 4Ch
    INT 21h
.STACK
END programa