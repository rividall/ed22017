int x, y, r, g, b, r2, g2, b2;
color miColor, miColor2;

void setup() {
  size (500, 500);

  r= 200;
  g= 50;
  b= 15;

  r2= 176;
  g2= 103;
  b2= 163;

  miColor= color(r, g, b); 
  miColor2= color(r2, g2, b2);
}

void draw() {  
  background(0);

  circulo(width/2, (width/2 + width/4));
  cuadrado(width/4, height/4, width/2, height/2);
  cuadrado(width/4, height/4, width/4, height/4);

  for (int i =  width/2; i < width; i = i+10) {
    for (int j = 0; j < height/2; j = j+10) {
      punto(i, j, mouseY/50);
    }
  }
}

void circulo(int x, int y) {  
  stroke(255);
  strokeWeight(10);
  fill(miColor);
  ellipse(x, y, mouseX/2, mouseX/2);

  noStroke();
  fill(miColor2);
  ellipse(x, y, mouseX/4, mouseX/4);
}

void cuadrado(int x, int y, int a, int b) {
  fill(miColor2);
  stroke(55);
  rect(x, y, a, b);
}

void punto(int x, int y, int a) {
  rectMode(CENTER);
  stroke(255);
  strokeWeight(a);
  point (x, y);
}

/*int x, y, r, g, b, r2, g2, b2;
color miColor, miColor2;

void setup() {
  size (500, 500);

  r= 200;
  g= 50;
  b= 15;

  r2= 176;
  g2= 103;
  b2= 163;

  miColor= color(r, g, b); 
  miColor2= color(r2, g2, b2);
}

void draw() {  
  background(0);
  for (int i = 50; i < width; i = i+100) {
    for (int j = 50; j < height; j = j+100) {
      punto(i, j, mouseY/20);
    }
  }
  Circulo(width/2, height/2);
  cuadrado(0, 0);
  cuadrado(width/2, height/2);
}

void Circulo(int x, int y) {  
  stroke(255);
  strokeWeight(10);
  fill(miColor);
  ellipse(x, y, mouseX, mouseX);

  noStroke();
  fill(miColor2);
  ellipse(x, y, mouseX/2, mouseX/2);
}

void cuadrado(int x, int y) {
  fill(miColor2);
  rect(x, y, width/2, height/2);
}

void punto(int x, int y, int a) {
  stroke(255);
  strokeWeight(a);
  point (x, y);
}
*/