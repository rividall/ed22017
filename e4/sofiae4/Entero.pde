class Entero {
  float n, c, r, x, y, maxt, rocio, humedad, precipitacion, i, temperatura, lluvia;
  int morado, amarillo, celeste, rosado, verde;

  Entero(int maxt, int rocio, int humedad, int precipitacion, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.maxt = map(maxt, 15, 33, 30, 66);
    this.humedad = map(humedad, 1, 100, 10, 110);
    this.precipitacion = precipitacion;
    this.rocio = rocio;
    this.x = 350;
    this.r = 120;
    this.c = 80;
    this.n = 200;

    amarillo = (#FCDB1C); 
    celeste = (#03FCFA); 
    morado = (#CA83FA);
    rosado = (#E72FF5);
    verde = (#00CEBB);
  }
  void temperatura() {
    pushMatrix();
    rotate(i);
    stroke(morado);
    strokeWeight(1);
    line(r, y, r+ maxt, y);
    popMatrix();

    if (maxt < 25) {
      stroke(celeste);
    } else if (maxt > 24) {
      stroke(morado);
    }
  }

  void rocio() {
    pushMatrix();
    rotate(i);
    stroke(amarillo);
    line(c, y, c+ rocio, y);
    popMatrix();
  }

  void humedad() {
    pushMatrix();
    rotate(i);
    stroke(celeste);
    line(n, y, n+ humedad, y);
    popMatrix();
  }

  void lluvia() {
    pushMatrix();
    rotate(i);
    stroke(rosado);
    line(x, y, x+ precipitacion, y);
    popMatrix();
  }
}