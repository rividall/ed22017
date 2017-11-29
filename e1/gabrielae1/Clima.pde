class Clima {

  String dia, mes, ano;
  int minima, maxima;
 

  Clima(String dia, String mes, String ano, int minima, int maxima) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
    this.minima = minima;
    this.maxima = maxima;
  }

  void intento() {
    fill(150);
    textSize(20);
    text("1, Enero, 2015", height/2, width/2);
    noFill();
    strokeWeight(2);
    ellipse(height/2, width/2, minima+350, minima+350);
  }
}