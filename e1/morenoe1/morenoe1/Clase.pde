class Clase {
  String mes,ano,dia;
  int maxima, minima,mean;

  Clase( String ano,String mes,String dia, int maxima, int minima, int mean) {
     this.ano = ano;
    this.mes = mes;
    this.dia=dia;
    this.maxima = maxima;
    this.minima = minima;
    this.mean = mean;
   
  }

  void funcion() {
    ellipse (maxima,minima,maxima,10);
  }
}