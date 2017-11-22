class Clase {
  String fecha;
  int maxima, media, minima;

  Clase(String fecha, int maxima, int media, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;
  }

  void funcion() {
    ellipse(300,300,maxima*10,maxima*10);
    ellipse(300,300,media*10,media*10);
    ellipse(300,300,minima*10,minima*10);
    text(fecha,300, 500, 70, 80);
     
  }
}