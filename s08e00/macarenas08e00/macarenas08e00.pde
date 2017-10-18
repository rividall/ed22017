// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// s08 ejercicio 00

int[] numeros = new int[4];
color[] colores = new color [4];

int  eleccionColores, eleccionNumeros;
int  x;

void setup() {
  size(500, 500);
  
  x = 10;

  colores[0] = color(#F59F14); // color amarillo
  colores[1] = color(#14BAF5); // color azul
  colores[2] = color(#050505); // color negro
  colores[3] = color(#FFFFFF); // color blanco

  numeros[0] = 10; 
  numeros[1] = 15; 
  numeros[2] = 20; 
  numeros[3] = 25; 
  
  noCursor();
  noStroke();
}

void draw() {
  background(#FFFFFF);
  
  fill(colores[eleccionColores]);
  
  
  for (int i = 10; i <= 500 - x; i += 20) {  // for loop con i para x
    for (int j = 10; j <= 500 - x; j += 20) { // for loop con j para y
      ellipse(i, j, 10, 10);
      ellipse(i, j, numeros[eleccionNumeros], numeros[eleccionNumeros]);
    }
  }
}

void keyPressed() {
  eleccionColores = (int) random (colores.length);
  if (eleccionNumeros > 2) {
   eleccionNumeros = 0;
  }
  eleccionNumeros ++;
}