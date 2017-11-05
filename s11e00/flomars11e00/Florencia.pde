class Florencia {
  //variables
  float x, y, vx, vy, diam, a;
  color c, d;
  //constructor
  Florencia() {
    x = 250;
    y = 250;
    vx = 2;
    vy = 2;
    c = color(#FF03B8);
    
  }
  //metodos
  void movimiento () {
    x += vx;
    //y += vy;

    if (x > 500 || x < 0) {
      x = 0;
    }
   
   //if (y > 500 || y < 0) {
   //   y = 0;
   // }
    
    

}
  


  void function () {
   
    strokeWeight(20);
    stroke(c);
    point(x, y);
    
    }
  
  
  void onda(float diam, float a) {
    
    y = y + diam * cos(a);
    
    
    
  
  }
  void contra(){
   y = 250; 
  }
  
  
  }
  
  
  