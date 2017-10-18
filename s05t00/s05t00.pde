color azul, verde, blanco;

void setup() {
  size(500, 500);
  azul = #70B1D1;
  verde = #B3D170;
  blanco = 255;
}

void draw() {
  background(0);
  line1(width, height, width, height, azul, verde, blanco);
  ellipse1(width, height, 75, 75, azul, blanco);
  ellipse2(width, height, 110, 110, verde, azul);
  ellipse3(width, height, 55, 55, blanco);
}

void line1(int a, int b, int c, int d, color pp, color cc, color dd) {
  strokeWeight(2);
  stroke(dd);
  line(0, b/2, c, d/2);
  line(a/2, 0, c/2, d);
  strokeWeight(5);
  stroke(pp);
  line(a/3, 120, c/3, 380);
  line(a/1.2, 180, c/1.2, 320);
  stroke(cc);
  line(a/1.5, 120, c/1.5, 380);
  line(a/6, 180, c/6, 320);
}

void ellipse1(int a, int b, int c, int d, color aa, color ee) {
  noFill();
  strokeWeight(10);
  stroke(aa);
  ellipse(a/2, b/5, c, d);
  strokeWeight(25);
  stroke(ee);
  point(a/2, b/5);
}

void ellipse2(int a, int b, int c, int d, color ver, color az) {
  strokeWeight(5);
  stroke(az);
  rect(a/2.35, b/2.35, 75, 75);
  noFill();
  strokeWeight(5);
  stroke(ver);
  ellipse(a/2, b/2, c, d);
}

void ellipse3(int a, int b, int c, int d, color blanc) {
  noFill();
  strokeWeight(10);
  stroke(blanc);
  ellipse(a/2, b -= 100, c, d);
}


void keyPressed() {
  if (key == 'a') {
    azul = verde;
  } else if (key == 's') {
    azul = #70B1D1;
  } else if (key == 'd'){
    verde = azul;
  } else if (key == 'f'){
    verde = #B3D170;
  }
}