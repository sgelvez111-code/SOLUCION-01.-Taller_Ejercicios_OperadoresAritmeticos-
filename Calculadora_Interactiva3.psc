Algoritmo Calculadora_Interactiva3
    Definir dato_opcion, continuar Como Entero
    Definir num1, num2, resultado Como Real

	continuar<-1
	Mientras continuar=1 Hacer
		Escribir "1. sumar"
		Escribir "2. resta"
		Escribir "3. multiplicar"
		Escribir "4. dividir"
		Escribir "5. salir"
		Leer dato_opcion
		
		Segun dato_opcion Hacer
			1: 
				Escribir "ingrese el primer numero"
				Leer num1
				Escribir "ingrese el segundo numero"
				Leer num2
				
				resultado<-num1 + num2  
			
				
			2: 
				Escribir "ingrese el primer numero"
				Leer num1
				Escribir "ingrese el segundo numero"
				leer num2
				
				resultado<-num1 - num2 
			
			3: 
				Escribir "ingrese el primer numero"
				leer num1
				Escribir "ingrese el segundo numero"
				leer num2
				resultado<-num1*num2
				
				
			4:
				Escribir "ingrese el primer numero"
				leer num1
				Escribir "ingrese el segundo numero"
				Leer num2
				
				
				
				si num2 =0 Entonces
					Escribir "error, este numero no se puede dividir entre cero"
					
				SiNo
					resultado<-num1/num2
					Escribir "resultado",resultado;
					
				FinSi
				
			5: 
				Escribir "saliendo de la calculadora"
				continuar<-0 
				
			De Otro Modo:
				Escribir "opcion valida" 
		FinSegun
		
		Escribir "resultado",resultado; 
		
		si opcion >=1 y opcion <=4 Entonces
			si resultado %2=0 Entonces
				Escribir "el resultado es PAR"
				
			SiNo
				Escribir "el resultado es IMPAR"
			FinSi
			
		FinSi
		
		si continuar = 1 Entonces
			Escribir "desea llevar a cabo otra operacion? 1(si) 2(no)"
			
		FinSi
	FinMientras
	
	Escribir "Gracias por utilizar calculadora interactiva" 
	
FinAlgoritmo
