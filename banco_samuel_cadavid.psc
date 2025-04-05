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
	
	
	si opcion = "1" entonces 
		escribir "ingrese cuanto dinero desea enviar?";
		leer dinero_a_enviar;
		
		si dinero_a_enviar > cuenta_1 Entonces
			escribir "error: saldo insuficiente";
			
		sino 
			
			cuenta_1 <- cuenta_1 - dinero_a_enviar;
			
			cuenta_2 <- cuenta_2 + dinero_a_enviar;
			
			escribir " su transaccion fue exitosa";
		FinSi
	FinSi
	
	
	
	si opcion = "2" entonces 
		escribir "ingrese cuanto dinero desea enviar?";
		leer dinero_a_enviar;
		
		
		si dinero_a_enviar > cuenta_2 Entonces
			escribir "error: saldo insuficiente";
			
		sino 
			
			cuenta_2 <- cuenta_2 - dinero_a_enviar;
			cuenta_1 <- cuenta_1 + dinero_a_enviar;
			escribir " su transaccion fue exitosa";
		FinSi
	FinSi
	
	
	
	Borrar Pantalla;
	
	escribir "el saldo de las cuentas es: ";
	escribir "saldo de cuenta 1: ", cuenta_1; 
	escribir "saldo de cuenta 2: ", cuenta_2;
FinAlgoritmo
