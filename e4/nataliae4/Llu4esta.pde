class Llu4esta {
  /*esta clase muestra las precipitaciones y la humedad media dividido en las
  cuatro estaciones del año*/
  float pre, i;
  int mes, medhum;

  Llu4esta(int mes, float pre, float i, int medhum) {
    this.mes = mes;
    this.medhum = medhum;
    this.pre = (int)map(pre, 1, 14, 100, 140);
    this.i = map(i, 0, 91, -PI/2, TWO_PI-PI/2);
  }

  void veranol() {//cada estación es un color y muestra la precipitación
    stroke(#CED7E0);//azul oscuro

    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    strokeWeight(1);
    rotate(i);
    noFill();
    ellipse(50, pre, 10, 10);//distancia es la precipitación
  }

  void veranomd() {//cada estación es un color y muestra media humedad como valor y
    stroke(#CED7E0);//azul oscuro

    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    rotate(i);
    strokeWeight(3);
    point(10, medhum);
  }

  void otonol() {//cada estación es un color y muestra la precipitación
    stroke(#F8D2CB);//rosado claro

    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    strokeWeight(1);
    rotate(i);
    noFill();
    ellipse(50, pre, 10, 10);//distancia es la precipitación
  }

  void otonomd() {//cada estación es un color y muestra media humedad como valor y
    stroke(#F8D2CB);//rosado claro

    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    rotate(i);
    strokeWeight(3);
    point(10, medhum);
  }

  void inviernol() {//cada estación es un color y muestra la precipitación
    stroke(#DDE063);//verdeagua

    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    strokeWeight(1);
    rotate(i);
    noFill();
    ellipse(50, pre, 10, 10);
  }

  void inviernomd() {//cada estación es un color y muestra media humedad como valor y
    stroke(#DDE063);//verdeagua

    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    rotate(i);
    strokeWeight(3);
    point(10, medhum);
  }

  void primaveral() {//cada estación es un color y muestra la precipitación
    stroke(#E3C38B);//naranjo pastel

    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    strokeWeight(1);
    rotate(i);
    noFill();
    ellipse(50, pre, 10, 10);
  }

  void primaveramh() {//cada estación es un color y muestra media humedad como valor y
    stroke(#E3C38B);//naranjo pastel

    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    rotate(i);
    strokeWeight(3);
    point(10, medhum);
  }
}