Proceso main
    Definir opc Como Entero;
    opc <- 0;
    Mientras opc <> 1 Y opc <> 2 Y opc <> 3 Hacer
        Escribir "Elija una opción:";
        Escribir "1) Jugar al ahorcado"; 
        Escribir "2) Jugar al ta te ti";
        Escribir "3) Salir del menú";
        Leer opc;
		Limpiar Pantalla;
        Si opc <> 1 Y opc <> 2 Y opc <> 3 Entonces
            Escribir "Opción no válida. Inténtalo de nuevo.";
        FinSi
    FinMientras
	
    Segun opc Hacer
		1:
			Definir x, n, a, error, c Como entero;
			Definir letra, secreta, vector1, vector2 Como Caracter;
			Escribir "Ingresa la palabra secreta";
			leer secreta;
			n <- Longitud(secreta);
			Limpiar Pantalla;
			Escribir "Adivina la palabra:";
			Dimension vector1[99], vector2[99];
			para x <- 0 hasta n con paso 1 hacer; // Cambiar el 1 por el 0 // n -1 NO iniciliza el vector1
				vector1[x] <- Subcadena(secreta,x,x);
				vector2[x] <- "_";
			FinPara
			a <- 0;
			c <- 0; // C NO ESTABA DEFINIDA
			Mientras a < 5 Hacer
				para x <- 0 Hasta n - 1 Con Paso 1 Hacer; // Cambiar 1 por 0 // n - 1 soluciona el _ adicional al final de la palabra !! Parece ser esta linea
					Escribir vector2[x] Sin Saltar;
				FinPara
				Escribir "";
				Escribir "Ingresa una letra";
				leer letra;
				error <- 1;
				para x <- 0 Hasta n Con Paso 1 Hacer; // Cambiar 1 por 0 // n - 1 no cambia nada
					si letra == vector1[x] Entonces
						si vector2[x] == "_" Entonces
							vector2[x] <- letra;
							error <- 0;
							c <- c + 1;
						FinSi
					FinSi			
				FinPara
				
				si c == n Entonces
					Escribir "Felicidades has ganado el juego";
					a <- 6;
				SiNo
					si error == 1 Entonces
						a <- a + 1;
					FinSi		
					
					si a == 1 Entonces
						Escribir ".";
						Escribir ".";
						Escribir ".";
						Escribir ".";
						Escribir "Te quedan 4 intentos";
					FinSi
					si a == 2 Entonces
						Escribir ".....";
						Escribir ".";
						Escribir ".";
						Escribir ".";
						Escribir "Te quedan 3 intentos";
					FinSi
					si a == 3 Entonces
						Escribir ".....";
						Escribir ".   o";
						Escribir ".";
						Escribir ".";
						Escribir "Te quedan 2 intentos";
					FinSi
					si a == 4 Entonces
						Escribir ".....";
						Escribir ".   o";
						Escribir ".   ^";
						Escribir ".";
						Escribir "Te queda 1 intento";
					FinSi
					si a == 5 Entonces
						Escribir ".....";
						Escribir ".   o";
						Escribir ".   ^";
						Escribir ".   ^";
						Escribir "AHORCADO";
					FinSi
				FinSi		
			FinMientras
		2:
			Definir x, jugador, n Como Entero; // Agregué la variable 'n'
			Definir vector Como Caracter;
			Dimension vector[10];  // Cambiar de 9 a 10
			
			Para x <- 0 Hasta 9 Con Paso 1 Hacer // Cambiar de 8 a 9
				vector[x] <- " "; 
			FinPara
			
			x <- 1;
			jugador <- azar(2) + 1;
			
			Mientras x <= 9 Hacer // Cambiar de 8 a 9
				Escribir "Ingresa una posición jugador", jugador;
				Escribir "0,1,2","         ", vector[0],",",vector[1],",",vector[2]; 
				Escribir "3,4,5","         ", vector[3],",",vector[4],",",vector[5]; 
				Escribir "6,7,8","         ", vector[6],",",vector[7],",",vector[8]; 
				Leer n;
				Si n < 9 Entonces // Cambiar de 10 a 9
					Si jugador == 1 Entonces
						Si vector(n) == " " Entonces 
							vector(n) <- "X";
							jugador <- 2;
							si vector(0) == "X" y vector(1) == "X" y vector(2) == "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9; // Cambiar todos los 8 por 9
							FinSi
							si vector(3) == "X" y vector(4) == "X" y vector(5) == "X" Entonces
								Escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(6) == "X" y vector(7) == "X" y vector(8) == "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(0) == "X" y vector(3) == "X" y vector(6)== "X"Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(1) == "X" y vector(4) == "X" y vector(7)== "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(2) == "X" y vector(5) == "X" y vector(8)== "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(0) == "X" y vector(4) == "X" y vector(8)== "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
							si vector(2) == "X" y vector(4) == "X" y vector(6)== "X" Entonces
								escribir "El jugador 1 ha ganado";
								x <- 9;
							FinSi
						FinSi
					SiNo
						Si vector(n) == " " Entonces 
							vector(n) <- "O";
							jugador <- 1;
							si vector(0) == "O" y vector(1) == "O" y vector(2) == "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(3) == "O" y vector(4) == "O" y vector(5) == "O" Entonces
								Escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(6) == "O" y vector(7) == "O" y vector(8) == "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(0) == "O" y vector(3) == "O" y vector(6)== "O"Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(1) == "O" y vector(4) == "O" y vector(7)== "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(2) == "O" y vector(5) == "O" y vector(8)== "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(0) == "O" y vector(4) == "O" y vector(8)== "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
							si vector(2) == "O" y vector(4) == "O" y vector(6)== "O" Entonces
								escribir "El jugador 2 ha ganado";
								x <- 9;
							FinSi
						SiNo
							Escribir "Esa posición está ocupada";
						FinSi
					FinSi
				SiNo
					Escribir "Posición incorrecta";
				FinSi
				
				x <- x + 1;
			FinMientras
			Escribir "0,1,2","         ", vector[0],",",vector[1],",",vector[2]; 
			Escribir "3,4,5","         ", vector[3],",",vector[4],",",vector[5]; 
			Escribir "6,7,8","         ", vector[6],",",vector[7],",",vector[8]; 
		3:
			Escribir "Adios";
	FinSegun
FinAlgoritmo