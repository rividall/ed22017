class Sofia {
  String fecha;
  int maxima, minima, mean, x, y;

  Sofia (String fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
    this.mean = mean;
  }

  void prueba () {
    fill(255, 255, 0);
    stroke(mean);
    ellipse(maxima, maxima, minima, minima);
    
  }
}