//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital
//Paulina Descouvieres
//s11c01

/*
Comportamiento a diseñar : Vuelo.
Al computar el código, se simula el comportamiento de vuelo en el universo.
Inspirado en las películas de Star Wars y sus viajes en el espacio,
al presionar alguna tecla, se comienza a viajar en "hyperdrive"
(se adjunta .gif de referencia). Al dejar de presionar la tecla, las
estrellas siguen moviéndose desde donde terminó la línea.
Con el mouse, se mueve el punto de origen de las estrellas,
simulando cambios de dirección en el vuelo.
*/

import processing.pdf.*;

Stars[] s = new Stars[1000];

void setup() {
  size(800, 400);
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
    saveFrame("frames/palys12c01###.pdf");
  }
  //Al presionar la tecla 'q', se cierra el programa
  if (key == 'q') {
    exit();
  }
}