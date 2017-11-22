class Victor {
  //variables
  float x, y, vx, vy, diam, a;
  color c, d;
  //constructor
  Victor() {
    x = 250;
    y = 250;
    vx = 2;
    vy = 2;
    
  }
  //metodos
  void movimiento () {
    x += vx;
    //y += vy;

    if (x > 500 || x < 0) {
      x = 0;
    }
   
   if (y > 500 || y < 0) {
      x = 0;
    }
    
    

}
  


  void function () {
   
    strokeWeight(20);
    stroke (255);
    point(x, y);
    
    }
  
  
  void onda(float diam, float a) {
   
    y = 250 + diam * cos(a);}
     
  void depana() {
    y = 250;}
  }
  