Manuela m; 
boolean mov = true;
void setup() {
  size(500, 500);
  m = new Manuela ();
}

void draw() {
  //background(0);

  if (mov) {
    m.onda(10, frameCount*.05);
  }
  m.movimiento();
  m.punto();
}
void keyPressed() {
  if (key =='a') {
    mov = !mov;
  }
}