class Meses {
  float x, y, maxvis, minvis, nubes, dia, mes, i;
  int morado, amarillo, verde, rosado, celeste;

  Meses(int maxvis, int minvis, int nubes, int dia, int mes, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.minvis = map(minvis, 0, 10, 1, 20);
    this.maxvis = map(maxvis, 14, 31, 20, 37);
    this.nubes = map(nubes, 1, 7, 20, 28);
    this.dia = dia;
    this.mes = mes;

    amarillo = (#FCDB1C); //Máxima visibilidad
    verde = (#00CEBB); // Mínima visibilidad
    morado = (#9C64FF); // Nubes
    celeste = (#03DBFF); 
    rosado = (#E72FF5);
  }

  void anillos() {
    if (mes == 1) {
      x = width * .20;
      y = height * .3;
      enero();
    } else if (mes == 2) {
      x = width * .40;
      y = height * .3;
      febrero();
    } else if (mes == 3) {
      x = width * .60;
      y = height * .3;
      marzo();
    } else if (mes == 4) {
      x = width * .80;
      y = height * .3;
      abril();
    } else if (mes == 5) {
      x = width * .20;
      y = height * .5;
      mayo();
    } else if (mes == 6) {
      x = width * .40;
      y = height * .5;
      junio();
    } else if (mes == 7) {
      x = width * .60;
      y = height * .5;
      julio();
    } else if (mes == 8) {
      x = width * .80;
      y = height * .5;
      agosto();
    } else if (mes == 9) {
      x = width * .20;
      y = height * .7;
      septiembre();
    } else if (mes == 10) {
      x = width * .40;
      y = height * .7;
      octubre();
    } else if (mes == 11) {
      x = width * .60;
      y = height * .7;
      noviembre();
    } 
    if (mes == 12) {
      x = width * .80;
      y = height * .7;
      diciembre();
    }
  }
  void enero() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde); 
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void febrero() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void marzo() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void abril() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void mayo() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void junio() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void julio() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5); 
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void agosto() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void septiembre() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void octubre() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void noviembre() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
  void diciembre() {
    stroke(morado);
    strokeWeight(2);
    ellipse(x, y, nubes, nubes);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, minvis, minvis);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxvis, maxvis);
  }
}