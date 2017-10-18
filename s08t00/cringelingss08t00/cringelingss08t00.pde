// Expresión Digital II - Diseño Digital UDD - 2017
// Catalina Ringeling
// cringelingss08t00

/* 
Al correr el programa se verán 3 círculos de 3 colores diferentes:
Color Azul: colores[0] = #70B1D1; Color Verde; colores[1] = #B3D170; 
Color Blanco: colores[2] = 255; y dos líneas en forma de cruz a la mitad
del canvas (500, 500), de color blanco.
Al pasar el mouse por el canvas, se visualizarán ellipses blancas y negras
que se mueven según el movimiento del mouse. Las ellipses blancas por X y
las ellipse negras por Y.
A la vez al apretar cualquier tecla del mouse irán apareciendo ellipses azules,
verdes y blancas de diferentes tamaños de manera random entre los tamaños 
posteriormente mencionados en el Array, los cuales pueden ir cambiando de color
entre verde y azul al apretar las teclas 'a', 's', 'd' y 'f'
*/


int [] numeros = new int [10];
int numeros1;
int num = 1;
float x2;

color[] colores = new color[3];

void setup() {
  size (500, 500);            // Tamaño del Canvas.
  
  // Valores otorgados a los Arrays.
  // 3 Arrays en total a utilizar con colores.
  colores[0] = #70B1D1;       // Color Azul
  colores[1] = #B3D170;       // Color Verde
  colores[2] = 255;           // Color Blanco
  
  // 10 Arrays en total a utilizar con números.
  numeros[0] = 25;
  numeros[1] = 50;
  numeros[2] = 100;
  numeros[3] = 150;
  numeros[4] = 200;
  numeros[5] = 250;
  numeros[6] = 300;
  numeros[7] = 350;
  numeros[8] = 400;
  numeros[9] = 450;
  println(numeros1);
}

void draw() {
  map1(width/2, 20);
  lineasCruz(width, height, width, height);
  circuloAzul(width, height);
  circuloVerde(width, height);
  circuloBlanco(width, height);
}

void map1(int j, int k) {
  stroke(colores[2]);
  float m = map(mouseX, 200, 250, 150, 250);
  ellipse(m, j, k, k);
  stroke(0);
  float n = map(mouseY, 150, 250, 100, 250);
  ellipse(j, n, k, k);
}

void lineasCruz(int a, int b, int c, int d) {
  strokeWeight(2);
  stroke(colores[2]);
  line(0, b/2, c, d/2);
  line(a/2, 0, c/2, d);
}

void circuloAzul(int a, int b) {
  noFill();
  strokeWeight(5);
  stroke(colores[0]);
  ellipse(a/2, b/5, numeros[numeros1], numeros[numeros1]);
}

void circuloVerde(int a, int b) {
  noFill();
  strokeWeight(8);
  stroke(colores[1]);
  ellipse(a/2, b/2, numeros[numeros1], numeros[numeros1]);
}

void circuloBlanco(int a, int b) {
  noFill();
  strokeWeight(5);
  stroke(colores[2]);
  ellipse(a/2, b -= 100, numeros[numeros1], numeros[numeros1]);
}

void keyPressed() {
  numeros1 = (int)random(numeros.length);
  println(numeros1);
  if (key == 'a') {
    colores[0] = colores[1];
  } else if (key == 's') {
    colores[0] = #70B1D1;
  } else if (key == 'd') {
    colores[1] = colores[0];
  } else if (key == 'f') {
    colores[1] = #B3D170;
  }
  {
  }

  switch(num) {
  case 0: 
    println("Zero");  // Does not execute
    break;
  case 1: 
    println("One");  // Prints "One"
    break;
  }
}