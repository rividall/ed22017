class Edo {

  float x, y, vx, vy;


  Edo() {
    x = 200;
    y = 0;
    vx=3;
    vy=3;
  }

  void todo() {
    traspasar();
    bola();
    bolz();
    bolx();
    onda();

  }

  void bola() {
    strokeWeight(15); 
    stroke(#55E396);
    point(x, y);
  }
  
  void bolz() {
    strokeWeight(15); 
    stroke(#55E396);
    point(x-100, y);
  }
  void bolx() {
    strokeWeight(15); 
    stroke(#55E396);
    point(x+100, y);
  }

  void traspasar() {
    x +=vx;
    y +=vy;
    if (y>height) {
      x= 200;
      y= 0;
    }
  }
  void onda() {
    vx = 5* cos(frameCount *0.2);
  }
  
}