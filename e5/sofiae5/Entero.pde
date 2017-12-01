class Entero {
  float n, c, r, x, y, mint, maxt, rocio, precipitacion, i, temperatura, lluvia;
  int morado, amarillo, celeste, rosado, verde, blanco;

  Entero(int maxt, int rocio, int precipitacion, int mint, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.maxt = map(maxt, 15, 33, 30, 66);
    this.mint = map(mint, 4, 19, 8, 38);
    this.precipitacion = precipitacion;
    this.rocio = rocio;
    this.x = 250; // Mint
    this.r = 120; // Maxt
    this.c = 80; // Rocio
    this.n = 200; // Lluvia
    amarillo = (#FCDB1C); // Máximo Rocío
    celeste = (#03DBFF); // Máxima humedad
    morado = (#9C64FF); // Máxima temperatura
    rosado = (#E72FF5); // Máxima precipitación
    verde = (#00CEBB); 

  }
  void maxtem() {
    pushMatrix();
    rotate(i);
    stroke(morado);
    strokeWeight(1);
    line(r, y, r+ maxt, y);
    popMatrix();
  }

  void rocio() {
    pushMatrix();
    rotate(i);
    stroke(amarillo);
    line(c, y, c+ rocio, y);
    popMatrix();
  }

  void mintem() {
    pushMatrix();
    rotate(i);
    stroke(#03DBFF);
    line(x, y, x+ mint, y);
    popMatrix();
  }

  void lluvia() {
    pushMatrix();
    rotate(i);
    stroke(#E72FF5);
    line(n, y, n+ precipitacion, y);
    popMatrix();
  }
}