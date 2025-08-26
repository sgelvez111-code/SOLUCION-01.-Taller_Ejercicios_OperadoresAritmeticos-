Algoritmo CarritoDeCompras5
	Definir nombre1, nombre2, nombre3, nombre4 Como Cadena
	Definir precio1, precio2, precio3, precio4 Como Real
	Definir stock1, stock2, stock3, stock4 Como Entero
	Definir opcionn, cantidad, metodoPago Como Entero
	Definir subtotal, iva, totalFinal, descuento Como Real
	Definir seguirCompra Como Caracter
	
	
	Escribir "Ingrese el nombre del producto 1: "
	Leer nombre1
	Escribir "Ingrese el precio del producto 1: "
	Leer precio1
	Escribir "Ingrese la cantidad disponible en stock del producto 1: "
	Leer stock1
	
	Escribir "Ingrese el nombre del producto 2: "
	Leer nombre2
	Escribir "Ingrese el precio del producto 2: "
	Leer precio2
	Escribir "Ingrese la cantidad disponible en stock del producto 2: "
	Leer stock2
	
	Escribir "Ingrese el nombre del producto 3: "
	Leer nombre3
	Escribir "Ingrese el precio del producto 3: "
	Leer precio3
	Escribir "Ingrese la cantidad disponible en stock del producto 3: "
	Leer stock3
	
	Escribir "Ingrese el nombre del producto 4: "
	Leer nombre4
	Escribir "Ingrese el precio del producto 4: "
	Leer precio4
	Escribir "Ingrese la cantidad disponible en stock del producto 4: "
	Leer stock4
	
	// Ciclo de compras
	Repetir
		subtotal <- 0
		opcionn <- 0
		
		Repetir
			Escribir ""
			Escribir "MENÚ DE PRODUCTOS"
			Escribir ""
			Escribir "1. ", nombre1, " | Precio: $", precio1, " | Stock: ", stock1
			Escribir "2. ", nombre2, " | Precio: $", precio2, " | Stock: ", stock2
			Escribir "3. ", nombre3, " | Precio: $", precio3, " | Stock: ", stock3
			Escribir "4. ", nombre4, " | Precio: $", precio4, " | Stock: ", stock4
			Escribir "5. Finalizar compra actual"
			Escribir ""
			
			Escribir "Seleccione un producto (1-4) o 5 para terminar compra: "
			Leer opcionn
			
			Segun opcionn Hacer
				1:
					Escribir "Ingrese la cantidad que desea comprar de ", nombre1, ": "
					Leer cantidad
					Si cantidad > stock1 Entonces
						Escribir " No puede comprar más de lo disponible en stock."
					Sino
						subtotal <- subtotal + (precio1 * cantidad)
						stock1 <- stock1 - cantidad
						Escribir " Producto agregado al carrito."
					FinSi
				2:
					Escribir "Ingrese la cantidad que desea comprar de ", nombre2, ": "
					Leer cantidad
					Si cantidad > stock2 Entonces
						Escribir " No puede comprar más de lo disponible en stock."
					Sino
						subtotal <- subtotal + (precio2 * cantidad)
						stock2 <- stock2 - cantidad
						Escribir " Producto agregado al carrito."
					FinSi
				3:
					Escribir "Ingrese la cantidad que desea comprar de ", nombre3, ": "
					Leer cantidad
					Si cantidad > stock3 Entonces
						Escribir " No puede comprar más de lo disponible en stock."
					Sino
						subtotal <- subtotal + (precio3 * cantidad)
						stock3 <- stock3 - cantidad
						Escribir " Producto agregado al carrito."
					FinSi
				4:
					Escribir "Ingrese la cantidad que desea comprar de ", nombre4, ": "
					Leer cantidad
					Si cantidad > stock4 Entonces
						Escribir " No puede comprar más de lo disponible en stock."
					Sino
						subtotal <- subtotal + (precio4 * cantidad)
						stock4 <- stock4 - cantidad
						Escribir " Producto agregado al carrito."
					FinSi
			FinSegun
		Hasta Que opcionn = 5
		
		// Si el usuario agregó algo al carrito
		Si subtotal > 0 Entonces
			iva <- subtotal * 0.19
			totalFinal <- subtotal + iva
			
			Escribir ""
			Escribir "Subtotal: $", subtotal
			Escribir "IVA (19%): $", iva
			Escribir "Total con IVA: $", totalFinal
			Escribir ""
			
			// Selección de método de pago
			Escribir "Seleccione método de pago:"
			Escribir "1. Efectivo (10% descuento)"
			Escribir "2. Tarjeta (5% descuento)"
			Escribir "3. Transferencia (sin descuento)"
			Leer metodoPago
			
			Segun metodoPago Hacer
				1:
					descuento <- totalFinal * 0.10
				2:
					descuento <- totalFinal * 0.05
				3:
					descuento <- 0
			FinSegun
			
			totalFinal <- totalFinal - descuento
			Escribir "Descuento aplicado: $", descuento
			Escribir "Monto final a pagar: $", totalFinal
			Escribir ""
		SiNo
			Escribir " No seleccionó productos en esta compra."
		FinSi
		
		Escribir "¿Desea realizar otra compra? (Si/No): "
		Leer seguirCompra
	Hasta Que seguirCompra = "No" 
	
	Escribir "Gracias por su compra."

	
FinAlgoritmo
