class Orbita {

  float px, py, posX, posY, a, velX, velY; // Variables de la clase.
  float r = 50; // Radio de amplitud de las orbitas.

  Orbita(float px, float py, float posX, float posY) { // Constructor de Orbita.
    this.px = px;
    this.py = py;
    this.posX = posX;
    this.posY = posY; // Esta conversion nos permite utilizar valores que vienen de afuera como si fueran locales.
  }

  void displayOrbita() { // Acá se dibujan los distintos elipses.
    noStroke();

    fill(250, 250, 52);
    ellipse(posX, posY, 22, 22); //Elipse del fondo.

    float d = dist(mouseX, mouseY, posX, posY);
    float dMap = map(d, 0, 100, 0, 15);  // Estas funciones calculan la distancia desde cada elipse hasta el mouse.
    fill((px/4)+1, 0, (r)+1);
    ellipse(px, py, dMap*2, dMap*2); // Elipse orbital.

    fill(11,0,11);  // Elipse vacío.
    ellipse(px, py, tamN, tamN);
  }

  void moveOrbita() { // Esta función mueve los elipses en una orbota alrededor del elipse del fondo.
    velX = .006;
    px = r * cos(a) + (posX);
    py = r * sin(a) + (posY); // Movimiento no lineal.

    a += velX;
  }
}
