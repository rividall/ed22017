/*
 Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
 - Expresión Digital II - 13/09/17
 c0
 Joaquín Domínguez

 Descripción: Una grilla manipulable con el mouse hecha a partir de elipses que
 cambian su tamaño y que al hacer click estas cambian de color y el tamaño se
 altera radicalmente.

 */

int x, h, t; //Declarar variables x, h, t
color c1;//Declarar variable de color
int margen; //Declarar variable margen
void setup() { //Inicio del ámbito del sistema
  size(400, 400); // Tamaño del canvas 400 x 400
  margen = 50; // Margen es igual a 50
  x = 10; // x es igual a 10
  h = height; // h es igual al alto del canvas
  c1 = color(#F2D333); //c1 es igual a #F2D333
  noCursor(); //No habrá cursor en el programa
}//Fin del ámbito del sistema

void draw() { //Inicio del ámbito de dibujo

  background(255); // Se dibujará un fondo blanco
  margen = mouseY; // margen es igual al movimiento vertical del mouse
  for (int i = 40; i <= h - 30; i += 40) { //loop que crea elipses horizontalmente

    for (int j = margen; j <= h - 30; j += 40) { //loop que crea elipses verticalmente

      fill(c1, j); // Relleno de c1 con la transparencia de j
      ellipse(i, j, x, x); //elipse en la posición que determinen los loops y de 10 x 10
    }//Fin del loop horizontal
  }//Fin del loop vertical

  if (x == 0){ // si x == 0 es verdadero la función se cumple
    t = 0; // t vale 0
  }
  if (x == 10) { // si x == 10 es verdadero la función se cumple
    t += 1; // a t se le suma 1
  }
  if (x == 20) { // so x == 20 es verdadero la función se cumple
    t += -1; // a t se le resta 1
  }

  x += t; // a x sumarle t cada frame
} //Fin del ambito de dibujo

void mousePressed() { // inicio del ambito de hacer click
  if (c1 == color(#B361F7)) { // si c1 == color(#B361F7) la función se cumple
    x = 100; // x ahora vale 100
    c1 = color(#F2D333); // c1 ahora es igual a #F2D333
  } else { // Si lo anterior no se cumple
    c1 = color(#B361F7); //c1 es igual a #B361F7
    x = 20;// x vale 20
  }
}// Fin del ambito de hacer click

void keyPressed() { //Inicio del ambito de presión de botón
  background(255); //Se dibuja un fondo blanco
  if (key == 's') { // Si se presiona la tecla "s" la función se cumple
    println("s"); //Se escribe una línea que diga "s"
    noStroke();//Se deshacen los strokes
  }
  if (key == 'S') { // Si se presiona la tecla "S" la función se cumple
    println("S"); //Se escribe una línea que diga "S"
    stroke(1); // Las figuras ahora tienen stroke de 1px
  }
} // Fin del ambito de presión de botón
