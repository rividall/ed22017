int [] numeros = new int [5];
color [] colores = new color [3];

int eleccionNumeros;//array de numeros
int eleccionColores;//array de color


void setup() {
  size(500,500);
  background(000);
  
  
  numeros[0] = 40;
  numeros[1] = 120;
  numeros[2] = 160;
  numeros[3] = 240;
  numeros[4] = 320;
   
  colores[0] = (#751212);//burdeo
  colores[1] = (#D7F283);//verde
  colores[2] = (#FFFFFF);//blanco
  
  println(eleccionNumeros);
  println(eleccionColores);
}

void draw() {
 background(0);
 fill(colores[eleccionColores]);
 rectMode(CENTER);
 
 rect(250,250, numeros[eleccionNumeros], numeros[eleccionNumeros]);
 
 //for (int i = 0; i <numeros.length;  i++) {
 //ellipse(200,300,numeros[i], numeros[i])
 //}
}

void keyPressed() {
  eleccionNumeros = (int)random(numeros.length);
  if(key =='z') {
  eleccionColores = (color)random(colores.length); 
 }
}