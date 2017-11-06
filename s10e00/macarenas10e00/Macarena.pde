class Macarena {
  // Variables
  int x, y, t;
  float vx, vy;
  color amarillo, azul, negro, blanco;

  // Contructor
  Macarena() {

    x = width / 2;
    y = height / 2;
    t = 100;

    amarillo = color(#F59F14); // iniciación variable de color
    azul = color(#14BAF5); // iniciación variable de color
    negro = color(#050505); // iniciación variable de color
    blanco = color(#FFFFFF); // iniciación variable de color

    vx = random(-2 ,2);
    vy = random(-2 ,2);
  }
  // Métodos

  void reloj() { // inicio ámbito de función tres
    noStroke(); // las figuras de la función no tienen borde

    // elipse 1, marco reloj
    fill(amarillo);
    ellipse(x, y, t, t);

    // elipse 2
    fill(blanco);
    ellipse(x, y, t - 30, t - 30);

    // elipse 3, números
    stroke(azul);
    strokeWeight(2);
    ellipse(x, y, t - 90, t - 90);

    ////punteros
    //stroke(negro);
    ////strokeWeight(2);
    //line(x, y, x, y - 95);
    //line(x, y, x + 30, x - 50);
  } // fin ámbito de función tres

  void movimiento() {


    if (x > width || x <0) {
      vx *= -1;
    }
    if (y > height || y <0) {
      vy *= -1;
    }
    x += vx;
    y += vy;
  }
}