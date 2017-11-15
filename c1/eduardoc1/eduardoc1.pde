// Universidad del Desarrollo.
// Diseño Digital.
// Expresión Digital II.
// Certamen_01.

// Descripción: En este programa se pueden visualizar ondas constantes, tal como se ven cuando una gota cae sobre el agua. Basándose en el movimiento del agua, también
// se puede hacer un paralelo con un remolino que es formado por las líneas que giran alrededor de las ondas.



import processing.pdf.*;

Edo []e = new Edo [1]; // si es un objeto no es necesario hacer una lista

boolean print = false;

void setup() {
  // noCursor();
  size(650, 500);
  smooth();

  for (int i=0; i< e.length; i++) {
    e[i] = new Edo();
  }
}


void draw() {

  if (print) {
    beginRecord(PDF, "Eduardoc01.pdf");
    background(20);
  }


  fill(0, 25);                    //Color fondo.
  noStroke();                     //El rectángulo de fondo no tiene bordes.
  rect(0, 0, width, height);      //El rectángulo de fondo ocupa el tamaño del canvas.

  for (int i=0; i <e.length; i++) {
 // e[i].ptos();  Sin Uso
    e[i].ondas();   // Se dibujan las elipses.
    e[i].centro();  // Se dibujan los arcos.
    e[i].lineas();  // Se dibujan las líneas.
    e[i].keyPressed(); // Función de tecla.
    e[i].click();     // Función de mouse.
  }
  if (print) {
    endRecord();
    print=false;
  }
  // println(frameRate);
}
void keyPressed() {

  if (key == 'p') {
    print = !print;
  }
}
