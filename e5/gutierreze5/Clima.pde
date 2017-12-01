class Clima {

  //variables
  int media;
  int minima;
  int i;
  int max;
  String fecha;
  //constructor
  Clima(String fecha,int maxima, int media, int minima, int i) {
    this.media=media;
    this.minima=minima;
    this.i=(int) map(i, 0, 364, 0, width);
    this.max= (int)map(maxima, 0, 34, 0, TWO_PI);
    this.media= (int)map(media, 0, 34, 0, TWO_PI);
    this.minima= (int)map(minima, 0, 34, 0, TWO_PI);
    this.fecha=fecha;
  }

  //functions
  void show1(int pos, int ini) {
    float inio = map(ini, 0, 700, 0, width);
pushMatrix();
    noFill();
    stroke(255, 0, 255);
    strokeWeight(7);
    arc(inio, pos, 240, 240, 0, max);
    stroke(0, 255, 255);
    arc(inio, pos, 150, 150, 0, minima);
    stroke(255, 255, 0);
    arc(inio, pos, 100, 100, 0, media);
    println(fecha);
    popMatrix();
  }
   void show2() {
pushMatrix();
translate(0,height/2);
    noFill();
    stroke(255, 0, 255);
    strokeWeight(7);
    arc(i, 0, 250, 250, 0, max);
    stroke(0, 255, 255);
    arc(i, 0, 150, 150, 0, minima);
    stroke(255, 255, 0);
    arc(i, 0, 100, 100, 0, media);
    println(fecha);
    popMatrix();
  }
   void show3() {
pushMatrix();
translate(0,500);
    noFill();
    stroke(255, 0, 255);
    strokeWeight(7);
    arc(i, 0, 250, 250, 0, max);
    stroke(0, 255, 255);
    arc(i, 0, 150, 150, 0, minima);
    stroke(255, 255, 0);
    arc(i, 0, 100, 100, 0, media);
    println(fecha);
    popMatrix();
  }


}