class Variables {
  String fecha, dia;
  int maxima, minima;
  
  Variables(String fecha, String dia,  int maxima, int minima){
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
    this.dia = dia;
  }
  
  void function(){
  stroke(2);  
  ellipse(maxima,minima,300,maxima);
  
  
}
}