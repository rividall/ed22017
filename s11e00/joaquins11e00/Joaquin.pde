class Joaquin {
  
  int s;
  float vx, vy, x, y;

  Joaquin(int w, int h) {
    vx= 3;
    vy= 0;
    x = w;
    y = h;
    s = 250;
  }



  void pokebola() {
    movimiento();
    tres();
    
  }
  void movimiento() {
    if (x > width) {
      x = 0;
    }
    if (y > 800 || y <  0){
      y = 400;
    }
    x += vx;
    y += vy;
  }
  
  void onda(float amt, float a) {
    vy = amt * cos(a);
  }
  
  
  
  void tres() {
    //función 3
    fill(255, 0, 0);
    noStroke();
    ellipse(x, y, s - 240, s - 240);
  }
}