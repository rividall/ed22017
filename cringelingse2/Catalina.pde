class Objeto {
  // Variables
  float i, x, y, min, max;
  String a, mes, dia;

  Objeto(String a, String mes, String dia, float min, float max) {
    this.min = min;
    this.max = max;
    this.mes = mes;
    this.dia = dia;
    this.a = a;
  }

  void tetxomes() {
    fill(0, 10);
    textSize(40);
    text(mes, width/2, height/2);
  }
  void circulogeneral() {
    noFill();
    stroke(#0172b1);
    strokeWeight(max);
    arc(width/2, height/3, 350, 350, HALF_PI, PI);
  }

  void primavera() {
    noFill();
    stroke(#009e92);
    strokeWeight(max);
    arc(width/9, height/1.2, 100, 100, HALF_PI, PI);
  }

  void verano() {
    noFill();
    stroke(#78be54);
    strokeWeight(min);
    arc(width/2.7, height/1.2, 100, 100, QUARTER_PI, PI);
  }
  void invierno() {
    noFill();
    stroke(#f0ad4a);
    strokeWeight(min);
    arc(width/1.6, height/1.2, 100, 100, PI+QUARTER_PI, TWO_PI);
  }
  
  void otono() {
    noFill();
    stroke(#ee573d);
    strokeWeight(max);
    arc(width/1.13, height/1.2, 100, 100, PI, PI+QUARTER_PI);
  }
}