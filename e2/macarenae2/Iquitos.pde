class Iquitos {
  int fecha, max, min, x, y, vx, viento;
  float vy, rain;
  color summer, spring;

  // constructor
  Iquitos(int fecha, int max, int min, float rain, int viento) {
    this.fecha = fecha;
    this.max = max;
    this.min = min;
    this.rain = rain;
    this.viento = viento;
    x = width/3;
    y = height/3;
    vy = rain;
    summer = color(#89C92B);
    spring = color(#AE2BC9);
  }

  // funcion dibujo
  void funcion() {
    //fill(255, 120, 100, fecha);
    noFill();
    stroke(#89C92B);
    ellipse(x, y, max, max);
    ellipse(x, y, viento, viento);
  }

  // movimiento lluvia
  void movimiento() {
    if (x > width/20) { // si x es mayor que el ancho del canvas
      x = 0; // entonces x es igual a 0
    }
    x += vx; // a x se le suma la velocidad x
    y += vy; // a y se le suma la velocidad y
  }
  
  // movimiento circular
  void mov() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount*min);
    funcion();
    popMatrix();
  }
  
  // cambio colores por estaciones
  void verano() {
    if (fecha <= 0 && fecha > 92) {
      fecha = 92;
    }
    stroke(#89C92B);
  }

  void primavera() {
    if (fecha <= 93 && fecha > 182) {
      fecha = 181;
    }
    stroke(#AE2BC9);
  }
}