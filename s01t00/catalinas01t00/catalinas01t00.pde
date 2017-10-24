int x = 200;
void setup() {
  size (200, 200);
  background(255);
}

void draw() {

  fill(200, 100, 100);
  strokeWeight (2);
  rectMode(CENTER);

  ellipse(x/2, x/2, x, x);
  quad(x/2, x, 0, x/2, x/2, 0, x, x/2 );
  rect(x/2, mouseY, 20, 20);


  line(x/2, x/2, x, x/2);

  strokeWeight (6);
  point(mouseX + (x/3), x/2);
  point(mouseX + (x/4), x/2);
  point(mouseX + (x/5), x/2);
  point(mouseX + (x/6), x/2);
  point(mouseX + (x/7), x/2);
  point(mouseX + (x/8), x/2);
  point(mouseX + (x/9), x/2);
  point(mouseX + (x/10), x/2);
  point(mouseX + (x/11), x/2);
  point(mouseX + (x/12), x/2);
  point(mouseX + (x/13), x/2);
  point(mouseX + (x/14), x/2);
}
