int x, y;
color v = color(111, 197, 166);
color g = color(91, 91, 91);
color n = color(0);
color b = color(255);

void setup() {
  size(800, 400);
}

void draw() {
  background(g);
  for (x = 0; x < width + 100; x += 100) { 
    for (y = 0; y < height + 100; y += 100) {
      linea(x, y);
      circulo(x, y, 50);
      cuadrado(width / 2, height / 2, 150);
    }
  }
  
}

void linea(int i, int j) {
  strokeWeight(3);
  stroke(b, 50);
  line(i, j, i + 100, j + 100);
  line(i, j + 100, i + 100, j);
}

void circulo(int i, int j, int d) {
  noStroke();
  fill(n, 80);
  ellipse(i + 50, j + 50, d, d);
}

void cuadrado(int i, int j, int r) {
  pushMatrix();
  translate(i, j);
  rotate(frameCount * .2);
  noFill();
  strokeWeight(3);
  stroke(v);
  rect(0 ,0, r, r);
  popMatrix();
}