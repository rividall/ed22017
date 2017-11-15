//Inicalización clase
class Gabriela {
  int margen, value;
  float x, y, z, r;
  color t, b, v, n;                 // Se declaran las variables de color

//Constructor
  Gabriela() {
    t = color(63, 201, 188);    //Turqueza
    b = color(255);          //Blanco
    v = color(159, 229, 125);   //Verde
    n = color(0);   //Negro
    x = 10;
    y = 10;
    z = 0;
    r = 0;
    value = 0;
  }

//inicialización ámbito spiral
  void spiral() {
    stroke(t);
    strokeWeight(4);
    if (z < 1500) { 
      point(width/2 + cos(z) * r, height/2 + sin(z) *r);
      point(width/4 + cos(z) * r, height/4 + sin(z) *r);
      point(450 + cos(z) * r, 450 + sin(z) *r);
      z = z + 0.5;
      r = r + 0.1;
    }
  }

//inicialización ámbito teclado
  void keyPressed() {
    if (key == 't') {
      background(b);
      stroke(v);
      strokeWeight(4);
      if (z < 1500) {
        point(width/2 + cos(z) * r, height/2 + sin(z) *r);
        point(width/4 + cos(z) * r, height/4 + sin(z) *r);
        point(450 + cos(z) * r, 450 + sin(z) *r);
        z = z + 0.5;
        r = r + 0.1;
      }
    }
  }
}
