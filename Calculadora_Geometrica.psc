Algoritmo Calculadora_Geometrica
    Definir opcion, subopcion, continuar Como Entero
    Definir base, altura, radio, long, ancho, volumen, area Como Real
	
	
	Escribir "bienvenido, elije el proceso que quieres llevar a cabo" 
    continuar <- 1
	
    Mientras continuar = 1 Hacer
        Limpiar Pantalla
        Escribir "calculadora geometrica"
        Escribir "1. Calcular �REAS"
        Escribir "2. Calcular VOL�MENES"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Repetir
                    Limpiar Pantalla
                    Escribir "calculo de areas"
                    Escribir "1. Tri�ngulo"
                    Escribir "2. Rect�ngulo"
                    Escribir "3. C�rculo"
                    Escribir "4. Volver al men� principal"
                    Leer subopcion
					
                    Segun subopcion Hacer
                        1:
                            Escribir "Ingrese la base: "
                            Leer base
                            Escribir "Ingrese la altura: "
                            Leer altura
                            area <- (base * altura) / 2
                            Escribir "El �rea del tri�ngulo es: ", area
                        2:
                            Escribir "Ingrese la longitud: "
                            Leer long
                            Escribir "Ingrese el ancho: "
                            Leer ancho
                            area <- long * ancho
                            Escribir "El �rea del rect�ngulo es: ", area
                        3:
                            Escribir "Ingrese el radio: "
                            Leer radio
                            area <- PI * radio^2
                            Escribir "El �rea del c�rculo es: ", area
                        4:
                            Escribir "Volviendo al men� principal..."
                        De Otro Modo:
                            Escribir "Opci�n no v�lida"
                    FinSegun
                Hasta Que subopcion = 4
				
            2:
                Repetir
                    Limpiar Pantalla
                    Escribir "calculo de volumenes"
                    Escribir "1. Esfera"
                    Escribir "2. Cilindro"
                    Escribir "3. Cono"
                    Escribir "4. Volver al men� principal"
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
                            Escribir "Volviendo al men� principal..."
                        De Otro Modo:
                            Escribir "Opci�n no v�lida"
                    FinSegun
                Hasta Que subopcion = 4
				
            3:
                Escribir "Saliendo de la calculadora..."
                continuar <- 0
            De Otro Modo:
                Escribir "Opci�n inv�lida"
        FinSegun
		
        Si continuar = 1 Entonces
            Escribir "�Desea realizar otro c�lculo? (1=Si, 0=No)"
            Leer continuar
        FinSi
    FinMientras
	
    Escribir "Gracias por usar la calculadora geom�trica." 
	
FinAlgoritmo
