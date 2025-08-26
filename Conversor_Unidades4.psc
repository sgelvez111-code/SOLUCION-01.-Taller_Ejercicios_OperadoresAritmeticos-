Algoritmo Conversor_Unidades4
    Definir dato_opcion, continuar Como Entero
    Definir cantidad, resultado Como Real
	
	
	Escribir "bienvenido, elije el proceso que quieres llevar a cabo" 
    continuar<-1
	
	Mientras continuar=1 Hacer
		Limpiar Pantalla
        Escribir "Conversion de unidades"
		Escribir "1. kilometros a millas"
		Escribir "2. pulgadas a centimetros"
		Escribir "3. libras a kilometros" 
		Escribir "4. litros a galones"
		Escribir "5. salir"
		Leer dato_opcion
		
		Segun dato_opcion hacer
			1:
				Escribir "ingrese la cantidad de kilometros:"
				leer cantidad
				resultado <- cantidad * (0,621371)
				Escribir cantidad, "kilometros equivales a" , resultado, millas; 
				
			2: 
				Escribir "ingrese la cantidad de pulgadas:"
				leer cantidad
				resultado<- cantidad*2.54
				Escribir cantidad, "pulgadas equivales a" , resultado, centimetros; 
				
			3: 
				Escribir "ingrese la cantidad de libras:"
				Leer cantidad
				resultado<- cantidad*0.453592 
				Escribir cantidad, "libras equivales a" , resultado, kilometros; 
				
			4:
				Escribir "ingrese la cantidad de litros:"
				Leer cantidad
				resultado<- cantidad * (0,2641727) 
				Escribir cantidad, "litros equivales a" , resultado, galones; 
				
			5: 
				Escribir "saliendo de la conversion de unidades" 
				continuar<-0 
				
			De Otro Modo:
				Escribir "opcion invalida, intente de nuevo"
			
		FinSegun
		
		si continuar=1 Entonces
			Escribir "desea realizar otra conversion? 1(si) 2(no)"
			Leer continuar
			
		FinSi
		
	FinMientras

	Escribir "Gracias por utilizar convertidor de unidades"
FinAlgoritmo
