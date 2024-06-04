Proceso sin_titulo
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
			Definir x,n,a,error, c Como Entero;
			Definir letra, secreta, vector1, vector2 Como Caracter;
			
			Escribir "JUEGO DEL AHORCADO: empecemos...";
			Escribir "";
			Escribir "Ingresa la palabra secreta";
			Leer secreta;
			n <- Longitud(secreta);
			Limpiar Pantalla;
			//Me servira para definir los tamaños de los vectores
			Dimension vector1[23],vector2[23];
			
			Para x <- 0 Hasta n -1 Con Paso 1 Hacer
				vector1(x) <- Subcadena(secreta,x,x);	//vamos a sacar el primer caracter de la palabra secreta
				vector2(x) <- "_";						//este vector es que en cada ciclo, se muestren las rayitas
			FinPara
			
			a <- 0;
			c <- 0;
			//Aqui le doy las vidas que pueden usar para el juego
			Mientras a < 5 Hacer
				//Para x <- 1 Hasta n Con Paso 1 Hacer
				Para x <- 0 Hasta n - 1 Con Paso 1 Hacer
					//Aqui mostramos los elementos del vector2
					Escribir vector2(x) Sin Saltar;
				FinPara
				Escribir "";
				//a <- a + 1;		//se pasa el incremento mas abajo
				
				//PROBAR HASTA ACA SEGÚN EL MINUTO 5:44
				
				Escribir "Ingresa una letra";
				Leer letra;
				error <- 1;
				
				Para x <- 0 Hasta n -1 Con Paso 1 Hacer
					//Evaluo si la letra que ingreso el usuario es igual al vector1 en la posicion x
					Si letra == vector1(x) Entonces
						Si vector2(x) == "_" Entonces
							vector2(x) <- letra;
							c <- c + 1;
							error <- 0;
						FinSi
					FinSi
				FinPara
				//Cuando el vector 2 este lleno quiere decir que se adivino la palabra
				Si c == n Entonces
					Escribir "Felicidades has ganado el juego";
					Escribir "";
					Escribir " __     ______  _    _  __          _______ _   _  _____  __          ______  _    _ _   _  ";
					Escribir " \ \   / / __ \| |  | | \ \        / /_   _| \ | |/ ____| \ \        / / __ \| |  | | \ | |";
					Escribir "  \ \_/ / |  | | |  | |  \ \  /\  / /  | | |  \| | |  __   \ \  /\  / / |  | | |  | |  \| |";
					Escribir "   \   /| |  | | |  | |   \ \/  \/ /   | | | . ` | | |_ |   \ \/  \/ /| |  | | |  | | . ` |";
					Escribir "    | | | |__| | |__| |    \  /\  /   _| |_| |\  | |__| |    \  /\  / | |__| | |__| | |\  |";
					Escribir "    |_|  \____/ \____/      \/  \/   |_____|_| \_|\_____|     \/  \/   \____/ \____/|_| \_|";
					Escribir "";
					a <- 6;
					
				SiNo
					Si error == 1 Entonces
						a <- a + 1;
					FinSi
					//Dibujamos el ahorcado
					Si a == 1 Entonces
						Escribir "+-----+              ";
						Escribir "|     |              ";
						Escribir "|     				";
						Escribir "|    					";
						Escribir "|    					";
						Escribir "|                    	";
						Escribir "=========            	";
						Escribir "Te quedan 4 intentos";
					FinSi
					Si a == 2 Entonces
						Escribir "+-----+               ";
						Escribir "|     |               ";
						Escribir "|     				 ";
						Escribir "|         			 ";
						Escribir "|    / \    			 ";
						Escribir "|                     ";
						Escribir "=========             ";
						Escribir "Te quedan 3 intentos";
					FinSi
					Si a == 3 Entonces
						Escribir "+-----+               ";
						Escribir "|     |               ";
						Escribir "|     				 ";
						Escribir "|     |    			 ";
						Escribir "|    / \    			 ";
						Escribir "|                     ";
						Escribir "=========             ";
						Escribir "Te quedan 2 intentos";
					FinSi
					Si a == 4 Entonces
						Escribir "+-----+               ";
						Escribir "|     |               ";
						Escribir "|     				 ";
						Escribir "|    /|\    			 ";
						Escribir "|    / \     			 ";
						Escribir "|                      ";
						Escribir "=========              ";
						Escribir "Te queda 1 intento";
					FinSi
					Si a == 5 Entonces
						Escribir "+-----+               ";
						Escribir "|     |                ";
						Escribir "|     O      ============== ";
						Escribir "|    /|\     ESTAS AHORCADO ";
						Escribir "|    / \     ============== ";
						Escribir "|                       ";
						Escribir "=========              ";
						//GAME OVER
						Escribir "   _____          __  __ ______    ______      ________ _____  ";
						Escribir "  / ____|   /\   |  \/  |  ____|  / __ \ \    / /  ____|  __ \ ";
						Escribir " | |  __   /  \  | \  / | |__    | |  | \ \  / /| |__  | |__) |";
						Escribir " | | |_ | / /\ \ | |\/| |  __|   | |  | |\ \/ / |  __| |  _  / ";
						Escribir " | |__| |/ ____ \| |  | | |____  | |__| | \  /  | |____| | \ \ ";
						Escribir "  \_____/_/    \_\_|  |_|______|  \____/   \/   |______|_|  \_\";
						Escribir ""; 
					FinSi
				FinSi
			FinMientras
		2:
			Escribir "Acá estaría el ta te ti";
		3:
			Escribir "Adios";
	FinSegun
FinAlgoritmo