// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre - Expresión Digital II
// Catalina Juez
/*

 */
int  r, g, b, r2, g2, b2, tam, f;
int margen, margen2;
color miColor, miColor2;


void setup() {

  size(1000, 1000);

  r= 200;
  g= 50;
  b= 15;
  miColor = color(r, g, b);

  r2= 176;
  g2= 103;
  b2= 163;
  miColor2 = color(r2, g2, b2);

  tam = 10;

  margen = 150;
  margen2 = 150;

  f= 50;
}

void draw() {

  background(255);

  textSize(15);
  fill(miColor2);
  text("mouseY = La cantidad de columnas disminuye en relacion al eje Y.", 200, 740); 
  text("mouseX = Al pasar la mitad de la composición los cuadrados aumentan su tamaño.", 200, 760);
  text("mousePressed = Los circulos cambian de color.", 200, 780); 
  text("f = La cantidad de elementos en la grilla aumenta.", 200, 800); 
  text("F =  La cantidad de elementos en la grilla disminuye.", 200, 820);

  margen2= mouseY;
  for (int i = margen2; i < width - margen2; i+= f) {
    for (int j = margen; j < height- 350; j+= f) {
      noFill();
      strokeWeight(2);
      stroke(miColor);
      ellipse(i, j, 100, 100);

      rectMode(CENTER);
      stroke(miColor2);
      rect(i, j, tam, tam);
    }
  }

  if (mouseX > width/ 2) {
    tam = 40;
  } else {
    tam = 10;
  }
}

void mousePressed() {
  if (miColor == color(r, g, b)) {

    miColor = color(r2, g2, b2);
  } else {

    miColor = color(r, g, b);
  }
}

void keyPressed () {
  if (key == 'f') {
    f = 30;
  }
  if (key == 'F') {
    f = 50;
  }
}