class Sofia {
  float x, y, vx, vy, tx, ty;
  color c, r, b, n;

  //CONSTRUCTOR
  Sofia (float tam) { //inicializando constructor
    c = (#73DDFC); //celeste
    r = (#E866F7); //rosado
    b = (#FFFFFF); //blanco
    n = (#000000); //negro
    x = 250;
    y = 250;
    vx = random(-3, 3);
    vy = random(-3, 3);
    tx = random(-10, 10);
    ty = random (-10, 10);
  }
  
  //METODOS
  void juntas() {
    donout();
    puntor();
    puntob();
    puntor2();
    puntob2();
    movimiento();
    porte();
  }
  void movimiento() {
    if (x > width || x < 0) {
      vx*= -1;
    }
    if (y > height || y < 0) {
      vy*= -1;
    }
    x += vx;
    y += vy;
  }

  void donout() {
    noFill();
    stroke(c);
    strokeWeight(5);
    ellipse(x, y, tx +25, ty +25);
  }

  void puntor() {
    stroke(r);
    strokeWeight(10);
    point(x +100, y +100);
  }

  void puntob() {
    stroke(b);
    strokeWeight(15);
    point(x -100, y -100);
  }

  void puntob2() {
    stroke(b);
    strokeWeight(5);
    point(x +200, y +200);
  }

  void puntor2() {
    stroke(r);
    strokeWeight(20);
    point(x -200, y -200);
  }

  void porte() {
    if (x > width || x < 0) {
      tx*= -1;
    }
    if (y > height || y < 0) {
      ty*= -1;
    }
    x += tx;
    y += ty;
  }
}