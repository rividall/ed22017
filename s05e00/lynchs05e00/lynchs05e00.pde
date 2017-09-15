float a, b, posX, posY, velX, posX2, posY2;
float px, py, px2, py2;
void setup() {
  size(600, 600);
}

void draw() {
  background(40, 20, 40);
  noStroke();
  sol(width/2, height/2);
  planeta(width/2,height/2,50,150,.02);
}

void luna(float posX2, float posY2, float rd, float tam) {
  fill(255);
  ellipse(px2, py2, tam, tam);
  velX = .06;
  px2 = rd * cos(a) + (posX2);  
  py2 = rd * sin(a) + (posY2); // Movimiento no lineal.
  a += velX;
}

void planeta(float posX, float posY, float tam, float r,float vel) {
  fill(190,190,100);
  ellipse(px, py, tam, tam);
  fill(0, 0, 180,80);
  ellipse(px, py, tam+30, tam+30);
  px = r * cos(b) + (posX);  
  py = r * sin(b) + (posY); // Movimiento no lineal.
  b += vel;
  luna(px,py,50,10);
}

void sol(float posX, float posY) {
  for (int i = 0; i<6; i++) {
    fill(255, 205, 0, 155-i*42);
    float sz = 70+i*20;
    ellipse(posX, posY, sz, sz);
  }
}