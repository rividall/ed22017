class Macarena { // inicio clase Macarena
  int x, y;
  float vx, vy, tx, ty; 
  color amarillo, azul, negro, blanco;

  Macarena() { // inicio constructor
    x = width/2;
    y = height/2;

    vx = random(-2, 2);
    vy = random(-2, 2);

    tx = 10;
    ty = 10;

    amarillo = color(#F59F14); // iniciación variable de color
    azul = color(#14BAF5); // iniciación variable de color
    negro = color(#050505); // iniciación variable de color
    blanco = color(#FFFFFF); // iniciación variable de color
  }// fin constructor

  //Métodos
  void todas() {
    movimiento();
    uno();
    dos();
    tres();
    tamano();
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

  void tamano() {
    if (x > width || x < 0) {
      tx *= -1;
    }
    if (y > height || y < 0) {
      ty *= -1;
    }
    x += tx;
    y += ty;
  }

  void uno() {
    fill(amarillo);
    ellipse(x, y, tx, ty);
    ellipse(x, y, tx +10, ty + 10);
  }

  void dos() {
    noStroke();
    fill(blanco);
    ellipse(x + 20, y + 20, tx, ty);
  }
  
   void tres() {
    noStroke();
    fill(azul);
    ellipse(x + 40, y + 40, tx, ty);
  }
}// fin clase Macarena