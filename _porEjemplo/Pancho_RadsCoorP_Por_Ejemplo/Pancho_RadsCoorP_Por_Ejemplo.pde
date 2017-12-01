int a, i, j, x, y;

void setup() {
  size(500, 500);
}

void draw() {

  background(#FFFFFF);
  a++;

  translate(width/2, height/2);
  clocky();
  seno();
   coseno();
  tangente();
}
void clocky() {

  rotate(radians(a));
  line(0, 0, 100, 0);
  pushMatrix();
  rotate(radians(-a*3));
  line(0, 0, 50, 0);
  popMatrix();
  pushMatrix();
  translate(100, 0);
  rotate(radians(a*3));
  line(0, 0, 50, 0);
  popMatrix();
}

void seno() {

  for (i = -200; i < 200; i = i + 5) {

    line(i, sin(radians(a*2-i))*30, i, sin(radians(a*2-i))*45);
    line(-200, 0, 200, 0);
  }
}
void coseno() {

  for (i = -200; i < 200; i = i + 5) {

    line(i, cos(radians(a*2-i))*30, i, cos(radians(a*2-i))*45);
    line(-200, 0, 200, 0);
  }
}
void tangente() {

  for (i = -200; i < 200; i = i + 5) {

    line(i, tan(radians(a*2-i))*30, i, tan(radians(a*2-i))*45);
    line(-200, 0, 200, 0);
  }
}