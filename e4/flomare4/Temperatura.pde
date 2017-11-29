class Temperatura{
  
 //variables
  float i;
  int mes;
  int dia;
  int maximat; 
  int minimat;
  
  
  color c, d, e, f, g;

//constructor
   Temperatura(int mes, int dia, int maximat, int minimat, int i) {
    this.i= map(i,0,364,0,HALF_PI);
    this.mes = mes;
    this.dia = dia;
    this.maximat = maximat;
    this.minimat = minimat;
    
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
    g = color(#31FFCD);
    
  }
 
  
  void temperatura() {
    
    
    
    strokeWeight(2);
    pushMatrix();
    stroke(#FF0D00);
    rotate(i);
    line(0, 700,0, maximat);
    popMatrix();
    
    strokeWeight(0.8);
    pushMatrix();
    stroke(#FFEA00);
    rotate(i);
    line(0, 700, 0, minimat);
    popMatrix();
    
    
  }




}