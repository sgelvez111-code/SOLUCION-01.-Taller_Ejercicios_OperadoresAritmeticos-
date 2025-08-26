Algoritmo monitoreo_sensores2
    Definir n, i, temperatura, sumaCelsius Como Real
    Definir sumaFahrenheit Como Real
    Definir criticos_bajos, criticos_altos, normales Como Entero
    Definir opcion, continuar Como Entero
	
	Escribir "bienvenido, elije el proceso que quieres llevar a cabo" 
	continuar<-1
	Mientras continuar = 1 Hacer
        Limpiar Pantalla
		
		Escribir "sistema de monitoreo de sensores" 
		Escribir "1. Ingresar lecturas de sensores"
        Escribir "2. Mostrar resumen de sensores"
        Escribir "3. Reiniciar datos"
        Escribir "4. Salir"
        Leer opcion
		
		Segun opcion Hacer
            1: 
                Escribir "Ingrese la cantidad de sensores a monitorear: "
                Leer n
                
                sumaCelsius <- 0
                criticos_bajos <- 0
                criticos_altos <- 0
                normales <- 0
				
                Para i <- 1 Hasta n Con Paso 1 Hacer
                    Repetir
                        Escribir "Ingrese la temperatura del sensor ", i, " (0 a 100 °C): "
                        Leer temperatura
                        Si temperatura < 0 O temperatura > 100 Entonces
                            Escribir "Valor inválido. Intente de nuevo."
                        FinSi
                    Hasta Que temperatura >= 0 Y temperatura <= 100
					
                    sumaCelsius <- sumaCelsius + temperatura
					
                    Si temperatura < 20 Entonces
                        criticos_bajos <- criticos_bajos + 1
                    Sino
                        Si temperatura > 80 Entonces
                            criticos_altos <- criticos_altos + 1
                        Sino
                            normales <- normales + 1
                        FinSi
                    FinSi
                FinPara
                
                sumaFahrenheit <- (sumaCelsius * 9/5) + (32 * n)
                Escribir "Lecturas registradas correctamente."
				
            2:
                Escribir "resumen de lecturas"
                Escribir "Suma total en Celsius: ", sumaCelsius
                Escribir "Equivalente total en Fahrenheit: ", sumaFahrenheit
                Escribir "Sensores normales: ", normales
                Escribir "Sensores con temperatura BAJA (<20 °C): ", criticos_bajos
                Escribir "Sensores con temperatura ALTA (>80 °C): ", criticos_altos
				
            3:
                sumaCelsius <- 0
                sumaFahrenheit <- 0
                criticos_bajos <- 0
                criticos_altos <- 0
                normales <- 0
                Escribir "Datos reiniciados correctamente."
				
            4:
                Escribir "Saliendo del sistema..."
                continuar <- 0
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
        Si continuar = 1 Entonces
            Escribir "¿Desea continuar? (1=Si, 0=No)"
            Leer continuar
        FinSi
    FinMientras
    
    Escribir "Gracias por usar el sistema de monitoreo de sensores."
		
		
		
		
		
		
	

	
	
FinAlgoritmo
