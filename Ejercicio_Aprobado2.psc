Algoritmo Ejercicio_Aprobado
		Definir edad, hijos Como Entero
		Definir nacionalidad Como Cadena
		
		Escribir "Ingrese la edad:"
		Leer edad
		Escribir "Ingrese la nacionalidad:"
		Leer nacionalidad
		Escribir "Ingrese el número de hijos:"
		Leer hijos
		
		Si edad > 18 Entonces
			Si nacionalidad = "colombiano" Entonces
				Si hijos > 0 Entonces
					Escribir "Aprobado"
				SiNo
					Escribir "No aprobado"
				FinSi
			SiNo
				Escribir "No aprobado"
			FinSi
		SiNo
			Escribir "No aprobado"
		FinSi
FinAlgoritmo
