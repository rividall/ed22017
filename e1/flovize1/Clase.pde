class Clase {
  String fecha;
  int maxima, minima;

  Clase(String fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
  }


  void funcion() {
    ellipseMode(CORNER);
    stroke(0);
    strokeWeight(2);
    fill(0,0,200,maxima);
    ellipse(100, 400, minima+250, maxima-250);
    fill(0,150);
    textSize(10);
    text(fecha, 300, maxima+80);
    
    
  }
}