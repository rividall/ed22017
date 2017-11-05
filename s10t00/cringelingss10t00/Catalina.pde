class Catalina {
  // Variables
  float x, y, vx, vy, velx, vely;
  int a, b, c;

  int colores1;
  int col = 1;

  color[] colores = new color [2];

  // Constructor
  Catalina() {
    x = 0;
    y = height/2;
    vx = random(1, 9);
    vy = random(0, 5);
    a = 15;
    b = 15;
    c = 20;
    colores[0] = #5D7623;
    colores[1] = #B3D170;
  }

  //Métodos
  void desplazamiento() {
    x += vx;
    y += vy;
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
  }

  void colorbolitas() {
    fill((int)random(colores[0], colores[1]));
    noStroke();
    ellipse(x, y, 50, 50);
  }

  void desplazamiento1() {
    for (int i = a; i <= height - mouseX; i += c) {
      for (int j = b; j <= width - mouseY; j += c) {
        stroke((int)random(colores[0], colores[1]));
        noFill();
        rect(i, j, a, b);
      }
    }
  }
}