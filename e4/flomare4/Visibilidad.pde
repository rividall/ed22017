class Visibilidad{
  
 //variables
 float i;
  int mes;
  int dia;
  int maximav; 
  int minimav;
  
  
  color c, d, e, f;

//constructor
   Visibilidad(int mes, int dia, int maximav, int minimav, int i) {
     this.i= map(i,0,364,0,HALF_PI);
    this.mes = mes;
    this.dia = dia;
    this.maximav = maximav;
    this.minimav = minimav;
    
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
    
  }
 
  
  void visibilidad() {
    
    
    strokeWeight(0.8);
    stroke(#76FF00);
    pushMatrix();
    rotate(-i);
    line(700, 0, 0, maximav);
    popMatrix();
    
    strokeWeight(0.8);
    pushMatrix();
    stroke(#108901);
    rotate(-i);
    line(700, 0, 0, minimav);
    popMatrix();
    
    
  }




}