class Precipitation{
  
 //variables
  float i;
  int mes;
  int dia;
  int precipitation; 
 
  
  
  color c, d, e, f;

//constructor
   Precipitation(int mes, int dia, int precipitation, int i) {    
    this.i= map(i,0,364,0,PI);
    this.mes = mes;
    this.dia = dia;
    this.precipitation = precipitation;
   
    
    
    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
    
  }
 
  
  void precipitatio() {
    
    strokeWeight(1);
    stroke(e);
    noFill();
    ellipse(250, 250, precipitation, precipitation);
    
    strokeWeight(1);
    stroke(f);
    noFill();
    ellipse(300, 300, precipitation*10, precipitation*10);

    
  }




}