// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital -  Expresión Digital II
// Francisco Barría
/*Programa inspirado en el atardecer en los 70. Se podra apreciar un
un qué un qué??*/
//No hay decripción general de lo que el programa hará
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
