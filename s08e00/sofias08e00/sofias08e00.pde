//crear lista de colores
int [] numeros = new int [4];
int eleccionNumeros, coloritos;
color [] colores = new color [4];

void setup() {
  size(500, 500);
  numeros[0] = 50;
  numeros[1] = 150;
  numeros[2] = 200;
  numeros[3] = 250;

  colores[0] = color(#E866F7); 
  colores[1] = color(#73DDFC); 
  colores[2] = color(#050505 ); 
  colores[3] = color(#FFFFFF );
}

void draw() {
  fill(colores[coloritos]);
  ellipse(mouseX, mouseY, numeros[eleccionNumeros], numeros[eleccionNumeros]);
}

void keyPressed() {
  if (coloritos > 2) {
    coloritos = 0;
  }
  if(eleccionNumeros > 2){
    eleccionNumeros = 0;
  }
  
  coloritos ++;
  eleccionNumeros ++;
}