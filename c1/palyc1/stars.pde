class Stars {
  int vel = 3;
  int c = color(253);
  float px, py, vx, vy;

  Stars() {
    show();
    move();
  }

  void move() {
    pushMatrix();
    translate(mouseX, mouseY);
    popMatrix();
  }

  void show() {
    float r = random(width + height);

    vx = random(-vel, vel);
    vy = random(-vel, vel);

    px = (width>>1)  + vx * r;
    py = (height>>1) + vy * r;
  }

  void display() {
    if ((px += vx) < 0 | px > width | (py += vy) < 0 | py > height) {
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