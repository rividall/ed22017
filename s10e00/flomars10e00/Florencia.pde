class Florencia {
  //variables
  float x, y, vx, vy;
  color c, d;
  //constructor
  Florencia() {
    x = 100;
    y = 250;
    vx = random(-3, 3);
    vy = random(-3, 3);
    c = color(#21815E);
    d = color(#1CE8E6);
  }
  //metodos
  void movimiento () {
    x += vx;
    y += vy;

    if (x > 450 || x < 50) {
      vx *= -1;
    }
    if (y > 450 || y < 50) {
      vy *= -1;
    }
  }

  void function () {
    strokeWeight(5);
    stroke(0);
    fill(d);
    ellipse(x - 50, y - 50,  x - 10, y - 10);
    
    strokeWeight(3);
    stroke(0);
    fill(c);
    ellipse(x, y,  100,  100);
    
    
    
  }
}