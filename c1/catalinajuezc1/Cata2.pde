class Cata2 {
  // Variables
  float velx, tam; 
  int x, y;
  color miColor, miColor3;

  //Constructor
  Cata2 () {
    this.velx= 1;
    miColor= color(228, 115, 76);
    miColor3= color(83, 83, 82);
    x = width/2;
    y = height/2;
    tam = 550;  // Tamaño círculos.
  }

  // Metodos
  void circulo1 () {
    strokeWeight(1);
    stroke(miColor3);
    noFill();
    translate(0, 0, mouseY/3); // Todo lo que siga a continuación de este código moverá su eje Z en relación al mouseY.
    ellipse(x, y, tam, tam);
  }

  void circulo2 () {
    strokeWeight(1);
    stroke(miColor);
    noFill();
    ellipse(x, y, mouseY - tam, mouseY - tam); // Su tamaño además depende del mouseY.
  }

  void movimiento2() {
    velx += 2;
  }

  void keyPressed () { // Al apretar "d" o "f" el tamaño de los círculos cambia.
    if (key == 'd') {
      tam = 150;
    }
    if (key == 'f') {
      tam = 550;
    }
  }
}