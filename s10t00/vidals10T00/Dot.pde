class Dot {

  float x, y, w, z, vx, vy, ang;

  Dot (float vx, float vy, float ang) {
    x = random(width);
    y = random(height);
    this.vx = vx * 2;
    this.vy = vy * 2;
    this.ang = ang;
    w = 11;
    z = 2;
  }

  void display() {
    fill(20, y/3, x/5);
    ellipse(x, y, ang, ang+20);
    fill( 0,x/3, y/5);
    ellipse(x, y, ang+20, ang);
  }
  void displayRect() {
    fill(0);
    rect(x+(random(10, 30)), y+(random(10, 30)), w, w);
  }

  void move() {
    x += vx;
    y += vy;
    if (x > width || x < 0 || y > height || y < 0 ) {
      vx = -vx;
      vy = -vy;
    }
  }
  void sz() {
    w += z;
    if (w > 50 || w < 10 ) {
      z *= -1;
    }
  }
}