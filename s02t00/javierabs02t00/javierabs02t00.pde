int q = 500;
int t = 400;
int e = 300;
float a = 50.5;
float s = 40.5;
float d = 30.5;
color w = color(255, 255, 255);
color b = color(0, 0, 0);
color p = color(120, 23, 142);
color y = color(255, 236, 23);

void setup() {
  size(1000, 1000);
}

void draw() {
  background(p);
  q++;
      
  quad(q, q, t, t/2, e, e/2, a, a/2);
  strokeWeight(2);
  fill(#19BCFA);
  
  quad(a, a/2, s, s/2, t/2, e, e/2, e*2);
  strokeWeight(2);
  noFill();
    
}