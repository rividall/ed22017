//naranjo = color(255, 163, 13); //Color naranjo

class Onda {
  //VARIABLES
  int x, x1 = 0;
  int y, y1 = 0;
  int centro = 250;
  int speed = +2;
  int nospeed = 0;

  //CONSTRUCTOR
  Onda(int _x, int _y) {
    x = _x;
    y = _y;
  }
  void correr() {
    Ondanaranja();
    Ondablanca();
    expandirnaranjo();
    expandirblanco();
  }
  void expandirnaranjo() {
    x += speed;
    y += speed;
    if (x > 500) {
      x = 0;
      if (y > 500) {
        y = 0;
      }
    }
  }

  void expandirblanco() {
    
   
    
    if (x > 250 || x1 > 0) {
      x1 = x1 + speed;
    }
    if (y > 250 || y1 > 0) {
      y1 =  y1 + speed;
      
      if (y1 > 500){
        y1 = 0;
        if ( x1 > 500) { 
          x1 = 0;
        }
      }
    }
  }

  //FUNCIONES
  void Ondanaranja() {
    stroke(255, 163, 13);
    strokeWeight(5);
    noFill();
    ellipse(centro, centro, x, y);
  }

  void Ondablanca() {
    stroke(255);
    strokeWeight(5);
    noFill();
    ellipse(centro, centro, x1, y1);
  }
}