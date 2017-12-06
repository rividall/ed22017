class Iquitos {
  String fecha;
  int max, min, dep, hum, x, y;

  // constructor
  Iquitos(String fecha, int max, int min, int dep, int hum) {
    this.fecha = fecha;
    this.max = max;
    this.min = min;
    this.dep = dep;
    this.hum = hum;
    x = 250;
    y = 250;
  }

  void vermor() {
    stroke(78, 1, 90, 50); // Ellipse verde maxima dep point
    noFill();
    ellipse(x, y, dep*3, dep*3);
    noFill();
    stroke(0, 206, 187, 20);
    ellipse(x, y, hum*3, hum*3); // Ellipe morado maxima humedad
  }

  void maxima() {
    resetMatrix();
    translate(x, y);
    rotate(frameCount*max);
    stroke(252, 219, 28);
    point(max*3, max*3); // Punto amarillos temperatura máxima
  }
  void minima() {
    resetMatrix();
    translate(x, y);
    rotate(frameCount*min);
    stroke(255);
    point(min*3, min*3); // Punto blanco temperatura minima
  }
}