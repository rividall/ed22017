class Mes {
  float mes, lluvia, viento, vientito, dirviento;
  int i, x, y, d; 


  Mes(float mes, Float lluvia, int i, float viento, float dirviento) {
    this.mes = mes;
    this.lluvia = lluvia;
    this.i = i;
    this.viento = viento;
    this.dirviento = dirviento;
    x = 0;
    y = 0;
    vientito = viento;
    d = 0;
  }
  void mes1() {
    noStroke();
    fill(0);
   
    if (mes == 1) {
      pushMatrix();
      float dirvientito =  map(dirviento,6,351,0,5);
      translate(50, 250 + d);
      float angulo = map(mes, 0, 31, 0, TWO_PI);
      d += dirvientito;
      if( dirvientito + d >= dirviento){
        dirvientito=0;}
      for (i = 0; i < 31; i++) {
        rotate(angulo);
        fill(#8EB0A7);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 2) {
     pushMatrix();
      translate(130, 250 + d);

      float angulo = map(mes, 0, 29, 0, TWO_PI);

      for (i = 0; i < 29; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 3) {
       pushMatrix();
      translate(210, 250 +d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 30; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 4) {
     pushMatrix();
      translate(290, 250 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 5) {
       pushMatrix();
      translate(360, 250 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } 
    else if (mes == 6) {
      pushMatrix();
      translate(440, 250 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 7) {
      pushMatrix();
      translate(50, 450 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 8) {
      pushMatrix();
      translate(130, 450 + d);

      float angulo = map(mes, 0, 29, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 9) {
     pushMatrix();
      translate(210, 450 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 10) {
     pushMatrix();
      translate(290, 450 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    } else if (mes == 11) {
       pushMatrix();
      translate(360, 450 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      
      popMatrix();
    } 
    else if (mes == 12) {
      pushMatrix();
      translate(440, 450 + d);

      float angulo = map(mes, 0, 31, 0, TWO_PI);

      for (i = 0; i < 31; i++) {
        rotate(angulo);
        ellipse(50, 0, 7, 7);
      }
      popMatrix();
    }
  }
  }
  