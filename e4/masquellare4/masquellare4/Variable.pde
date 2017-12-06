class Variable {

  int maxima, minima, media, maxviento, humedad, niveldelmar, i, x, y, d;
  float mes, lluvia, vy, vx, z, r, viento, vientito;
  color myColor;
  Variable(float mes, int maxima, int minima, int humedad, float viento, float lluvia, int i) {
    this.mes = mes;
    this.maxima = maxima;
    this.minima = minima;
    this.humedad = humedad;
    this.viento = viento;
    this.lluvia = lluvia;

    this.i = i;
    myColor = #e6795f;


    x = 1;
    y = 1;
    d = 1;
    vy = 1;
    vx = 2;
    z = 0;
    r = 0;
  }
  void singular() {

    if (mes == 1) {
      x=40;
      mes = map(i, 0, 30, 5, height);

      float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
      color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 2) {
      x = 80;
      mes = map(i, 31, 31 + 28, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
      color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
     line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 3) {
      x = 120;
      mes = map(i, 60, 60 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
    color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
    rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 4) {
      x = 160;
      mes = map(i, 91, 91 + 29, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
     stroke(#c3ff6c);
     line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 5) {
      x = 200;
      mes = map(i, 121, 121 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
     rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
     stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 6) {
      x = 240;
      mes = map(i, 152, 152 + 29, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 7) {
      x = 280;
      mes = map(i, 182, 182 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
      color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 8) {
      x = 320;

      mes = map(i, 213, 213 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
       rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 9) {
      x = 360;
      mes = map(i, 244, 244 + 29, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 10) {
      x = 400;
      mes = map(i, 274, 274 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
      rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 11) {
      x = 440;
      mes = map(i, 305, 305 + 29, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
     color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
     rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito = map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
     line(0, 0,10, 0);
      
      popMatrix();
    } else if (mes == 12) {
      x = 480;
      mes = map(i, 335, 335 + 30, 5, height);
       float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
      color colorlluvia = lerpColor(#4d9c66, #09768d, atm);
      fill(colorlluvia);
      rectMode(CENTER);
       rect(x, y+ mes, maxima, maxima);
      pushMatrix(); 
      translate(x, y+mes);
      vientito= map(minima, -3, 17, -45, 45);
      float angulo = radians(vientito);
      rotate(angulo-45);
      strokeWeight(2);
      stroke(#c3ff6c);
      line(0, 0,10, 0);
      
      popMatrix();
    }
    noStroke();
    //for (int t = 0; t < objetos.length; t++) {
    //float atm = map(lluvia, 0, 1, 0, 0.99);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
    //  color colorlluvia = lerpColor(#8EB0A7, #D8B8A7, atm);
    //  fill(colorlluvia);
    //  rect(x, y+ mes, 10, 10);

    //rect(x1,y1,ancho,alto)
    //}
  }


}