//#058789
int[] numeros = new int[4]; //new int crea un espacio en la memoria (4 espacios)
int eleccionNumeros;
color[] colores = new color[4];
color eleccionColor;

void setup() {
size(500, 500);
noFill();
numeros[0] = 50;
numeros[1] = 120;
numeros[2] = 200;
numeros[3] = 300;
colores[0]= #AA4225;
colores[1]= #058789;
colores[2] = 255;
colores[3] = 0;
}
//noCursor();

void draw() { 
 background(253);
 fill(colores[eleccionColor]);
 ellipse(mouseX,mouseY,numeros[eleccionNumeros],numeros[eleccionNumeros]); 
 
  }
void keyPressed() {
  eleccionNumeros ++;
  if (eleccionNumeros > 2){
    eleccionNumeros = 0;
  }
  eleccionColor++;
  if (eleccionColor > 2){
    eleccionColor = 0;
  }
   eleccionColor = (color)random(colores.length);
  //eleccionNumeros = (int)random(numeros.length);
}
 