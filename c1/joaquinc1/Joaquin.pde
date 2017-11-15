class Joaquin {

  int s; //Se declaran las variables
  float vx, vy, x, y;

  Joaquin(int w, float h) { //Se establecen los valores en el constructor
    vx = 2;
    vy = 0;
    x = w;
    y = h;

  }

  //se crean los métodos

  void pelota() {
    movimiento();
    tres(c);

  }
  void movimiento() {
    if (x > width) {
      x = 0;

    }
    x += vx;
    y += vy;
  }

  void onda(float amt, float a) {
    vy = amt * cos(a);
  }

  void tres(int c) {
    //función 3
    fill(c);
    noStroke();
    ellipse(x, y, 5, 5);
  }
}
