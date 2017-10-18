class Joaquin {

  int x, y, s, p, vx, vy;

  Joaquin() {
    vx=4;
    vy=4;
    x = 20;
    y = 20;
    p = 250;
    s = 250;
  }



  void pelota(){
  movimiento();
  tres();
  }
  void movimiento() {
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
    x += vx;
    y += vy;
  }

  void tres() {
    //función 3
    fill(255);
    arc(x, y, s, s, PI, PI*2, CHORD);
    arc(x, y, s, s, 0, PI, CHORD);
    ellipse(x, y, s - 177, s - 177);
  }
}