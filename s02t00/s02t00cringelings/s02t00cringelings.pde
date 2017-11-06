int a;
float b;
color c, d;

void setup() {
    size(500, 500);
    a = 25;
    b = 5;
    c = #70B1D1;
    d = #B3D170;
}

void draw() {
  background(255);
  fill(0);
  noStroke();
  rect(b*4, 150, b*70, 170);
  stroke(d);
  strokeWeight(b);
  line(300, 300, 230, 230);
  stroke(c);
  strokeWeight(a/2);
  ellipse(200, 200, 60, 60);
  stroke(255);
  strokeWeight(a+15);
  point(203,203);
  stroke(d);
  strokeWeight(b*2);
  noFill();
  rect(a*b, 150, b*70, 170);
  stroke(d);
  strokeWeight(b);
  line(310,300,380,230);
  stroke(c);
  strokeWeight(a/2);
  ellipse(410, 200, 60, 60);
  stroke(0);
  strokeWeight(a+15);
  point(405,203);

}