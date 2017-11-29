class Florencia{
  
 //variables
  String fecha;
  int maxima, minima;
  color c, d, e, f;

//constructor
  Florencia(String fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
    
  }
 
  
  void function() {
    
    
    for ( int i = 0; i < 4; i++){

    strokeWeight(2);
    stroke(c);
    line(minima, 250, maxima, maxima);
    
    }
    
    
    
  }




}