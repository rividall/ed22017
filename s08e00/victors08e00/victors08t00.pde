int[] numeros = new int[4]; // Crea un espacio en la memoria
int en;
int[] colores = new color[4]; // Crea un espacio en la memoria para los cuatro colores.
int ec;

void setup() {
  size(500, 500);
  noFill();
  noCursor();
  numeros[0]=50;
  numeros[1]=60;
  numeros[2]=70;
  numeros[3]=80;

  colores[0]= color(114, 19, 102); // morado
  colores[1]= color(234, 160, 13); // dorado
  colores[2]= color(0, 0, 0); // negro
  colores[3]= color(255, 255, 255);// blanco
}
void draw() {
  background(150);

  noStroke();
  fill(colores[ec]);
  
  ellipse(mouseX, mouseY, numeros[en], numeros[en]);
  // ellipse(height/2, width/2, numeros[en], numeros[en]); Ejercicio simple
  //EJEMPLO EN CLASES for (int i = 0; i < numeros.length; i++) { 
  //  ellipse(height/2, width/2, numeros[i], numeros[i]);
  //}
}

void keyPressed() {
  en = (int)random(numeros.length);
  ec = (int)random(colores.length);
}