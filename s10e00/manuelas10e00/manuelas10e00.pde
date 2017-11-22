// variables
Manuela_con_mayuscula m;

void setup() {
  size(900, 900);
  m = new Manuela_con_mayuscula();
}

void draw() {
  background(0);
  m.movimiento();
  m.circulo();
}