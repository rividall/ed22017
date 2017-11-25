int x, y, a, l, t;
int vx, vy;
color amarillo, azul, negro, blanco;

void setup() {
  size(500, 500);

  vx = 3;
  vy = 8;

  x = 10;
  y = 10;

  a = 10;
  l = 10;

  amarillo = color(#F59F14); 
  azul = color(#14BAF5); 
  negro = color(#050505); 
  blanco = color(#FFFFFF);

  noStroke();
  fill(amarillo);
}

void draw() {
  //println(" x " + mouseX, " y " + mouseY);
  background(255);
  ellipse(x, y, a, l);
  if (x > 500 || x < 0) {
    vx *= -1;
  } else if (y > 500 || y < 0) {
    vy *= -1;
  }
  x += vx;
  y += vy;
  a += t;
  l += t;
}

void mousePressed() {
  //background(random(255), random(255), random(255));
}

void keyPressed() {
  //background(255);
  if (key == 'a') {
    t = 1;
  }
  if (key == 's') {
    t = -1;
  }

  /*if (key == 'b') {
   println("no llega");
   ellipse(50, 50, 20, 20);
   } */
}