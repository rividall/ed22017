class Enero {
  String fecha;
  int max, min, x, y;

// constructor
  Enero(String fecha, int max, int min) {
    this.fecha = fecha;
    this.max = max;
    this.min = min;
    x = width/2;
    y = height/2;
  }

  void dia() {
    //fill(255, 120, 100, fecha);
    ellipse(x, y, max, max);
  }
}