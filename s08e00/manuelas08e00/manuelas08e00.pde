int[] numeros = new int [4]; //crea un espacio en la memoria
int eleccionNumeros;
color[] colores = new color [4];

void setup() {
  size(500, 500);
  noFill();
  numeros[0] = 50;
  numeros[1] = 120;
  numeros[2] = 200;
  numeros[3] = 300;
  noCursor();
  colores[0] = #FFFFFF;
  colores[1] = #000000;
  colores[2] = #A3BD31;
  colores[3] = #DEDC1C;
}

void draw() {
  background(#256186); 
  stroke(colores[1]);
  strokeWeight(2);
  fill(colores[eleccionNumeros]);
  ellipse(mouseX, mouseY, numeros[eleccionNumeros], numeros[eleccionNumeros]);
}

void keyPressed() {
  eleccionNumeros= (int)random(numeros.length);
  eleccionNumeros= (int)random(colores.length);
}