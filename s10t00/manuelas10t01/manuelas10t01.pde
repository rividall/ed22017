// variables
Manuela m; 

void setup() {
  size(500, 500);
  m = new Manuela();
}

void draw() {
  background(0);
  m.movimiento();
  m.argollas();
  m.circulo();
}