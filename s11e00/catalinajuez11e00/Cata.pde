class Cata {
  float velx;
  int y;

  Cata () {
    y = 250;
    this.velx= 1;
  }


  void circulo () {
    strokeWeight(1);
    stroke(255);
    //line(velx, y+sin(velx/15)*50, velx-250, y+sin(velx/15+(PI)/2)*50);
    fill (200, 50, 15);
    noStroke();
    ellipse(velx, y+sin(velx/15)*50, 50, 50);
  }

  void giro( float a) {
    pushMatrix();
    translate(velx, y);
    rotate (velx/10);

    rect(50, 50, 50, 50);
    rectMode(CENTER);

    popMatrix();
  }


  void movimiento() {
    velx += 2;
  }

  void repeticion() {
    if (velx > width + y) {
      velx = -y;
    };
  }
}