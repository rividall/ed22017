class Sofia { //Se inicializa la clase Sofia.
  float x, y, vx, vy;
  color c, r, b, n;

  //Se inicializa el CONSTRUCTOR
  Sofia () {
    c = (#73DDFC); //celeste
    r = (#E866F7); //rosado
    vx = 2;
    vy = 0;
    x = 250;
    y = 250;
  }

  //Se inicializan los MÉTODOS
  void juntas() {
    balon();
    movimiento();
    bola();
  }

  void balon() {
    fill(c);
    ellipse(x, y, 10, 10);
  }

  void bola() {
    fill(r);
    ellipse(x, y, 10, 10);
  }

  void ola(float amt, float a) {
    vy = amt * cos(a);
  }

  void movimiento() {
    if (x > width) {
      x = 0;
    }
    x += vx;
    y += vy;
  }
}