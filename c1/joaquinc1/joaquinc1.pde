/*Joaquín Domínguez - Expresión Digital II - c1*/

//No hay decripción general de lo que el programa hará

import processing.pdf.*; //se importa el exportador de pdf
Joaquin[]n = new Joaquin [100]; //Se crea un espacio en la memoria para Joaquin
boolean print = false; //Se declaran las variables
boolean t = false;
int ond, c;
int[] colores = new int[4];
float ang;

void setup() {
  background(#E0F1FF); //Se asignan los valores
  size(800, 517);
  ond = 2;
  ang = .01;
  c = color(#2C9EFF, 30);
  for (int i = 0; i < n.length; i++) { //Se crean las esferas
    n[i] = new Joaquin(0, i*10);
  beginRecord(PDF, "joaquinc1.pdf"); //se comienza la grabación de las figuras
  }
}
void draw() {
  for (int i = 0; i < n.length; i++) { //Dibujo de las esferas
    n[i].pelota();
    n[i].onda(ond, frameCount*ang); //Cambio en el movimiento
  }

  if (print) {
    endRecord();
    print=false;
  }

}
void keyPressed() { //Se declaran las teclas a utilizar y las alteraciones que provocan

  if (key == CODED) {
    if ( keyCode == UP) {
      ond = 2;
      ang = .05;
    }
    if ( keyCode == RIGHT) {
      ond = 2;
      ang = .01;
    }
    if ( keyCode == DOWN) {
      ond = 0;
      ang = .1;
    }
    if ( keyCode == LEFT) {
      ond = 1;
      ang = .1;
    }
  }
  if (key == 'p') {
    print = !print;
  }
}
void mousePressed() {
  //si se hace click ocurre esto
  background(#E0F1FF);
}
