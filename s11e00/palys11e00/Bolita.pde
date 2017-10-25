class Objeto {
  //Variables globales
  int x;
  float y;
  color c;
  boolean b;
  
  //Constructor
  Objeto (int x) {
    //Inicialización de
    //variables globales
    this.x = x;
    y = 10.5;
    c = color(255, 0, 255);
    b = true;
  }
  
  //Muestra una elipse sin borde, de color magenta
  void display () {
    noStroke();
    fill(c);
    ellipse(x, 250, y, y);
  }
  
  //Mover a través del canvas
  void mover() {
    x++;
  }
  
  //Si llega al ancho, parte de cero y con un nuevo tamaño
  void borde() {
   if (x > width) {
     x = 0;
     y = random (5, 30);
   }
  }
}