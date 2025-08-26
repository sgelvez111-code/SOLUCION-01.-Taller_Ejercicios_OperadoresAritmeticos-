Algoritmo Calculadora_Geometrica
    Definir opcion, subopcion, continuar Como Entero
    Definir base, altura, radio, long, ancho, volumen, area Como Real
	
	
	Escribir "bienvenido, elije el proceso que quieres llevar a cabo" 
    continuar <- 1
	
    Mientras continuar = 1 Hacer
        Limpiar Pantalla
        Escribir "calculadora geometrica"
        Escribir "1. Calcular ÁREAS"
        Escribir "2. Calcular VOLÚMENES"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Repetir
                    Limpiar Pantalla
                    Escribir "calculo de areas"
                    Escribir "1. Triángulo"
                    Escribir "2. Rectángulo"
                    Escribir "3. Círculo"
                    Escribir "4. Volver al menú principal"
                    Leer subopcion
					
                    Segun subopcion Hacer
                        1:
                            Escribir "Ingrese la base: "
                            Leer base
                            Escribir "Ingrese la altura: "
                            Leer altura
                            area <- (base * altura) / 2
                            Escribir "El área del triángulo es: ", area
                        2:
                            Escribir "Ingrese la longitud: "
                            Leer long
                            Escribir "Ingrese el ancho: "
                            Leer ancho
                            area <- long * ancho
                            Escribir "El área del rectángulo es: ", area
                        3:
                            Escribir "Ingrese el radio: "
                            Leer radio
                            area <- PI * radio^2
                            Escribir "El área del círculo es: ", area
                        4:
                            Escribir "Volviendo al menú principal..."
                        De Otro Modo:
                            Escribir "Opción no válida"
                    FinSegun
                Hasta Que subopcion = 4
				
            2:
                Repetir
                    Limpiar Pantalla
                    Escribir "calculo de volumenes"
                    Escribir "1. Esfera"
                    Escribir "2. Cilindro"
                    Escribir "3. Cono"
                    Escribir "4. Volver al menú principal"
                    Leer subopcion
					
                    Segun subopcion Hacer
                        1:
                            Escribir "Ingrese el radio: "
                            Leer radio
                            volumen <- (4/3) * PI * radio^3
                            Escribir "El volumen de la esfera es: ", volumen
                        2:
                            Escribir "Ingrese el radio de la base: "
                            Leer radio
                            Escribir "Ingrese la altura: "
                            Leer altura
                            volumen <- PI * radio^2 * altura
                            Escribir "El volumen del cilindro es: ", volumen
                        3:
                            Escribir "Ingrese el radio de la base: "
                            Leer radio
                            Escribir "Ingrese la altura: "
                            Leer altura
                            volumen <- (PI * radio^2 * altura) / 3
                            Escribir "El volumen del cono es: ", volumen
                        4:
                            Escribir "Volviendo al menú principal..."
                        De Otro Modo:
                            Escribir "Opción no válida"
                    FinSegun
                Hasta Que subopcion = 4
				
            3:
                Escribir "Saliendo de la calculadora..."
                continuar <- 0
            De Otro Modo:
                Escribir "Opción inválida"
        FinSegun
		
        Si continuar = 1 Entonces
            Escribir "¿Desea realizar otro cálculo? (1=Si, 0=No)"
            Leer continuar
        FinSi
    FinMientras
	
    Escribir "Gracias por usar la calculadora geométrica." 
	
FinAlgoritmo
