class Manuela { 
  float x, y, vx, vy, a, amt;


  Manuela() {
    x = 250;
    y = 250;
    vx = 2;
    vy = 1;
  }

  void curva() { 
    m.movimiento ();
    m.punto ();
    m.punto ();
  }

  void movimiento() {
    x += vx;
    y += vy; 
    if (x>500) {
      x = 0;
    }
  } 

  void punto () {
    strokeWeight(5);
    stroke(random(1, 255));
    point(x, y);
  }

  void onda(float amt, float a) {
    vy = amt * cos(a);
  }
}

//a = frameCount