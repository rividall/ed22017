class MarcaPasos {

  //variables
float x, y, vx, vy;

  //contructor
  MarcaPasos() {
    noStroke();
    x = width/2;
    y = height/2;
    vx = 2;
  }
  //métodos
  void movimiento() {
    if (x > width) {
      x = 0;
    }
    x += vx;
    y += vy;
  }
  void marcaPasos() {
    fill(255);
    ellipse(x, y, 10, 10);
  }
  void onda(float amt, float a) {
    vy = amt * cos(a);
  }
}