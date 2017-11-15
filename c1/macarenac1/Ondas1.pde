class Ondas1 { // inicio clase Onda1

  //variables
  float x, y; // declaración de variables posición
  float vx, vy; // declaración de variables de velocidad

  //contructor
  Ondas1() {
    noStroke();
    x = width/2; // iniciación de variable x
    y = height/2; // iniciación de variable y

    vx = random(-3, -1); // iniciación de variable velocidad x
  }
  //métodos
  void movimiento1() { // función de movimiento
    if (x < 0) { // si x es mayor que el ancho del canvas
      x = width; // entonces x es igual a 0
    }
    x += vx; // a x se le suma la velocidad x
    y += vy; // a y se le suma la velocidad y
  }
  void figura1() { // función que se dibuja
    fill(#14BAF5);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  void onda1(float amt, float a) { // Función onda
    vy = amt * cos(a + random(10));
  }
}
