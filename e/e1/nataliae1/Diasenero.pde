class Diasenero {
  String fecha;
  int maxima, minima, x, y;
  

 Diasenero(String fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
    x = height/2;
    y = height/2;
  }

  void fu() {
    strokeWeight(1);
    noFill();
    rect(x, y, maxima, minima);
  }
}