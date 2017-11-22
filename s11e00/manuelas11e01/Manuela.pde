class Manuela {
  float x, y;
  
  Manuela () {
    x = 10;
    y = 20;
    
  }
  
  void giro (float amt, float a) {
  x = amt;
  pushMatrix();
  translate(250,250);
  rotate(a);
  
  stroke(#07F5D7);
  strokeWeight(3);
  line(x,x,y,y);
  stroke(#B1F507);
  line(x*100,x*100,150,150);
  stroke(255);
  point(x*10,x*10);
  popMatrix();
  }
  
  
}