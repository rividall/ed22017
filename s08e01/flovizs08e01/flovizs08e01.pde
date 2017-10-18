int c;
boolean a; 
int x;
int y;

int[]numeros = new int [4];
color[]colores = new color [4];

int eleccionNumeros;
int eleccionColores;

void setup() {
  size(800, 800);

  numeros[0] = 50;
  numeros[1] = 250;
  numeros[2] = 150;
  numeros[3] = 350;

  colores[0] = color(200, 220, 150, 30);
  colores[1] = color(255, 80, 90, 30);
  colores[2] = color(51, 30);
  colores[3] = color(255, 30);

  println(eleccionNumeros);
  println(eleccionColores);
}


void draw() {
  noCursor();
  background(100);
  c = color((colores[eleccionColores])); 

  if (a == true) {
    rombo(mouseX, mouseY);
  }
  elipses(x, y);
  cuadrados(x-100, y-100);
}

void rombo(int x, int y) {
  //2 rombos

  stroke(mouseX, mouseY, 0, 40);
  strokeWeight(3);
  fill(51, 200);
  quad(mouseX+x-250, mouseY, mouseX, mouseY-y+250, mouseX-x+250, mouseY, mouseX, mouseY+y-250);
  fill(mouseX, mouseY, 0, 10);
  quad(mouseX+30, mouseY, mouseX, mouseY-30, mouseX-30, mouseY, mouseX, mouseY+30);
}

void cuadrados(int x, int y) {
  //cuadrados
  fill(c);
  noStroke();
  rect(50, 50, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  rect(100, 100, x-100, y-100);
  rect(150, 150, x-100, y-100);
  rect(200, 200, x-100, y-100);
  
  noFill();
  stroke(0);
  rect(250, 250, x, y);
  
  fill(c);
  rect(250, 250, x+200, y+200);
  rect(250, 250, x-50, y-50);
  
  noFill();
  rect(250, 250, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  rect(150, 150, x+400, y+400);
}

void elipses(int x, int y) {
  //3 elipses grandes

  fill(0, mouseX, mouseY, 15);
  stroke(0);
  strokeWeight(1);
  ellipse(mouseX, mouseY, x-300, y-300);
  ellipse(mouseX, mouseY, x-285, y-285);
  ellipse(mouseX, mouseY, x-270, y-270);
}

void keyPressed() {
  //Al oprimir la tecla 'w'
  if (key == 'w') {
    a = !a;
  }
}

void mousePressed() {
  //Al oprimir el mouse
  eleccionNumeros = (int)random(numeros.length);
  eleccionColores = (int)random(colores.length);
}