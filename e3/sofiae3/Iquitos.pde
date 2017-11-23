class Iquitos {
  String fecha;
  int maxt, mint, meant, meandp, meanh, meanv, x, y;

  // constructor
  Iquitos(String fecha, int maxt, int mint, int meant, int meandp, int meanh, int meanv) {
    this.fecha = fecha;
    this.maxt = maxt;
    this.mint = mint;
    this.meant = meant;
    this.meandp = meandp;
    this.meanh = meanh;
    this.meanv = meanv;
    x = 250;
    y = 250;
  }

  void vermor() {
    stroke(78, 1, 90, 50); // Ellipse verde maxima dep point
    noFill();
    ellipse(x, y, meandp*3, meandp*3);
    noFill();
    stroke(0, 206, 187, 20);
    ellipse(x, y, meanh*3, meanh*3); // Ellipe morado maxima humedad
  }

  void maxima() {
    resetMatrix();
    translate(x, y);
    rotate(frameCount*maxt);
    stroke(252, 219, 28);
    point(maxt*3, maxt*3); // Punto amarillos temperatura máxima
  }
  void minima() {
    resetMatrix();
    translate(x, y);
    rotate(frameCount*mint);
    stroke(255);
    point(mint*3, mint*3); // Punto blanco temperatura minima
  }
}