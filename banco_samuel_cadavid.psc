Algoritmo banco
	definir cuenta_1 Como Real;
	definir cuenta_2 como real;
	definir dinero_a_enviar como real;
	definir cuenta_madre como real; 
	definir opcion Como caracter;
	
	escribir "cuanto dinero desea destinar para las dos cuentas";
	leer cuenta_madre;
	
	
	cuenta_1 <- cuenta_madre;
	cuenta_2 <- cuenta_madre;
	dinero_a_enviar <- 0;
	
	escribir "saldo de cuenta 1: ", cuenta_1;
	escribir "saldo de cuenta 2: ", cuenta_2;
	
	escribir "desde que cuenta quiere enviar el dinero? (1 o 2): ";
	leer opcion;
	
	//por medio de la funcion si vamos a saber si los datos ingresados
	//cumplen con la condicion dada
	si opcion = "1" entonces 
		escribir "ingrese cuanto dinero desea enviar?";
		leer dinero_a_enviar;
		
		si dinero_a_enviar > cuenta_1 Entonces
			escribir "error: saldo insuficiente";
			
		sino 
			// definimos y damos nuevos valores dependiendo si se cumplen las condiciones 
			cuenta_1 <- cuenta_1 - dinero_a_enviar;
			
			cuenta_2 <- cuenta_2 + dinero_a_enviar;
			
			escribir " su transaccion fue exitosa";
		FinSi
	FinSi
	
	
	//por medio de la funcion si vamos a saber si los datos ingresados
	//cumplen con la condicion dada
	si opcion = "2" entonces 
		escribir "ingrese cuanto dinero desea enviar?";
		leer dinero_a_enviar;
		
		
		si dinero_a_enviar > cuenta_2 Entonces
			escribir "error: saldo insuficiente";
			
		sino 
			// definimos y damos nuevos valores dependiendo si se cumplen las condiciones 
			cuenta_2 <- cuenta_2 - dinero_a_enviar;
			cuenta_1 <- cuenta_1 + dinero_a_enviar;
			escribir " su transaccion fue exitosa";
		FinSi
	FinSi
	
	
	
	Borrar Pantalla;
	// aca limpiando pantalla mostramos los resultados de las transferencias
	escribir "el saldo de las cuentas es: ";
	escribir "saldo de cuenta 1: ", cuenta_1; 
	escribir "saldo de cuenta 2: ", cuenta_2;
FinAlgoritmo
