/*Joaquín Domínguez - Expresión Digital II - s11e00*/
import processing.pdf.*;
Joaquin[]n = new Joaquin [1];
boolean print = false;
boolean t = false;
void setup() {
  size(800, 800);
  for (int i = 0; i < n.length; i++) {
    n[i] = new Joaquin(400, 400);
  }
}
void draw() {
  if (print) {
    beginRecord(PDF, "nombre_del_archivo.pdf");
    background(0);
  }
  for (int i = 0; i < n.length; i++) {
    fill(255, 120);
    rect(0, 0, width, height);
    n[i].pokebola();
    if (t) {
      n[i].onda(20, frameCount*.1);
    }
  }
  if (print) {
    endRecord();
    print=false;
  }
  println(frameRate);
}
void keyPressed() {
  if (key == 't') {
    t = !t;
  }

  if (key == 'p') {
    print = !print;
  }
}