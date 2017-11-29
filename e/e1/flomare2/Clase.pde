class Florencia{
  
 //variables
  String fecha;
  int maximat, minimat, maximah, minimah, maximav, minimav, meanw, precipitacion;
  
  color c, d, e, f;

//constructor
   Florencia(String fecha, int maximat, int minimat, int maximah, int minimah, int maximav, int minimav, int meanw, int precipitacion) {
    this.fecha = fecha;
    this.maximat = maximat;
    this.minimat = minimat;
    this.maximah = maximah;
    this.minimah = minimah;
    this.maximav = maximav;
    this.minimav = minimav;
    this.meanw = meanw;
    this.precipitacion = precipitacion;

    
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