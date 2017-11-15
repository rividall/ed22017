class Stars {
  //int x, y, vel;
  int c = color(253);
  float x, y, vel, posX, posY, velX, velY;

  Stars() {
    vel = 3;
    velX = random(-vel, vel);
    velY = random(-vel, vel);

    show();
  }

  void show() {
    float r = random(width);

    x = width/2  + velX * r;
    y = height/2 + velY * r;
  }

  void display() {

    if (x > width | (x += velX) < 0 | y > height | (y += velY) < 0) {
     show();
    }

  }

  void hyperdrive() {

    if (keyPressed) {
      line(px, py, px - vx, py - vy) ;
    } else {
      set((int)px, (int)py, c);

    }
  }
}
