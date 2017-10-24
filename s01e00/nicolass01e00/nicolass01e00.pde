void setup() { //esto es una prueba
  size(900, 900);
  background(100, 100, 100);
}

void draw() {
  if (mousePressed) {
    background(100, 100, 100);
  } 

 noStroke();
  fill(160, 220, 90);
  ellipse(mouseX, mouseY, 300, 300);
}