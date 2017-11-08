import processing.pdf.*;

Linea[] l = new Linea [3];
boolean b, guardarpdf; 

void setup() {
  size(500, 500);
  for (int i = 0; i < l.length; i++) {
    l[i] = new Linea(random(10,50));
  } 
  b = true;
  guardarpdf = false;
}
void draw() {
  if (guardarpdf) {
    beginRecord(PDF, "masquellars11e00.pdf");
    background (#030303);
  }


  for (int i = 0; i <l.length; i++) {
    l[i].lineal();
    if (b) {
      l[i].movimiento();
    }
    if (!b) {
      l[i].curva(10, frameCount);
    }
  }
  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}


void keyPressed() {
  if (key == ' ') {
    b = !b;
  }
  if (key == 'p') {
    guardarpdf = !guardarpdf;
  }
}