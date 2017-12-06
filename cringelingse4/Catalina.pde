class Catalina {
  // Variables
  float i, x, y, min, mean, max, velx, vely;
  String a, mes, dia;
  PFont fuente;

  Catalina(String a, String mes, String dia, float max, float mean, float min) {
    this.max = max;
    this.mean = mean;
    this.min = min;
    this.mes = mes;
    this.dia = dia;
    this.a = a;

    fuente = loadFont("TwCenMT-Regular-48.vlw");
  }

  void tetxomes() {
    fill(70, 80);
    textFont(fuente);
    textSize(40);
    text(mes, width/2, height/2);
  }
  void circulogeneral() {
    //  float value = min;
    //float m = map(value, 0, 100, 0, width);
    // ellipse(200, 200, m, m);
    noFill();
    stroke(#0172b1);
    strokeWeight(min);
    strokeCap(SQUARE);
    arc(width/2, height/3, 400, 400, HALF_PI*max, PI*mean);
  }

  void primavera() {
    noFill();
    stroke(#009e92);
    strokeWeight(min);
    arc(width/9, height/1.2, 100, 100, HALF_PI*max, PI*mean);
  }

  void verano() {
    noFill();
    stroke(#78be54);
    strokeWeight(min);
    arc(width/2.7, height/1.2, 100, 100, HALF_PI*max, PI*mean);
  }
  void invierno() {
    noFill();
    stroke(#f0ad4a);
    strokeWeight(min);
    arc(width/1.6, height/1.2, 100, 100, HALF_PI*max, PI*mean);
  }

  void otono() {
    noFill();
    stroke(#ee573d);
    strokeWeight(min);
    arc(width/1.13, height/1.2, 100, 100, HALF_PI*max, PI*mean);
  }
}