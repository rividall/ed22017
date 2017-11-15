class Cata {

  PVector pos; // Creamos nuestros vectores
  PVector vel;
  PVector acel;
  float limiteVel;

  Cata () {

    pos = new PVector(250, 250); // Asignamos sus valores
    vel = new PVector(0, 0);
    acel = new PVector (0.5, 0);
    limiteVel = 15;
  }

  void circulo () {
    strokeWeight(1);
    stroke(255);
    fill (200, 50, 15);
    noStroke();
    ellipse(pos.x, pos.y, 50, 50);
  }

  void movimiento() {
    vel.add(acel); // Sumamos la aceleración a nuestra velocidad
    pos.add(vel); // Sumamos la velocidad a la posición
    vel.limit(limiteVel); // Definimos una velocidad limite
  }

  void repeticion() {
    if (pos.x > width) pos.x = 0;
    if (pos.x < 0) pos.x = width;
    if (pos.y > height) pos.y = 0;
    if (pos.y < 0) pos.x = height;
  }
  
  void keyPressed () {
    if (key == 'x') {   // Si apretas “x”  al vector “acel” se le resta 1.
      acel.x = -0.5; // Cambiamos nuestra acelereacón a  negativo
    }
    if (key == 'y') {   // Si apretas “x”  al vector “acel” se le suma 1.
      acel.x = +0.5; // Volvemos a poner nuestra aceleración como positivo
    }
  }
}