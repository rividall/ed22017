class Cata {
  // Variables
  float velx2, amt, a, r;
  int x, y, m, tam;
  color miColor3;

  // Constructor
  Cata () {
    x = width/2;
    y = height/2;
    tam = 70; // Tamaño cubos.
    m = 150;  // Para poner a la misma distancia los cubos.

    this.velx2= 1;
    amt = frameCount *.5;
    a = 1;
    r = 0.4; // Rotación para eje X.

    miColor= color(228, 115, 76);
    miColor2= color(113, 114, 114);
    miColor3= color(83, 83, 82);
  }

  // Metodos
  void giro() {
    strokeWeight(1);
    noFill();
    pushMatrix();
    translate(x, y - m, mouseY/3); // El mouseY define la distancia con el eje Z.
    rotateY(velx2);
    //rotateX(r);
    stroke(miColor3);
    box(tam); // Figura 3D primitiva.
    popMatrix();
  }

  void giro1() {
    pushMatrix();
    translate(x, y + m, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  void giro2() {
    pushMatrix();
    translate(x -m, y, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  void giro3() {
    pushMatrix();
    translate(x + m, y, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  void movimiento() {
    velx2 += 7.02;   // Definimos el valor de la rotación en eje Y
  }

  void cambio() {
    if (mouseX > width/ 2) {
      r = 0.4;
    } else {
      r = 0;
    }
  }

  void keyPressed () {    // Al apretar “a” y “s” nuestra rotación en eje X cambia, lo cual cambia la figura que los cubos crean al moverse
    if (key == 'a') {
      r = 0.4;
    }
    if (key == 's') {
      r = 0;
    }
  }
}
