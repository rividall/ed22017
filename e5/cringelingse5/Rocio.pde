class Rocio {
  // Variables
  float i, x, y, min, mean, max;
  int mes;
  String a, dia;
  PFont fuente;
  color azul, verde1, verde2, amarillo, rojo, color1, color2;

  Rocio(String a, String dia, int mes, float max, float mean, float min) {
    //Rocio (String a, String mes, String dia, float max, float min) {
    this.max = max;
    this.mean = mean;
    this.min = min;
    this.mes = mes;
    this.dia = dia;
    this.a = a;

    azul = #0172b1;
    verde1 = #009e92;
    verde2 = #78be54;
    amarillo = #f0ad4a;
    rojo = #ee573d;
    color1 = color(random(100), 100, 100);
    color2 = color(random(100), 100, 30);

    fuente = loadFont("TwCenMT-Regular-48.vlw");
  }

  void tetxomes() {
    fill(70, 80);
    textFont(fuente);
    textSize(40);
    text(mes, width/2, height/2);
  }
  void circulogeneral() {
    strokeCap(SQUARE);
    noFill();
    stroke(azul);
    strokeWeight(max);
    arc(width/2, height/3, 400, 400, PI/max, PI/min);
  }

  void verano() {
    if (mes == 12 && mes == 1 && mes == 2) {
      noFill();
      stroke(verde1);
      strokeWeight(max);
      arc(width/9, height/1.2, 100, 100, HALF_PI/max, PI/min);
    }
  }

  void otono() {
    if (mes > 3 && mes < 6) {
      noFill();
      stroke(verde2);
      strokeWeight(max);
      arc(width/2.7, height/1.2, 150, 150, PI+QUARTER_PI/max, TWO_PI);
      noFill();
      stroke(verde1);
      strokeWeight(max);
      arc(width/2.7, height/1.2, 150, 150, PI+QUARTER_PI, TWO_PI/min);
      /*  noFill();
      stroke(verde2);
      strokeWeight(max);
      ellipse(width/2.7, height/1.2, max*2, max*2);
      noFill();
      stroke(verde1);
      strokeWeight(max);
      ellipse(width/2.7, height/1.2, min*10, min*10);*/
    }
  }
  void invierno() {
    if (mes > 6 && mes < 8) {
      noFill();
      stroke(amarillo);
      strokeWeight(max);
      arc(width/1.6, height/1.2, 150, 150, PI+QUARTER_PI/max, TWO_PI);
      /*noFill();
      stroke(verde1);
      strokeWeight(max);
      ellipse(width/1.6, height/1.2, max*2, max*2);
      noFill();
      stroke(amarillo);
      strokeWeight(max);
      ellipse(width/1.6, height/1.2, min*10, min*10);*/
    }
  }

  void primavera() {
    if (mes > 8 && mes < 12) {
    noFill();
    stroke(rojo);
    strokeWeight(max);
    arc(width/1.15, height/1.2, 250, 200, HALF_PI/max, PI/min);
    }
  }
  }