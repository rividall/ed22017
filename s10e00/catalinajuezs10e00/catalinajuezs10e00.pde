Cata [] n = new Cata [1];

void setup() {
  size(500, 500);
  for (int i = 0; i< n.length; i ++) {
    n[i] = new Cata();
  }
}

void draw () {
  //background(255);
  for (int i = 0; i< n.length; i ++) {
    n[i].cuadrado();
    n[i].mover();
  }
}