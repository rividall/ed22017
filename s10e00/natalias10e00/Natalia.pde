class Natalia {
  float x, y, x2, y2, vx, vy, vx2, vy2, tam;
  color negro, blanco, burdeo;

  //constructor
  Natalia (float tam) {
    x = 0;
    y = 0;
    x2 = 500;
    y2 = 500;
    vx = random(-5, 5);
    vy = random(-5, 5);
    vx2 = random(-7, 7);
    vy2 = random(-7, 7);
    negro = (#000000);
    blanco = (#FFFFFF);
    burdeo = (#751212);
    this.tam = tam;
  }

  //metodos
  void uno() {
    mov1();
    cir1();
  }

  //movimiento random
  void mov1() {
    x += vx;
    y += vy;

    if (x < 0 || x > 500) { // si x es menor que 0 o x es mayor que 500
      vx *= -1;            // entonces la velocidad es -1
    }

    if (y < 0 || y > 500) { // si y es menor que 0 o y es mayor que 500
      vy *= -1;            // entonces la velocidad es -1
    }
  }

  //donuts moviendose como exploción
  void cir1() {
    stroke(negro);
    strokeWeight(10);
    noFill();
    ellipse(x, y, tam, tam);
  }


  void dos() {
    mov2();
    cir2();
  }

  //movimiento random
  void mov2() {
    x2 += vx2;
    y2 += vy2;

    if (x2 < 0 || x2 > 500) { // si x2 es menor que 0 o x2 es mayor que 500
      vx2 *= -1;            // entonces la velocidad es -1
    }

    if (y2 < 0 || y2 > 500) { // si y2 es menor que 0 o y2 es mayor que 500
      vy2 *= -1;            // entonces la velocidad es -1
    }
  }

  //donuts moviendose como exploción
  void cir2() {
    stroke(burdeo);
    strokeWeight(10);
    noFill();
    ellipse(x2, y2, tam, tam);
  }
}