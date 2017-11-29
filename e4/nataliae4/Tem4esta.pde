class Tem12mes {
   /*Esta clase muestra el año completo con las temperaturas máximas y mínimas
  junto con la humedad máxima y mínima y las nubes del año completo*/
  int maxima, minima, mes, dia;
  float i, maxhum, minhum, nub;


  Tem12mes(int mes, int maxima, int minima, float i, float maxhum, float minhum, float nub) {
    this.mes = mes;
    this.maxima = (int)map(maxima, 0, 40, 5, 80);
    this.minima = (int)map(minima, 0, 40, 5, 80);
    this.maxhum = (float)map(maxhum, 0, 0.3, 0.2, 0.5);
    this.minhum = (float)map(minhum, 0, 0.3, 0.2, 0.5);
    this.nub = (float)map(nub, 1, 15, 5, 45);
    this.i = map(i, 0, 364, -PI/2, TWO_PI-PI/2);
  }

  void verano() {//cada estación es un color y muestra Tem máx y min.
    stroke(#CED7E0);//azul oscuro

    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    strokeWeight(1);
    pushMatrix();
    rotate(i);
    line(150, 0, 150 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(100, 0, 100 + minima, 0);
    popMatrix();
  }

  void veranohum() {//puntos 
    stroke(#CED7E0);//azul oscuro

    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    pushMatrix();
    rotate(i);
    point(10, maxhum); 
    point(10, minhum);
    popMatrix();
  }

  void vernub() {
    stroke(#CED7E0);//azul oscuro

    if (mes == 2) {
      stroke(#6888AC);
    } else if (mes == 3) {
      stroke(#2B3F58);
    }

    pushMatrix();
    rotate(i);
    noFill();
    translate(nub, nub);
    ellipse(170, 170, 10, 10);
    popMatrix();
  }

  void otono() {//cada estación es un color y muestra Tem máx y min.
    stroke(#F8D2CB);//rosado claro

    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    strokeWeight(1);
    pushMatrix();
    rotate(i);
    line(150, 0, 150 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(100, 0, 100 + minima, 0);
    popMatrix();
  }

  void otonohum() {
    stroke(#F8D2CB);//rosado claro

    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    point(10, maxhum); 
    point(10, minhum);
    popMatrix();
  }

  void otonub() {
    stroke(#F8D2CB);//rosado claro

    if (mes == 5) {
      stroke(#F39FB3);
    } else if (mes == 6) {
      stroke(#E9325B);
    }

    pushMatrix();
    rotate(i);
    noFill();
    translate(nub, nub);
    ellipse(170, 170, 10, 10);
    popMatrix();
  }

  void invierno() {//cada estación es un color y muestra Tem máx y min.
    stroke(#DDE063);//verdeagua

    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    strokeWeight(1);
    pushMatrix();
    rotate(i);
    line(150, 0, 150 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(100, 0, 100 + minima, 0);
    popMatrix();
  }

  void inviernohum() {
    stroke(#DDE063);//verdeagua

    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    point(10, maxhum); 
    point(10, minhum);
    popMatrix();
  }

  void invnub() {
    stroke(#DDE063);//verdeagua

    if (mes == 8) {
      stroke(#AECC3D);
    } else if (mes == 9) {
      stroke(#6EAA2E);
    }

    pushMatrix();
    rotate(i);
    noFill();
    translate(nub, nub);
    ellipse(170, 170, 10, 10);
    popMatrix();
  }

  void primavera() {//cada estación es un color y muestra Tem máx y min.
    stroke(#E3C38B);//naranjo pastel

    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    strokeWeight(1);
    pushMatrix();
    rotate(i);
    line(150, 0, 150 + maxima, 0);
    popMatrix();

    pushMatrix();
    rotate(i);
    line(100, 0, 100 + minima, 0);
    popMatrix();
  }

  void primaverahum() {
    stroke(#E3C38B);//naranjo pastel

    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }
    pushMatrix();
    rotate(i);
    point(10, maxhum); 
    point(10, minhum);
    popMatrix();
  }

  void prinub() {
    stroke(#E3C38B);//naranjo pastel

    if (mes == 11) {
      stroke(#E77B50);
    } else if (mes == 12) {
      stroke(#9A4441);
    }

    pushMatrix();
    rotate(i);
    noFill();
    translate(nub, nub);
    ellipse(170, 170, 10, 10);
    popMatrix();
  }
}