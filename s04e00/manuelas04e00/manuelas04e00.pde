//un elemento que rebote por el canvas y aumente y disminuya constantemente su tamaño en funcion del teclado

int x,y, velx, vely, x1, y1, t;
color v;

void setup() {
  size(500, 500);
  x = width/2;
  x1 = 50;
  y = height/2;
  y1 = 50;
  v = color(163,189,49);
  velx = 1;
  vely = 2;
}

void draw() {
  background (255, 255, 255);
  noStroke();
  fill (v);
  ellipse (x, y, x1, y1);
  y += vely;
  x += velx;
  x1 += t;
  y1 += t;
  
  if (x > 500 || x < 1) {
  velx *=-1;
  }
  if (y > 500 || y < 1) {
    vely *=-1;
  }
  if (x1 < 0) {
    x1 = 0;
  }
  if (y1 < 0) {
    y1 = 0;
  }
} 

void keyPressed() {
  if(key == 'q') {
    t = 1;
  }
  if(key == 's') {
    t =-1;
  }
}