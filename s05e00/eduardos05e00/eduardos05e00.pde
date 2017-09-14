color negro= #000000;
color amarillo = #FEFF03;
int velX = 80;
int velY = 80;
int palp;
int h;

void setup() {
  size (500, 500);
  noCursor();
  palp=0;
}
void blis(int j, int l) {

  stroke(#CBCE7F);
  strokeWeight(4);
  line(j, 0, 500, 500);
  line(0, 500, j, 0);
}

void bles(int x, int y) {

  noFill();
  noStroke();
  fill(amarillo);
  ellipse(x, y, 70, 70);
  rectMode(CENTER);
  strokeWeight(3);
  fill(negro);
  rect(x, y, 30, 30);
  noFill();
  strokeWeight(3);
  stroke(amarillo);
  ellipse(x, y, 100, 100);
}

void blas(int q, int w, int e, int r) {

  ellipse(q, w, e, r);
  rect(w, q, r+50, e+50);
  strokeWeight(10);
  stroke(#FF1A00);
  point(250, 250);
}

void draw() {
  background(negro);
  h = mouseY;
  for (int i = h; i < 500; i +=15) {
    blis(i, h);
  }
  bles(mouseX, mouseY);
  blas(250, 250, velX, velX);

  if (palp >= 0 && palp < 10) { 
    velX++;
  }
  if (palp >= 10 && palp < 19) { 
    velX--;
  }

  if (palp >= 20) { 
    palp=0;
  }
  palp++;

  if (velX==0) {
    palp=palp*-1;
  }
}

void mousePressed() {
  if (negro == color(0)) {
    negro = color(#2FEAD0);
  } else {
    negro = color(0);
  }
  if (amarillo == color(#FEFF03)) {
    amarillo = color(0);
  } else {
    amarillo =  color(#FEFF03);
  }
}