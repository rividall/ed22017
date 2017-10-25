/*Joaquín Domínguez - Expresión Digital II - s10t00*/
Joaquin[]n = new Joaquin [25];
void setup() {
  size(800, 800);
  frameRate(120);
  for (int i = 0; i < n.length; i++) {
    n[i] = new Joaquin(400,400);
  }
}
void draw() {
  background(255);
  for (int i = 0; i < n.length; i++) {
    n[i].pokebola();
  }
}