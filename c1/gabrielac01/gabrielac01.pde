// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// gabrielasc1

/*Se podrá ver aquí dos espirales que representan remolinos de viento, 
 tiene dos strokes diferentes para simular la potencia de estos remolinos.
 Esto se logrará mediante una clase llamada Gabriela, la cual contiene todos 
 los elementos a utilizar*/

import processing.pdf.*;
boolean guardartiff;

Gabriela g;
void setup() {
  size(600, 600);
  guardartiff = false;
  g = new Gabriela();
}

void draw() {
  g.spiral();
  g.keyPressed();

  if (guardartiff) {
    beginRecord(PDF, "gabrielac01.tiff");

    if (guardartiff) {
      endRecord(); //detiene el proceso
      guardartiff = false;
    }
    println(frameCount);
    for (int i = 0; i < 200; i++) { 
      if (frameCount > 600) {
        frameCount = frameCount % 600;
        if (frameCount >= 0 && frameCount < 300) {
        }
      }
    }
    if (frameCount > 300 && frameCount < 600) {
    }
  }
}
void keyPressed() {
  if (key == 's') {
    guardartiff = true;
  saveFrame("gabrielac01.tif"); 

  }
}