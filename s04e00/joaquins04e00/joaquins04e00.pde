//Joaquín Dominguez
//s04e00
int x, y, velx, vely, sx, sy;

void setup() {
  size(400, 400);
  x=1;
  y=1;
  sx=1;
  sy=1;
  velx=4;
  vely=4;
  frameRate(120);
}
void draw() {
  background(255);
  noStroke();
  fill(0, 255, 0);
  ellipse(x, y, sx, sy);

  if (x > width || x < 0) { 
    velx *= -1;
  } 
  if (y > height || y < 0) { 
    vely *= -1;
  }
  x += velx;
  y += vely;
  sx ++;
  sy ++;

}

void keyPressed() {
  if (key == 'g') {
   sx *= -1;
   sy *= -1;
  }
}