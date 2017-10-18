color[] colores = new color[3];
int[] numeros = new int[4];
int eleccionNumeros;
int eleccionColores;

void setup(){
  size(500,500);
  colores[0] = color(#B7FAFF);
  colores[1] = color(#D9A5FF);
  colores[2] = color(#FEE5FF);
  
  numeros[0] = 100;
  numeros[1] = 200;
  numeros[2] = 300;
  numeros[3] = 400;
}

void draw(){
  background(#FFFFFF);
  noStroke();
  fill(colores[eleccionColores]);
  ellipse(mouseX, mouseY, numeros[eleccionNumeros], numeros[eleccionNumeros]);
}

void mousePressed(){
  eleccionNumeros = (int) random (numeros.length);
  eleccionColores = (int) random (colores.length);
}