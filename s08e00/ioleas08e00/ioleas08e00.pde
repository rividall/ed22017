int[] numeros = new int[4];
int eleccionNumeros;

color[] colores = new color [4];
int eleccionColores;


void setup() {
  size(500, 500);
  noFill();
  numeros[0] = 50;
  numeros [1] = 120;
  numeros [2] =200;
  numeros [3] =300;
  println(eleccionNumeros);
  
  colores [0] = color(0);//negro
  colores [1] = color(255); //blanco
  colores [2] = color(142,142,142); //gris
  colores [3] = color(255,163,13); //naranjo
}

void draw() {
  background(253);
  
  fill(colores[eleccionColores]);
  ellipse(200, 300, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  //for (int i = 0; i < numeros.length; i++) {
    //ellipse(200, 300, numeros[i], numeros[i]);
 // }
}
void keyPressed(){
  if (eleccionNumeros > 2){
    eleccionNumeros = 0;
  }
  
  eleccionNumeros ++;
  eleccionColores =(int)random(colores.length);
  println(eleccionNumeros);
}