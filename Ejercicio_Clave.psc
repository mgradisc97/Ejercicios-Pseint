Proceso Ejercicio_Clave
    Definir clave_ingresada Como Cadena
    Definir clave_correcta Como Cadena
    
    clave_correcta <- "1234"   // Aquí defines la clave válida
    
    Escribir "Ingrese la clave:"
    Leer clave_ingresada
    
    Si clave_ingresada = clave_correcta Entonces
        Escribir "Clave correcta"
    SiNo
        Escribir "Clave incorrecta"
    FinSi
FinProceso
