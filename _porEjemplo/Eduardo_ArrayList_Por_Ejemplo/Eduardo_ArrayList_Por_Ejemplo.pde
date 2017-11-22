ArrayList <Dibujo> Dibujos = new ArrayList <Dibujo>();

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(255);
  for (int i=0; i<Dibujos.size(); i+=3) {   // separación de las ellipses.
    Dibujos.get(i).display();
  }
}

void mouseDragged() {
  Dibujos.add(new Dibujo(mouseX, mouseY));
}

class Dibujo {
  float x, y, r;
  color c;

  Dibujo(float ax, float ay) {
    x=ax;
    y=ay;
    r=random(5, 15);           // Modificación random entre 5 y 15pc del tamaño.
    c=color(random(100, 200), 255, 50);
  }

  void display() {
    noStroke();
    fill(c, 100);
    ellipse(x, y, r, r);
  }
}