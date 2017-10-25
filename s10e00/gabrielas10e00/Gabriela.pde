class Gabriela {
  // variable
  float x, y, x1, y1, velx, vely;
  color turqueza, negro, verde, blanco;

  //Constructor
  Gabriela() {
    noStroke();
    x = 250;
    y = 250;
    x1 = random(width);
    y1 = 300;
    velx = random(-2, 2);
    vely = random(-1, 2);
    turqueza = color (#3FC9BC);
    verde = color (#9FE57D);
    negro = color(0);
    blanco= color(255);
  }

  //Métodos
  void total() {
    movimiento();
    esfera();
  }
  void esfera() {
    fill(turqueza);
    ellipse(x, y, x1, x1);
    fill(verde);
    triangle(x, y+ x, x, y, x1, y1);
  }

  void movimiento() {
    x += velx;
    y += vely;

    if (x > width|| x < 1) {
      velx *= -1;
    }
    if ( y > height || y < 1) {
      vely *= -1;
    }
  }
}