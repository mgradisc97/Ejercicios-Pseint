Proceso Menu_SumaResta
    Definir opcion Como Entero
    Definir num1, num2, resultado Como Entero
    
    Escribir "MENÚ DE OPCIONES"
    Escribir "1. SUMA"
    Escribir "2. RESTA"
    Escribir "Seleccione una opción (1 o 2):"
    Leer opcion
    
    Escribir "Ingrese el primer número:"
    Leer num1
    Escribir "Ingrese el segundo número:"
    Leer num2
    
    Segun opcion Hacer
        1:
            resultado <- num1 + num2
            Escribir "El resultado de la SUMA es: ", resultado
        2:
            resultado <- num1 - num2
            Escribir "El resultado de la RESTA es: ", resultado
        De Otro Modo:
            Escribir "Opción inválida"
    FinSegun
FinProceso
