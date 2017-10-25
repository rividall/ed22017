class Joaquin {
  boolean t = false;
  int x, y, s;
  int vx, vy;

  Joaquin(int w, int h) {
    vx=(int)random(-15, 15);
    vy=(int)random(-15, 15);
    x = w;
    y = h;
    s = (250);
  }



  void pokebola() {
    movimiento();
    tres();
    keyPressed();
  }
  void movimiento() {
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
    x += vx;
    y += vy;
  }

  void tres() {
    //función 3
    fill(255, 0, 0);
    arc(x, y, s, s, PI, PI*2, CHORD);
    fill(255);
    arc(x, y, s, s, 0, PI, CHORD);
    ellipse(x, y, s - 177, s - 177);
  }
  void keyPressed() {
    if (key=='q') {
      x = 50;
      y = 50;
    }
    if (key=='w') {
      x = 750;
      y = 50;
    }
    if (key == 'e') {
      x = 750;
      y = 750;
    }
    if (key == 'r') {
      x = 50;
      y = 750;
    } else {
      x = x + vx;
      y = y + vy;
    }
    }
  }