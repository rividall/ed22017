// no hay descripción general de lo que el programa realiza

Olas[] papers = new Olas[10];// se llama a una clase y se declara un array de 100 objetos
float x, y, speeda, speedb;
float z = 80;
float r = height - 5;

void setup() {
  size(1020, 660);
  noCursor();
  for (int i = 0; i < papers.length; i++){
    papers[i] = new Olas(random(100));// se da un valor a cada objeto del array
  }
 }

void draw(){
  background(0);
  for (int i=0; i < papers.length; i++){
    papers[i].display();
    papers[i].move();
// se dibuja cada objeto dandole caractirisicas y movimientos determinados en la clase
  }
}
