	Algoritmo CajeroAutomatico
		// PASO 1: Definición de variables
		Definir opcionMoneda, i, cantidadBilletes Como Entero
		Definir montoRetiro, resto Como Entero
		Definir hayError Como Logico
		Dimension billetesCordobas[6]
		Dimension billetesDolares[5]
		
		// PASO 2: Configuración del cajero (billetes disponibles)
		billetesCordobas[1] <- 1000
		billetesCordobas[2] <- 500
		billetesCordobas[3] <- 200
		billetesCordobas[4] <- 100
		billetesCordobas[5] <- 20
		billetesCordobas[6] <- 10
		
		billetesDolares[1] <- 100
		billetesDolares[2] <- 50
		billetesDolares[3] <- 20
		billetesDolares[4] <- 10
		billetesDolares[5] <- 1
		
		// PASO 3: Bucle principal (menú)
		Repetir
			Limpiar Pantalla
			Escribir "==============================="
			Escribir "     CAJERO AUTOMÁTICO - BIENVENIDO     "
			Escribir "==============================="
			Escribir "Seleccione la moneda para el retiro:"
			Escribir "1. Córdobas (C$)"
			Escribir "2. Dólares ($)"
			Escribir "3. Salir"
			Leer opcionMoneda
			
			// PASO 4: Validaciones
			Si opcionMoneda = 1 O opcionMoneda = 2 Entonces
				Escribir "Ingrese la cantidad a retirar (Solo números enteros):"
				Leer montoRetiro
				
				hayError <- Falso
				
				Si montoRetiro <= 0 Entonces
					Escribir "Error: La cantidad debe ser mayor a 0."
					hayError <- Verdadero
				FinSi
				
				Si opcionMoneda = 1 Y (montoRetiro MOD 10 <> 0) Entonces
					Escribir "Error: En Córdobas solo dispensamos billetes de 10 en adelante."
					Escribir "Por favor ingrese un monto múltiplo de 10 (ej: 150, 320)."
					hayError <- Verdadero
				FinSi
				
				// PASO 5: Motor matemático (desglose de billetes)
				Si No hayError Entonces
					Escribir "----------------------------------------"
					Escribir "Desglose de billetes a entregar:"
					Escribir "----------------------------------------"
					
					resto <- montoRetiro
					
					// Córdobas
					Si opcionMoneda = 1 Entonces
						Para i <- 1 Hasta 6 Hacer
							cantidadBilletes <- trunc(resto / billetesCordobas[i])
							Si cantidadBilletes > 0 Entonces
								Escribir cantidadBilletes, " billete(s) de C$ ", billetesCordobas[i]
								resto <- resto MOD billetesCordobas[i]
							FinSi
						FinPara
					FinSi
					
					// Dólares
					Si opcionMoneda = 2 Entonces
						Para i <- 1 Hasta 5 Hacer
							cantidadBilletes <- trunc(resto / billetesDolares[i])
							Si cantidadBilletes > 0 Entonces
								Escribir cantidadBilletes, " billete(s) de $ ", billetesDolares[i]
								resto <- resto MOD billetesDolares[i]
							FinSi
						FinPara
					FinSi
					
					Escribir "--------------------------------------------"
					Escribir "Retiro exitoso. ¡Tome su dinero!"
				FinSi
				
				Escribir ""
				Escribir "Presione una tecla para continuar..."
				Esperar Tecla
			FinSi
		Hasta Que opcionMoneda = 3
		
		// PASO 6: Cierre
		Escribir "Gracias por usar nuestro cajero."
FinAlgoritmo
