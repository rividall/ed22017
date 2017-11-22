Manuela m; 

void setup() {
  size(500, 500);
  m = new Manuela ();
}

void draw() {
  fill(255,10);
  rect(0,0,500,500);
  m.giro(5,frameCount * -1);
  m.giro(10,frameCount * -1);
}