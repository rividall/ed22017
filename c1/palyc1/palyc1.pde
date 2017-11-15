//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital
//Paulina Descouvieres
//c1

/*
Comportamiento a diseñar : Vuelo.
Al computar el código, se simula el comportamiento de vuelo en el universo.
Inspirado en las películas de Star Wars y sus viajes en el espacio,
al presionar alguna tecla, se comienza a viajar en "hyperdrive"
(se adjunta .gif de referencia). Al dejar de presionar la tecla, las
estrellas siguen moviéndose desde donde terminó la línea.
Al presionar la tecla 's', se guarda el frame en el que se encuentra la función.
Al presionar la tecla 'q', se cierra el programa.
*/


import processing.pdf.*;
// http://studio.processingtogether.com/sp/pad/export/ro.9ZbTlw0Ak8yUR/latest


Stars[] s = new Stars[1500];

void setup() {
  fullScreen();
  stroke(253);
  background(0, 0, 30);

  for (int i = 0; i < s.length; i++) {
    s[i] = new Stars();
  }
}

void draw() {
  if (!keyPressed) {
    background(0, 0, 30);
  }
  for (int i = 0; i < s.length; i++) {
    s[i].display();
    s[i].hyperdrive();
  }
}

void keyPressed() {
  //Al presionar la tecla 's', se guarda una imagen .pdf en la carpeta "frames"

  if (key == 's') { 
    saveFrame("frames/palyc1###.pdf");

  }
  //Al presionar la tecla 'q', se cierra el programa
  if (key == 'q') {
    exit();
  }
}
