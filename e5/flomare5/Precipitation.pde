class Precipitation{
  
 //variables
  float i;
  int mes;
  float dia;
  int precipitation; 
  color a;
  int x;
  float y;
  
  

//constructor
   Precipitation(int mes, float dia, int precipitation, int i) {    
    this.i= map(i, 0, 31, height*0.1, height*0.9);
    this.mes = mes;
    this.dia = dia;
    this.precipitation = precipitation;
   
    color a = color(0);
    
    x = 10;
    
   
  }
 
  
  void precipitatio() {
    
    if(i > 0 && i < 32){
      x = 50;
      y = map(i,0,31,height*0.1, height*0.9);
    }
    
    if(i > 0 && i < 29){
      x = 100;
      y = map(i,0,28,height*0.1, height*0.9);
    }
    
    if (precipitation > 0){
      a = color(#00CEFF);
    }
    
    pushMatrix();
    strokeWeight(4);
    stroke(a);
    fill(#FFFFFF);
    ellipse(x, y, 20, 20);
    popMatrix();
    
    
    
  }




}