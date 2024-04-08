//------------------------------------------------------------------------------------------------------
//Desarrollar un programa en PseInt para gestionar una tienda de celulares. Dicho programa debe permitir
//a los usuarios realizar las siguientes operaciones:Mostrar todos los modelos de celulares disponibles
//en la tienda, junto con su precio y cantidad en stock.Agregar un nuevo modelo de celular al inventario 
//.Actualizar la cantidad de un modelo de celular en el inventario.Realizar una venta de un modelo de celular
//a un cliente, actualizando la cantidad en stock.Mostrar las ventas realizadas y el total de ingresos hasta el momento.Salir del programa
//Cada modelo de celular debe tener los siguientes atributos:
//Marca
//Modelo
//Precio
//Cantidad en stock
//ID ?nico
//A continuaci?n dejamos las indicaciones a tener en cuenta:
//1. El programa debe almacenar la informaci?n de los modelos de celulares en una estructura de datos como un diccionario o una lista de diccionarios.
		
//2. El programa debe tener una interfaz de usuario simple y f?cil de entender que gu?e al usuario a trav?s de las diferentes opciones.
//Ejemplo de Interfaz de Usuario:

Funcion menu 
	Escribir "Bienvenido a la Tienda de Celulares" 
	Escribir "1. Mostrar modelos disponibles"
	Escribir "2. Agregar un nuevo modelo" 
	Escribir "3. Actualizar cantidad de un modelo" 
	Escribir "4. Realizar una venta"
	Escribir "5. Mostrar ventas realizadas" 
	Escribir "6. Salir"
	Escribir "Seleccione una opcion: "
	
FinFuncion

Algoritmo Ejercicio1_HenaoLuis
	
	menu
	Leer opc
	
	Dimension modelos[100]
	Dimension marca[100]
	Dimension precio[100]
	Dimension cantidadStock[100]
	Dimension idUnico[100]
	Dimension modeloVenta[100]
	Dimension marcaVenta[100]
	Dimension precioVenta[100]
	Dimension cantidadVenta[100]
	Dimension idUnicoVenta[100]
	Dimension intentoCompra[100]
	modelos[0]="Iphone 11"
	marca[0]="Apple"
	precio[0]=2000000
	cantidadStock[0]=5
	idUnico[0]=1235689292
	modelos[1]="Iphone 12"
	marca[1]="Apple"
	precio[1]=2500000
	cantidadStock[1]=7
	idUnico[1]=15236848
	modelos[2]="Iphone 13"
	marca[2]="Apple"
	precio[2]=3000000
	cantidadStock[2]=10
	idUnico[2]=1568424684654
	bool=Verdadero
	
	
	
	Mientras bool=Verdadero Hacer
		c=0
		Para i<-0 Hasta 99 Hacer //este es un contador para que cada vez que en el stock haya 1 o mas de 1 sume 1 al contador y asi saber cuantos modelos hay
			
			si cantidadStock[i]>=1 Entonces
				c=c+1
			FinSi
		FinPara
		
		segun opc Hacer
			1:
				Limpiar Pantalla
				Escribir "Modelo --- Marca --- Precio --- Cantidad en stock --- ID unico"
				d=c-1 //es el contador hecho anteriormente menos uno para usarlo en los bucles que empiezan desde 0
				para a=0 Hasta d Hacer//muestra todos los modelos, marcas, precios, cantidad en stock e id unico que hayan en todos los arreglos hasta el contador hecho anteriormente 
					Escribir modelos[a] " --- " marca[a] " --- " precio[a] " --- " cantidadStock[a] " --- " idUnico[a]
				FinPara
				
				Escribir "¿Quieres volver al menu anterior si/no?" //esto es por si dicen que si y quieren volver al menu anterior empuece de nuevo todo el segun
				Leer quieres
				si	quieres="si" Entonces
					Limpiar Pantalla
					menu
					Leer opc
				SiNo
					bool=falso
				FinSi
				
			2:
				Limpiar Pantalla
				d=c-1
				Escribir "Nombre del modelo:" //aca guarda el nuevo modelo con su marca, precio, cantidad en stock e id unico en el arreglo que va despues de la cantidad que ya tenia anteriormente
				Leer modelos[d+1]
				Escribir "Marca del modelo:"
				Leer marca[d+1]
				Escribir "Precio del modelo:"
				Leer precio[d+1]
				Escribir "Cantidad del modelo:"
				Leer cantidadStock[d+1]
				Escribir "ID unico del modelo"
				Leer idUnico[d+1]
				
				Escribir "¿Quieres volver al menu anterior si/no?"//esto es por si dicen que si y quieren volver al menu anterior empuece de nuevo todo el segun
				Leer quieres
				si	quieres="si" Entonces
					Limpiar Pantalla
					menu
					Leer opc
				SiNo
					bool=falso
				FinSi
			3:
				Limpiar Pantalla
				Escribir "modelos"
				Escribir "Modelo --- Marca --- Precio --- Cantidad en stock --- ID unico"
				d=c-1
				para a=0 Hasta d Hacer//muestra todos los modelos, marcas, precios, cantidad en stock e id unico que hayan en todos los arreglos hasta el contador hecho anteriormente mas los que agregaron en la opcion 2 
					Escribir modelos[a] " --- " marca[a] " --- " precio[a] " --- " cantidadStock[a] " --- " idUnico[a]
				FinPara
				Escribir "¿De que modelo quieres actualizar la cantidad" //pregunta el modelo del que quiere actualizar la cantidad
				Leer modeloAc
				d=c-1
				Para a<-0 Hasta d Hacer
					si modelos[a]=modeloAc Entonces //compara todos los modelos que hay con el modelo ingresado y si alguno es igual pregunta la cantidad que hay ahora 
						Escribir "¿Que cantidad de ese modelo hay ahora?"
						Leer cantidadStock[a] //remplaza la cantidad antigua por la que acabo de ingresar el usuario
					FinSi
				FinPara
				Escribir "¿Quieres volver al menu anterior si/no?"//esto es por si dicen que si y quieren volver al menu anterior empuece de nuevo todo el segun
				Leer quieres
				si	quieres="si" Entonces
					Limpiar Pantalla
					menu
					Leer opc
				SiNo
					bool=falso
				FinSi
			4:
				Limpiar Pantalla
				Escribir "Modelos disponibles:"
				Escribir "Modelo --- Marca --- Precio --- Cantidad en stock --- ID unico"
				d=c-1
				para a=0 Hasta d Hacer//muestra todos los modelos, marcas, precios, cantidad en stock e id unico que hayan en todos los arreglos hasta el contador hecho anteriormente mas los que agregaron en la opcion 2 
					Escribir modelos[a] " --- " marca[a] " --- " precio[a] " --- " cantidadStock[a] " --- " idUnico[a]
				FinPara
				Escribir "¿Que modelo deseas vender?"
				Leer modeloCompra
				Escribir "¿Cuantos deseas llevar?"
				Leer cantidadCompra
				
				Para b<-0 Hasta d Hacer
					
					si modelos[b]=modeloCompra  Entonces //mira cual de los modelos es igual al modelo ingresado por el usuario y si uno es igual hace lo siguiente
						si cantidadCompra> cantidadStock[b] Entonces //si la cantidad ingresada por el usuario es mayor a la que esta en stock le dice que no hay esa cantidad
							Escribir "No tenemos esa cantidad de ese modelo"
							cantidadStock[b]=cantidadStock[b]+cantidadCompra //le suma la cantidad ingresada por el usuario a la cantidad en stock para posteriormente restar esa cantidad
							ar=ar+x //este es un contador para saber cuantos intentos de venta fallidos hay y x es el contador para saber cuantas ventas exitosas hay
							intentoCompra[ar]="Intento de compra fallido"
						FinSi
						cantidadStock[b]=cantidadStock[b]-cantidadCompra //aca se le resta la cantidad de venta hecha por el usuario y si la compra habia sido fallida 
						//anteriormente se le habia sumado la misma cantidad para que al restarle quedara la misma cantidad que habia en un principio en stock 
						x=x+1 //este es un contador para saber cuantos intentos de compra hay 
						modeloVenta[x-1]=modelos[b] //aca se guardan las compras hechas y se guardan en la posicion del contador
						marcaVenta[x-1]=marca[b]
						precioVenta[x-1]=precio[b]
						cantidadVenta[x-1]=cantidadCompra
						idUnicoVenta[x-1]=idUnico[b]
					FinSi
				FinPara
				
				Escribir "¿Quieres volver al menu anterior si/no?"//esto es por si dicen que si y quieren volver al menu anterior empuece de nuevo todo el segun
				Leer quieres
				si	quieres="si" Entonces
					Limpiar Pantalla
					menu
					Leer opc
				SiNo
					bool=falso
				FinSi
				
			5:
				Escribir "Ventas realizadas"
				Escribir "Modelo --- Marca --- Precio --- Cantidad en stock --- ID unico"
			
				para a=0 Hasta x-1 Hacer //se muestran las compras hechas que ya se vio anteriormente como se guardaban y ademas de eso muestra si la compra fue fallida 
					Escribir modeloVenta[a] " --- " marcaVenta[a] " --- " precioVenta[a] " --- " cantidadVenta[a] " --- " idUnicoVenta[a] " " intentoCompra[a]
				FinPara
				
				Escribir "¿Quieres volver al menu anterior si/no?"//esto es por si dicen que si y quieren volver al menu anterior empuece de nuevo todo el segun
				Leer quieres
				si	quieres="si" Entonces
					Limpiar Pantalla
					menu
					Leer opc
				SiNo
					bool=falso
				FinSi
				
				
			6:
				Limpiar Pantalla
				Escribir "Gracias por usar el programa"
				bool=Falso
				
				
		FinSegun
	FinMientras
	
FinAlgoritmo
