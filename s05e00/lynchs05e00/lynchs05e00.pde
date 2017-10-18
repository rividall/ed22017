float a, b, posX, posY, velX, posX2, posY2, rot;
float px, py, px2, py2;
void setup() {
  size(600, 600);
}

void draw() {
  background(20, 10, 20);
  noStroke();
  planeta(width/2, height/2, 50, 50, .04);
  luna(0,0,10);
  ellipse(10,10,50,50);
}

void luna(float posX2, float posY2, float tam) {
  fill(255);
  pushMatrix();
  translate(px,py);
  rotate(rot);
  rot +=.01;
  for (int i = 5; i<15; i+=2) {
    ellipse(posX2, (i*15), tam, tam);
  }
  popMatrix();
}

void planeta(float posX, float posY, float tam, float r, float vel) {
  fill(255);
  ellipse(px, py, tam, tam);
  fill(0, 0, 180, 40);
  ellipse(px, py, tam+60, tam+60);
  px = r * cos(b) + (posX);  
  py = r * sin(b) + (posY); // Movimiento no lineal.
  b += vel;
}