class Viento{
  
 //variables
  float i;
  int mes;
  int dia;
  int meanw; 
  
  
  
  color c, d, e, f;

  //constructor
   Viento(int mes, int dia, int meanw, int i) {
     this.i= map(-i,0,364,0,HALF_PI);
    this.mes = mes;
    this.dia = dia;
    this.meanw = meanw;
    
    
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
    
  }
 
  
  void viento() {
    
    strokeWeight(0.8);
    stroke(#0291AD);
    pushMatrix();
    rotate(i);
    line(700, 700, -meanw,0);
    popMatrix();

    
  }




}