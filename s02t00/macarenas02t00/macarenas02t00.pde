int x, x1, x2, x3, x4, x5, x6, x7, x8; // x declarado
float y, y1, y2, y3;
color azul; // color 1 declarado
color amarillo; // color 2 declarado
color negro; // color 3 declarado
color blanco; // color 4 declarado

void setup() {
  size(430, 430); //tamaño del canvas

  background(negro);

  x = 80; // x inicializado
  x1 = 320; // x1 inicializado
  x2 = 30; // x2 inicializado
  x3 = 380; // x3 inicializado
  x4 = 15; // x4 inicializado
  x5 = 20; // x6 inicializado
  x6 = 410;
  
  y = 100.5; // y inicializado
  y1 = 30.5; // y1 inicializado
  y2 = 20.5; // y2 inicializado
  y3 = 100.5;

  azul = color(#14BAF5); // color 1 inicializado
  amarillo = color(#F59F14); // color 2 inicializado
  negro = color(#050505); // color 3 inicializado
  blanco = color(#FFFFFF); // color 4 inicializado
}

void draw() {

  noStroke(); // rectangulo sin borde
  fill(amarillo); //rectangulo relleno amarillo
  rect(x2, 5, x4, y); // rectangulo

  noStroke(); // rectangulo sin borde 1
  fill(azul); //rectangulo 1 relleno azul
  rect(x2, 115, x4, y); // rectangulo 1

  noStroke(); // rectangulo 2 sin borde
  fill(amarillo); //rectangulo 2 relleno amarillo
  rect(x2, 220, x4, y); // rectangulo 2

  noStroke(); // rectangulo  3 sin borde
  fill(azul); //rectangulo 3 relleno amarillo
  rect(x2, 325, x4, y); // rectangulo 3

  noStroke(); // rectangulo 5 sin borde
  fill(amarillo); //rectangulo 5 relleno amarillo
  rect(x3, 5, x4, y); // rectangulo 5

  noStroke(); // rectangulo sin borde 6
  fill(azul); //rectangulo 6 relleno azul
  rect(x3, 115, x4, y); // rectangulo 6

  noStroke(); // rectangulo 7 sin borde
  fill(amarillo); //rectangulo 7 relleno amarillo
  rect(x3, 220, x4, y); // rectangulo 7

  noStroke(); // rectangulo  8 sin borde
  fill(azul); //rectangulo 8 relleno amarillo
  rect(x3, 325, x4, y); // rectangulo 8

  stroke(azul); // circulo con borde
  strokeWeight(4); // grosor circulo
  fill(blanco); //circulo relleno negro
  ellipse(x, y1, 20, y2); //circulo

  stroke(amarillo); // circulo 1 con borde
  strokeWeight(4); // grosor circulo 1
  fill(negro); //circulo 1 relleno negro
  ellipse(x1, y1, 20, y2); //circulo 1

  stroke(azul); // circulo 2 con borde
  strokeWeight(4); // grosor 2 circulo
  fill(blanco); //circulo 2 relleno negro
  ellipse(x, 400, 20, y2); //circulo 2

  stroke(amarillo); // circulo 3 con borde
  strokeWeight(4); // grosor circulo 3
  fill(negro); //circulo 3 relleno negro
  ellipse(x1, 400, 20, y2); //circulo 3

  stroke(blanco); // liena blanca
  strokeWeight(5);
  line(20, 220, 20, 410);

  stroke(azul); // puntos azules
  strokeWeight(5);
  point(x5, 20);
  point(x5, 35);
  point(x5, 50);
  point(x5, 65);
  point(x5, 80);
  point(x5, 95);
  point(x5, 110);
  point(x5, 125);
  point(x5, 140);
  point(x5, 155);
  point(x5, 170);
  point(x5, 185);
  point(x5, 200);

  stroke(amarillo); // puntos amarillos
  strokeWeight(5);
  point(x6, 230);
  point(x6, 245);
  point(x6, 260);
  point(x6, 275);
  point(x6, 290);
  point(x6, 305);
  point(x6, 320);
  point(x6, 335);
  point(x6, 350);
  point(x6, 365);
  point(x6, 380);
  point(x6, 395);
  point(x6, 410);

  stroke(negro); // liena negra
  strokeWeight(5);
  line(410, 210, 410, 20);

  stroke(blanco); // puntos blancos
  strokeWeight(4);
  point(60, y3);
  point(100, y3);
  point(140, y3);
  point(180, y3);
  point(220, y3);
  point(260, y3);
  point(300, y3);
  point(340, y3);

  stroke(negro); // puntos negros
  strokeWeight(7);
  point(80, y3);
  point(120, y3);
  point(160, y3);
  point(200, y3);
  point(240, y3);
  point(280, y3);
  point(320, y3);
  point(360, y3);

  // modicicadores
  x5 ++;
  x6 --;
  y3 ++;
  x ++;
  x1 --;

}
