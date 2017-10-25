class Flo {
  // Variables
  int x,y, tam, vx, vy;
  color c;
  // Constructor
  Flo(int a, int b){
   c = color((int)random(100, 200));
   tam= (int)random(50, 100);
   x = a;
   y = b;
   vx = (int)random(-10, 10);
   vy = (int)random(-10, 10);
  }
  
  // Métodos
  void dibujo(){
    strokeWeight(10);
    stroke(c);
    noFill();
    ellipse(x, y, tam, tam);
    strokeWeight(4);
    stroke(255);
    ellipse(x, y, tam, tam);
    strokeWeight(8);
    stroke(255);
    point(x-5, y);
    point(x+5, y);
    point(x, y+5);
    point(x, y-5);
  
  }
  
  void movimiento(){
  x = x + vx;
  y = y + vy;
  
  if((x > 600) || (x < 0)){
    vx = -vx;
  }
  if((y > 600) || (y < 0)){
    vy = -vy;
  }
  }
}