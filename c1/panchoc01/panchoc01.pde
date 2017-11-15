// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital -  Expresión Digital II
// Francisco Barría

/*Programa inspirado en el atardecer en los 70. Se podra apreciar un
un qué un qué??*/
//No hay decripción general de lo que el programa hará


/*CONTROLES
UP - Aumenta magnitud de la ola.
Down - Disminuye magnitud de la ola.
Right - Aumenta velocidad de la ola.
Left - Disminuye velocidad de la ola.

P - Imprime codigo.
MOUSE = GENERADORES DE OLA.
*/

/*Programa inspirado en el atardecer en los 70. Se podrá apreciar una ola de líneas blancas,
un cielo naranjo, y un mar de puntas azules hasta la ola blanca. Adicionalmente se puede controlar
las olas para generar una noche o un atardecer con el mouse.
*/


import processing.pdf.*;

Wave w;
boolean record;

void setup() {
  size(500, 800);
  w = new Wave();
  record = false;
  smooth(8);
}

void draw() {
  background(220, 0, 126);

  if (record) {
    beginRecord(PDF, "frame-####.pdf");
  }

  translate(width/2, height/2); // translate 0,0 to center
  w.display();

  if (record) {
    endRecord();
    record = false;
  }
}


void mousePressed() {
  w.mouse_p();
}
void mouseDragged() {
  w.mouse_d();
}
void keyPressed() {
  w.teclas();

  if (key == 'p' || key == 'P') {
    record = true;
  }
}
