class Gabriela {
  String dia, mes, ano;
  int maxima, minima;

  Gabriela(String dia, String mes, String ano, int maxima, int minima) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
    this.maxima = maxima;
    this.minima = minima;
  }

  void funcion() {
    fill(150);
    textSize(25);
    text("1,Enero, 2015", height/2 , width/2);
    noFill();
    stroke(150);
    strokeWeight(2);
    ellipse(height/2, width/2, minima+350, minima+350);
  }
  void funcion1() {
    fill(150);
    textSize(15);
    text("2,Enero, 2015", height/4, width/4-16);
    fill(225);
    stroke(150);
    strokeWeight(2);
    ellipse(height/4, width/4, maxima, minima);
  }
}