/*
Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre -
Expresión Digital II -  Certamen 1 - 08.11.2017 - Ricardo Vidal.

 Se pide entregar un programa en donde se pueda modificar el comportamiento de
 objetos por medio de input de mouse y el teclado, y que una vez el programa no
 reciba input, este tenga un cambio cíclico. Los comportamientos a diseñar tienen
 que  ser relacionados al movimiento y ritmo del entorno natural: olas, viento,
 nieve, agua, ondulación, lluvia, vuelo.

 El programa permite visualizar partículas que se mueven en un patrón al azar y
 cambian su tamaño de acuerdo a la cantidad de desplazamiento ocurrido.
 Las teclas 'Q' y 'W' controlan la velocidad del movimiento.
 Las teclas 'A' y 'S' controlan la cantidad de partículas.
 La tecla 'D' activa el fade out del rastro de las partículas.
 La tecla 'P' guarda un screenshot.
 */
import processing.pdf.*;

Line[] l = new Line[40];
boolean guardarpdf = false;
boolean fade = false;
float crec;
float max;

void setup() {
  size(816, 528);
  crec = 10;
  for (int i = 0; i <l.length; i++) {
    l[i] = new Line(random(50, 255), random(75), random(50, 255), i*crec, i*crec);
  }
  max = 1;
  beginRecord(PDF, "vidalc01.pdf");
  background(0);
}
//No hay decripción de lo que el programa hará
void draw() {
  for (int i =0; i<max; i++) {
    l[i].linea();
    if (fade) {
      l[i].fade();
    }
  }

  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}

void mousePressed() {
}

//No hay decripción de lo que el programa hará
void keyPressed() {
  for (int i = 0; i <l.length; i++) {
    if (key == 'q') {
      if (l[i].vel<10) {
        l[i].vel++;
      }
    }
    if (key == 'w') {
      if (l[i].vel > 1) {
        l[i].vel--;
      }
    }
  }

  if (key == 'a') {
    if (max > 0) {
      max-=1;
    }
  }
  if (key == 's') {
    if (max < l.length) {
      max++;
    }
  }
  if (key == 'd') {
    fade = !fade;
  }

  if (key == 'p') {
    guardarpdf = true;
  }
}
