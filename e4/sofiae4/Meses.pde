class Meses {
  float x, y, maxt, mint, vis, dia, mes, i;
  int morado, amarillo, verde, rosado, celeste;

  Meses(int maxt, int mint, int vis, int dia, int mes, int i) {
    this.i = map(i, 0, 364, 0, TWO_PI);
    this.maxt = map(maxt, 21, 28, 63, 84);
    this.mint = map(mint, 9, 18, 27, 54);
    this.vis = map(vis, 5, 9, 10, 18);
    this.dia = dia;
    this.mes = mes;

    amarillo = (#FCDB1C); //Máxima temperatura
    verde = (#00CEBB); // Mínima temperatura
    morado = (#CA83FA); // Mínima visibilidad
    celeste = (#03FCFA); 
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
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde); 
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void febrero() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void marzo() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void abril() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void mayo() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void junio() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void julio() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5); 
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void agosto() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void septiembre() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void octubre() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void noviembre() {
    strokeWeight(vis);
    stroke(morado);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
  void diciembre() {
    stroke(morado);
    strokeWeight(vis);
    point(x, y);
    noFill();
    strokeWeight(0.5);
    stroke(verde);
    ellipse(x, y, mint, mint);
    noFill();
    strokeWeight(0.5);
    stroke(amarillo);
    ellipse(x, y, maxt, maxt);
  }
}