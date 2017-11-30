class Clase {
  String fecha;
  int maxima, minima, media, min, max, hmedia, posx, posy;

  Clase(String fecha, int tmaxima, int tminima, int tmedia, int hmedia) {
    this.fecha = fecha;
    this.maxima = tmaxima;
    this.minima = tminima;
    this.media = tmedia;
    this.hmedia = hmedia;
  }
  void pelotas(int posx, int posy) {
    this.posx = posx;
    this.posy = posy;
    
    enero(posx, posy);
    humedad(posx, posy);
  }
  void enero(int posx, int posy) {
    strokeWeight(2);
    noStroke();
    fill(media*5, media*5, 0);
    ellipse(posx, posy, 30, 30);
  }
  void humedad(int posx, int posy) {
    strokeWeight(2);
    stroke(0, 0, hmedia);
    noFill();
    ellipse(posx, posy, 30, 30);
  }
}