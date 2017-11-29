class Humedad{
  
 //variables
  float i;
  int mes;
  int dia;
  int maximah; 
  int minimah;
  
  
  color c, d, e, f ;

  //constructor
   Humedad(int mes,int dia, int maximah, int minimah, int i) {
    
     this.i= map(i,0,364,0,HALF_PI);
    this.mes = mes;
    this.dia = dia;
    this.maximah = maximah;
    this.minimah = minimah;
    
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
}
    
  


  
 
  
  void humedad() {
    
    strokeWeight(0.8);
    pushMatrix();
    stroke(f);
    rotate(i);
    line(0, 0, minimah*3.5, 0);
    popMatrix();
    
    strokeWeight(0.8);
    stroke(c);
    pushMatrix();
    rotate(i);
    line(0, 0, maximah*3.5, 0);
    popMatrix();
    
    
   
    
  }




}