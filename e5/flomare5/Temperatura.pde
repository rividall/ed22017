class Temperatura{
  
 //variables
  float i;
  int mes;
  float dia;
  int maximat; 
  int minimat;
  int precipitation; 
  int r= 200;
   color a;
  

//constructor
   Temperatura(int mes, float dia, int maximat, int minimat, int i) {
    this.i= map(i,0,364,0,TWO_PI);
    this.mes = mes;
    this.dia = dia;
    this.maximat = maximat;
    this.minimat = minimat;
    
    
   
    
  }
 
  
  void temperatura() {
    
    
    
    strokeWeight(3);
    pushMatrix();
    stroke(#FF0D00);
    rotate(i);
    line(0, r, 0, maximat*2+r );
    popMatrix();
    
    strokeWeight(3);
    pushMatrix();
    stroke(#FFEA00);
    rotate(i);
    line(0, r, 0,minimat*2 +r);
    popMatrix();
    
    
    
    pushMatrix();
    if (precipitation > 0){
      a = color(#00CEFF);
    }
    strokeWeight(4);
    stroke(a);
    fill(#FFFFFF);
    ellipse(0, 0, 20, 20);
    popMatrix();
    
    
  }




}