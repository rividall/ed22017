int[]numeros = new int [4];
color[]colores = new color [4];
int eleccionNumeros;
int eleccionColores;


void setup() {
  size(500, 500);

  numeros[0] = 50;
  numeros[1] = 100;
  numeros[2] = 150;
  numeros[3] = 200;

  colores[0] = color(200, 220, 150, 30);
  colores[1] = color(255, 80, 80, 30);
  colores[2] = color(51, 30);
  colores[3] = color(255, 30);

  println(eleccionNumeros);
  println(eleccionColores);
}

void draw() {
  background(255);
  fill(colores[eleccionColores]); 
  ellipse(mouseX, mouseY, numeros[eleccionNumeros], numeros[eleccionNumeros]);
}

void mousePressed() {
  eleccionNumeros = (int)random(numeros.length);
  eleccionColores = (int)random(colores.length);
}