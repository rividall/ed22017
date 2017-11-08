class Linea {
  //atributos
  float x, y;
  float velx, vely;

  Linea( float _x) {
    //Constructor
    this.x = _x;
    velx = 4;
    vely = 4;
  }
  //metodos

  void lineal() {
    stroke(255);
    strokeWeight(5);
    line(x, y, x + 50, y);
  }
  void curva(float hh, float a) {
    velx = hh * cos(a);
  }
  void movimiento() {
    x+=velx;
    y +=vely;

    if (x > 500 || x < 0) {
      velx*=-1;
    }

    if (y > 500 || y < 0) {
      x*=-1;
    }
  }
}