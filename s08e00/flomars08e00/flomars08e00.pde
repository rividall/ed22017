
//Florencia Martínez V

color [] colores = new color [5];
int eleccionColor;

void setup(){
  size(500, 500);
  noFill();
  colores [0] = #FF6E0D; //naranjo
  colores [1] = #7CFFD4; //verde
  colores [2] = #000000; //negro
  colores [3] = #FF0000; //rojo
  colores [4] = #FF00F3; //rosado

  
}

void draw () {
  background(253);
  
  fill(colores[eleccionColor]);
  ellipse(250, 250, 400, 400);
  
 
}

void keyPressed(){
  /
  eleccionColor= (int)random(colores.length);
}