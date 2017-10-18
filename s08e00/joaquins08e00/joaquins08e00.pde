//int [] numeros = new int [10]; //New int es: "crea un espacio en la memoria"
//void setup() {
//  size(500, 500);
//  numeros[0] = 20;
//  numeros[1] = 40;
//  numeros[2] = 60;
//  numeros[3] = 80;
//  numeros[4] = 100;
//  numeros[5] = 120;
//  numeros[6] = 140;
//  numeros[7] = 160;
//  numeros[8] = 180;
//  numeros[9] = 200;
//  strokeWeight(10);
//}
//void draw() {
//  background(255);
//  for (int i = 0; i < numeros.length; i++) {
//    point(numeros[i], numeros[i]);
//  }
//}
int eleccionNumeros, cambioColor;
int[] numeros = new int[4];
int[] colores = new int[4];
void setup() {
  size(500, 500);
  numeros[0] = 50;
  numeros[1] = 100;
  numeros[2] = 150;
  numeros[3] = 200;

  colores[0] = color(#FFD64D);
  colores[1] = color(#59A260);
  colores[2] = color(255);
  colores[3] = color(0);
  background(255);
}
void draw() {
  fill(colores[cambioColor]);

  ellipse(mouseX, mouseY, numeros[eleccionNumeros], numeros[eleccionNumeros]);
}

void keyPressed() {
  eleccionNumeros ++;
  if (eleccionNumeros > 3) {
    eleccionNumeros = 0;
  }
}

void mousePressed() {
  cambioColor ++;
  if (cambioColor > 3) {
    cambioColor = 0;
  }
  //cambioColor = (int)random(colores.length);
}