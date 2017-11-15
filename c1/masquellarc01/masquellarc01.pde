/*Universidad del Desarrollo / Facultad de Diseño / Diseño Digital / 6to semestre /
 Expresión Digital II / Certamen 01 - 08.11.2017 / Josefina Squella R.T.


 Se pide entregar un programa en donde se pueda modificar el comportamiento de  objetos
 por medio de input de mouse y el teclado, y que una vez el programa no  reciba input,
 este tenga un cambio cíclico. Los comportamientos a diseñar tienen que  ser relacionados
 al movimiento y ritmo del entorno natural:olas, viento, nieve, agua, ondulación, lluvia,
 vuelo.
*/

//No hay decripción general de lo que el programa hará

import processing.pdf.*;//Crear PDF.
boolean guardarpdf, o, y, t;//Variables de boolean.
float f, j, d, s, g, u, b;//Variables de Float.
color[] r = new color[5];//Array con 5 variables de color.
color eleccionColor;//resultado array, Variable de color.
Linea l; // deben ser un array en donde se almacenan varios objetos
Pelota p;


void setup() {
  size(517, 800);//tamaño del canvas
  guardarpdf = false;//se declara variable como falsa
  l = new Linea();//se declara l como clase Linea
  r[0] = #a8c3bf;//se dan los valores a el array
  r[1] = #80999a;
  r[2] = #2e4255;
  r[3] = #2c3440;

  p = new Pelota();//se declara p como clase Pelota
  f = 0;
  s = 0;
  j = random(0-50);
  g = 0;
  d = 1;
  u = 0;
  b = 8;

  o = true;//se declara variable como verdadera
  y = true;//se declara variable como verdadera
  t = true;

  background(#ffffc0);
}

void draw() {
  if (guardarpdf) {
    beginRecord(PDF, "masquellarc01.pdf");
  }

  //rectángulo con tranparencia para crear las estelas
  fill(#ffffc0, 80);
  rect(0, 0, 517, 800);

  //Patrón de líneas horizontales y verticales
  translate(10, 0);
  for (int i = 0; i < 100; i+=5) {
    for (int j =0; j < 100; j+=5) {
      l.lineah(i+(j+100), j+100, r[eleccionColor]);
    }
  }

  for (int i = 0; i < 100; i += 5) {
    for (int j = 0; j < 100; j += 10) {
      l.lineav(i+50, j+(i+50), r[eleccionColor]);
    }
  }

  pushMatrix();
  translate(495, 740);
  rotate(PI);
  for (int i = 0; i < 100; i+=5) {
    for (int j =0; j < 100; j+=5) {
      l.lineah(i+(j+100), j+100, r[eleccionColor]);
    }
  }

  for (int i = 0; i < 100; i+=5) {
    for (int j =0; j < 100; j+=10) {
      l.lineav(i+50, j+(i+50), r[eleccionColor]);
    }
  }

  for (int i = 0; i< 250; i += 20) {
    for (int j = 0; j<300; j+=80) {
      p.pelota1(i + 120 + u, j+random(10) + g+130, b, r[eleccionColor]);
    }
  }


  //Movimiento de y en las pelotas
  // esto debe ser un método de la clase
  g -= 5;
  if (g < -400 ) {
    g = 0;
  }
  //loop de pelotas

  for (int i = 0; i< 250; i += 20) {
    for (int j = 0; j<550; j+=100) {
      p.pelota1(i  + 120 + u, j+random(10) + g + 500, b, r[eleccionColor]);
    }
  }
  if(j < 100||j > 600){
    j= 0;
  }

  popMatrix();
  //Límite de pelotas
  fill(#ffffc0);
  rect(0,0, 517, 100);
  rect(0, 640, 517, 200);
  rect(-10, 0, 30, 800);
  //boolean que hace desaparecer las pelotas
  if (o) {
    b = 8;
  }
  if (!o) {
    b = 0;
  }
  //boolean que hace cambiar la x de las pelotas
  if (y) {
    //u  = cos(radians(u)) + frameCount ++;
    u = 0;
  }

  if (!y) {
    //u  = cos(radians(u)) + frameCount ++;
    //u=20;
    for (int i = 0; i< 250; i += 20) {
      for (int j = 0; j<550; j+=100) {
        p.pelota1(i  + 120 + 30, j+random(10) + g + 500, b, r[eleccionColor]);
      }
    }
    if(j < 100||j > -500){
  j= 0;}
  }
  if (u > 280) {
    u += 1;
  }



fill(#ffffc0);
rect(0, 600, 517, 300);

if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}

void keyPressed() {

  if (key == 's') {
    eleccionColor++;
  }

  if (eleccionColor > 4 ) {
    eleccionColor = 0;
  }

  if (key == 'a') {
    y = !y;

  }
  if (key == 'p') {
    guardarpdf = !guardarpdf;
  }
}
void mousePressed() { //Sí se preciona el mouse, el ancho de las lineas cambia.
  o = !o;
}
