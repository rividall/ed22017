class Clase {

  int tmaxima, tminima, tmedia, i, x, y, fecha;
  float posH, tempMax, tempMin, tempMed;
  Clase(int fecha, int tmaxima, int tminima, int tmedia, int i) {

    this.fecha = fecha;
    this.tmaxima = tmaxima;
    this.tminima = tminima;
    this.tmedia = tmedia;
    this.i = i;
  }

  void ano() {
    pushMatrix();
    translate(0, 400);
    tempMax = map(tmaxima, 21, 34, 0, 200);
    tempMin = map(tminima, 15, 25, 200, 0);
    tempMed = map(tmedia, 15, 34, 200, -200);
    posH = map(fecha, 0, 364, width/8, width - width/8);

    //tempMax = lerp(0,tempMax,0.02);

    stroke(0);
    strokeWeight(1);
    line(width/8, 0, width - width/8, 0); //linea negra
    stroke(#FF8B8B);
    line(posH, 0, posH, -tempMax);
    stroke(#95CEFF);
    line(posH, 0, posH, tempMin);
    stroke(#FFBE95);
    line(posH, 0, posH, tempMed);
    popMatrix();
  }
  void estacion() {
    
  }
  void evento(){
  }
}