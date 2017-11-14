class Ondas { // inicio clase Onda

  //variables
  float x, y; // declaración de variables posición
  float vx, vy; // declaración de variables de velocidad

  //contructor
  Ondas() {
    noStroke();
    x = width/2; // iniciación de variable x
    y = height/2; // iniciación de variable y

    vx = random(1, 3); // iniciación de variable velocidad x
  }

  //métodos
  void movimiento() { // función de movimiento
    if (x > width) { // si x es mayor que el ancho del canvas
      x = 0; // entonces x es igual a 0
    }
    x += vx; // a x se le suma la velocidad x
    y += vy; // a y se le suma la velocidad y
  }

  void figura() { // función que se dibuja
    fill(#14BAF5);
    noStroke();
    ellipse(x, y, 5, 5);
  }

  void onda(float amt, float a) { // Función onda
    vy = amt * cos(a + random(20));
  }
}
