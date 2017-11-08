Dot[] d = new Dot[1000];

void setup() {
  size(1280, 720);
  rectMode(CENTER);
  for (int i = 0; i < 1000; i++) {
    float ang = random(-3,3);
    float angy = random(-3,3);
    d[i] = new Dot(ang, angy, 20);
  }
}

void draw() {
  background(5);
  noStroke();
  for (int i = 0; i < d.length; i++) {
    d[i].display();
    d[i].move();
    d[i].displayRect();
    d[i].sz();
  }
}