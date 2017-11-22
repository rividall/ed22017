class Catalina {
  String fecha;
  int maxima, minima;

  Catalina(String fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
  }

void funcion() {
  fill(150);
  textSize(25);
  text("Enero, 2015", height/2, width/2);
  noFill();
  stroke(150);
  strokeWeight(2);
  ellipse(height/2, width/2, minima+350, minima+350);
}
}