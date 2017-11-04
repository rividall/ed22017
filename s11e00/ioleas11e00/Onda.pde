class Punto {
  float speed = 2;
  float speedy = 2;
  float x = 0;
  float y = 250;

  //CONSTRUCTOR
  Punto() {
  }
  void correr() {
    cuerpo();
    mover();
    onda();
  }

  void cuerpo() {
    stroke(255);
    strokeWeight(10);
    point(x, y);
  }

  void mover() {
    x += speed;
    y += speedy;
    if (x > 500) {
      x = 0;
    }
  }
  void onda() {
    speedy = 10 * cos(frameCount *0.07);
  }
}