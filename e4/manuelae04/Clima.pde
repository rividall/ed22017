class Clima { //Clase
  int t, r;
  int max, min, x, y, ano, mes, dia, viento, maxV, minV, meanV, maxH, minH; //Variables locales.



  // constructor
  Clima(int ano, int mes, int dia, int max, int min, int viento, int t, int maxV, int minV, int meanV, int maxH, int minH) {
    this.ano = ano;
    this.mes=mes;
    //this.dia = (int)map(dia, 0, 364, 0, 1);
    this.dia=dia;
    this.max = max;
    this.min = min;
    this.viento = viento;
    this.maxV =maxV;
    this.minV = minV;
    this.meanV = meanV;
    this.maxH = maxH;
    this.minH = minH;
    this.t=t;
    r = 65;
  }


  void grilla () {

    strokeWeight(3);
    stroke(255); //amarillo

    pushMatrix();
    translate(x+15, y);
    rotate(frameCount *viento*.01);
    point(0, 13);
    //point(width/2 + cos(13) * viento, height/2 + sin(13) * viento);
    popMatrix();

    if (mes == 1) {
      y = 53;
      x = (int)map(t, 0, 31, 0, width);
    } else if (mes == 2) {
      y = 108;
      x = (int)map(t, 32, 59, 0, width);
    } else if (mes == 3) {
      y = 162;
      x = (int)map(t, 60, 90, 0, width);
    } else if (mes == 4) {
      y = 216;
      x = (int)map(t, 91, 120, 0, width);
    } else if (mes == 5) {
      y = 270;
      x = (int)map(t, 121, 151, 0, width);
    } else if (mes == 6) {
      y = 324;
      x = (int)map(t, 152, 181, 0, width);
    } else if (mes == 7) {
      y = 378;
      x = (int)map(t, 182, 212, 0, width);
    } else if (mes == 8) {
      y = 432;
      x = (int)map(t, 213, 243, 0, width);
    } else if (mes == 9) {
      y = 486;
      x = (int)map(t, 244, 273, 0, width);
    } else if (mes == 10) {
      y = 540;
      x = (int)map(t, 274, 304, 0, width);
    } else if (mes == 11) {
      y = 594;
      x = (int)map(t, 305, 334, 0, width);
    } else if (mes == 12) {
      y = 648;
      x = (int)map(t, 335, 364, 0, width);
    }
  } 

  /* void visibilidad () {
   strokeWeight(3);
   stroke(255); //amarillo
   
   pushMatrix();
   translate(x+15, y);
   //rotate(frameCount *viento*.01);
   point(0, 13);
   //point(width/2 + cos(13) * viento, height/2 + sin(13) * viento);
   x = (int)map(t, 0, 365, 0, width);
   popMatrix();
   }*/

  void humedad() {
    pushMatrix();
    translate(x+10, y);
    noFill();
    strokeWeight(3);
    //maxH = (int)map(maxH, 0, 100, 0, 50);
    stroke(#B0E5F2, minH*5);
    //rotate(frameCount *viento*.01);
    ellipse(0, 0, maxH/2, maxH/2);
    // minH=(int)map(minH,4,39,2,20);
    popMatrix();

    if (mes == 1) {
      y = 53;
      x = (int)map(t, 0, 31, 0, width);
    } else if (mes == 2) {
      y = 108;
      x = (int)map(t, 32, 59, 0, width);
    } else if (mes == 3) {
      y = 162;
      x = (int)map(t, 60, 90, 0, width);
    } else if (mes == 4) {
      y = 216;
      x = (int)map(t, 91, 120, 0, width);
    } else if (mes == 5) {
      y = 270;
      x = (int)map(t, 121, 151, 0, width);
    } else if (mes == 6) {
      y = 324;
      x = (int)map(t, 152, 181, 0, width);
    } else if (mes == 7) {
      y = 378;
      x = (int)map(t, 182, 212, 0, width);
    } else if (mes == 8) {
      y = 432;
      x = (int)map(t, 213, 243, 0, width);
    } else if (mes == 9) {
      y = 486;
      x = (int)map(t, 244, 273, 0, width);
    } else if (mes == 10) {
      y = 540;
      x = (int)map(t, 274, 304, 0, width);
    } else if (mes == 11) {
      y = 594;
      x = (int)map(t, 305, 334, 0, width);
    } else if (mes == 12) {
      y = 648;
      x = (int)map(t, 335, 364, 0, width);
    };
  }

  /*Función Enero*/
  void enero() {
    pushMatrix();
    translate(112.5, 116);
    float tr = map(t, 0, 30, 0, TWO_PI);
    rotate(tr);
    stroke(#FA0800); //rojo
    strokeWeight(5);
    point(r+max, 0);
    strokeWeight(5);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
    strokeWeight(5);
  } /*Fin función Enero*/

  /*Función Febrero*/
  void febrero() {
    pushMatrix();
    translate(337.5, 116);
    float tr = map(t, 0, 27, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#FA8100); //rojo
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Febrero*/

  /*Función Marzo*/
  void marzo() {
    pushMatrix();
    translate(562.5, 116);
    float tr = map(t, 0, 30, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#FAE600); //rojo
    point(r+max, 0);
    point(r-min, 0);  
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Marzo*/

  /*Función Abril*/
  void abril() {   
    pushMatrix();
    translate(787.5, 116);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#6FFA00); //naranjo
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Abril*/

  /*Función Mayo*/
  void mayo() { 
    pushMatrix();
    translate(112.5, 349);
    float tr = map(t, 0, 30, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#26A50A); //naranjo
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Mayo*/


  /*Función Junio*/
  void junio() {
    pushMatrix();
    translate(337.5, 349);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#03FFA4); //celeste
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Junio*/

  /*Funcion Julio*/
  void julio() {
    pushMatrix();
    translate(562.5, 349);
    float tr = map(t, 0, 30, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#0AA56D); //naranjo
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Julio*/

  /*Función Agosto*/
  void agosto() {
    pushMatrix();
    translate(787.5, 349);
    float tr = map(t, 0, 30, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#0493D3); //celeste
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Agosto*/

  /*Función Septiembre*/
  void septiembre() {
    pushMatrix();
    translate(112.5, 582);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#063E58); //celeste
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Septiembre*/

  /*Funcion Octubre*/
  void octubre() {
    pushMatrix();
    translate(337.5, 582);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#9408D1); //verde
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Octubre*/

  /*Funcion Noviembre*/
  void noviembre() {
    pushMatrix();
    translate(562.5, 582);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#FF08DF); //verde
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Noviembre*/

  /*Función Diciembre*/
  void diciembre() {
    pushMatrix();
    translate(787.5, 582);
    float tr = map(t, 0, 29, 0, TWO_PI);
    rotate(tr);
    strokeWeight(5);
    stroke(#FF8ECA); //verde
    point(r+max, 0);
    point(r-min, 0);
    strokeWeight(1);
    line(r-min, 0, r+max, 0);
    popMatrix();
  } /*Fin función Diciembre*/
}  /*Fin Clase*/