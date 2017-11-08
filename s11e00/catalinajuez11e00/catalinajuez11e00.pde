Cata [] n = new Cata [1];

void setup() {
  size (500, 500);
  for (int i = 0; i< n.length; i ++) {
    n[i] = new Cata();
  }
}

void draw() {
  background(176, 103, 163);
  for (int i = 0; i< n.length; i ++) {
    n[i].circulo();
    n[i].movimiento();
    n[i].repeticion();
    n[i].giro(5);
  }
}