class Dot {

  float x, y, vx, vy, ang;

  Dot (float vx, float vy, float ang) {
    x = random(width);
    y = random(height);
    this.vx = vx * 2;
    this.vy = vy * 2;
    this.ang = ang;
  }

  void display() {
    fill(y/4, 0, x/4);
    ellipse(x, y, ang, ang+20);

    fill((x/3), 0, (y/5));
    ellipse(x, y, ang+20, ang);
  }

  void move() {
    x += vx;
    y += vy;
    if (x > width || x < 0 || y > height || y < 0 ) {
      vx = -vx;
      vy = -vy;
    }
  }
}