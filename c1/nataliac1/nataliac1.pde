import processing.pdf.*;

// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Natalia Malsch Coelho
// Certamen 1
/*
 El encargo es un programa el cual se modifica sin recibir un input pero también se
 logra un comportamiento diferente a través del mouse y del teclado al rebicir un input.
 Se elige un elemento el cual en este caso es el agua, y que este tenga comportamientos
 modificables. Mientras el programa no recibe un input las ellipses dan la sensación de
 lluvia, pero cuando si recibe un input este tiene dos comportamientos distintos. El
 primero es al mover el mouse en el eje X de esta forma se altera la velocidad de la
 lluia. El segundo input que recibe es al presionar la tecla espacio donde vemos que las
 gotas de lluvia comienzan a caer formando espirales. Todo esto se ve con una estela
 para demostrar de una mejor forma como la lluvia cae y puede alterarse con un viento de
 forma abstracta.*/

//Variables
Lluvia[] l = new Lluvia[400];

boolean guardarpdf;
boolean giro;
//Fin variables

//Inicialización de seteo
void setup() {
  size(800, 517);
  guardarpdf = false;

  for (int i = 0; i < l.length; i++) {
    l[i] = new Lluvia(2);
  }

  giro = true;
}
//Fin de seteo

//Uso constante
void draw() {
  if (guardarpdf) {
    beginRecord(PDF, "nataliac1.pdf");
  }

  for (int i = 0; i < l.length; i++) {
    l[i].lluvmov();
  }

  noStroke();
  fill(#E0E0E0, 8);
  rect(0, 0, width, height);

  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}
//Fin uso constante

//Ámbito de teclado
void keyPressed() {
  if (key == 'q') {
    guardarpdf = !guardarpdf;
  }

  if (key == ' ') {
    giro = !giro;
  }
}
//Fin ámbito teclado
