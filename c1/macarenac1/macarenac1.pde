// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// Certamen 1
/* El comportamiento de la naturaleza que se escogio fue de ondas,
de muchas ondas. Mediante la tecla "a" el ritmo del movimiento de
las ondas aumenta en su velocidad. Y con un clic en el mouse cambia
al color del fondo. */

import processing.pdf.*; // para importar a pdf
boolean pdf; // declaración boolean para pdf

Ondas[] o = new Ondas[1]; // declaración clase 1
Ondas1[] o1 = new Ondas1[1]; // declaración clase 2
color negro, blanco; // declaración colores
boolean cambio, cambio1, b, n; // declaración interacciones

void setup() {
  size(800, 523);
  noCursor();
  pdf = false; // iniciación variable pdf falsa
  b = true; // iniciación variable b verdadera
  n = true; // iniciación variable n verdadera

  negro = color(#050505); // iniciación variable de color
  blanco = color(#FFFFFF); // iniciación variable de color

  for (int i = 0; i < o.length; i ++) { // iniciación array clase 1
    o[i] = new Ondas();
  }

  for (int i = 0; i < o1.length; i ++) { // iniciación array clase 2
    o1[i] = new Ondas1();
  }
}

void draw() {
  if (pdf) { // se inicia a "grabar" para guardar en pdf
    beginRecord(PDF, "macarenac1.pdf");
  }

  //background(negro);
// fonfo con estela
  fill(negro, 10);
  noStroke();
  rect(0, 0, 800, 523);
// clase 1 (mov derecha)
  for (int i = 0; i < o.length; i ++) {
    o[i].movimiento();
    o[i].figura();
    o[i].onda(10, frameCount * .08);

    if (cambio) { // interacción con keyPressed
      o[i].movimiento();
    }
    if (cambio1) { // interacción con keyPressed
      o[i].onda(10, frameCount * .08);
    }
  }
// clase 2 (mov izquierda)
  for (int i = 0; i < o1.length; i ++) {
    o1[i].movimiento1();
    o1[i].figura1();
    o1[i].onda1(10, frameCount * .08);

    if (cambio) { // interacción con keyPressed
      o1[i].movimiento1();
    }
    if (cambio1) { // interacción con keyPressed
      o1[i].onda1(10, frameCount * .08);
    }
  }
  if (pdf) { // // se termina a "grabar" para guardar en pdf
    endRecord();
    pdf = false;
  }
}

void keyPressed() {
  if (key == 'a') { // si la tecla a se apreta la velocidad cambia
    cambio = !cambio;
    cambio1 = (!cambio1);
  }
  if (key == 'w') { // si la tecla w se apreta se guarda como pdf
    pdf = !pdf;
  }
}

void mousePressed() {
  if (negro == 0) { // si se apreta el mouse los colores cambian
    negro = blanco;
  } else {
    negro = 0;
  }
}
