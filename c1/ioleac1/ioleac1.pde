// no hay descripción general del programa

import processing.pdf.*; //permitir que el codigo guarde pdf
boolean guardar;//boolean para guardar
color naranjo = color(255, 163, 13);
color blanco = color(255);

//DECLARAR

// Gota miGota;//declarar mi clase
Gota [] miGota = new Gota[10];

void setup() {
  size(500, 500);//canvas de tamaño 500 x 500
  smooth();
  guardar = false;//

  //INICIALIZAR
  for (int i = 0; i < miGota.length; i ++) {
    miGota[i] = new Gota(random(width), random(height));//inicializar mi clase en setup
  }

}

void draw() {
  // background(0);
  if (guardar) {//codigo para guardar imagen pdf del codigo
    beginRecord(PDF, "c1ioleas.pdf");
    background(0);
  }
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);//Rectangulo negro con opacidad para
  //provocar estela con el movimiento de las formas

  //LLAMAR
  //miOnda.correr();
  for (Gota o : miGota) {
    o.caer();//Llamar para que llame a la clase
  }

  if (guardar) {
    endRecord();
    guardar = false;
  }
}
void keyPressed() {
  if (key == 'p') {//si se presiona P , se guarda una imagen de pdf
    guardar = !guardar;
  }

  //if (key == 'q') {//cambia color de las ondas a uno random (actualmente no funciona)
   // naranjo = color(random(255), random(255), random(255));
    //blanco = color(random(255), random(255), random(255));
  }
//fin codigo
