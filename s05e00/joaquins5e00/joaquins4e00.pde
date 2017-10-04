
void setup() {
  size(1280, 500);
  background(255);
}
void draw() {

  uno();
  dos();
  tres();
  println(mouseX, mouseY);
}



void uno() {

  arc(200, 250, 250, 250, 0, QUARTER_PI);
  arc(200, 250, 250, 250, HALF_PI, QUARTER_PI*3);
  arc(200, 250, 250, 250, PI, QUARTER_PI*5);
  arc(200, 250, 250, 250, PI+HALF_PI, QUARTER_PI*7);

  arc(200, 250, 125, 125, QUARTER_PI, QUARTER_PI*2);
  arc(200, 250, 125, 125, HALF_PI+QUARTER_PI, QUARTER_PI*4);
  arc(200, 250, 125, 125, PI+QUARTER_PI, QUARTER_PI*6);
  arc(200, 250, 125, 125, PI*2 - QUARTER_PI, QUARTER_PI*8);
}
void dos() {

  ellipse(640, 250, 250, 250);
  ellipse(640, 250, 225, 225);
  ellipse(640, 250, 200, 200);
  ellipse(640, 250, 175, 175);
  ellipse(640, 250, 150, 150);
  ellipse(640, 250, 125, 125);
  ellipse(640, 250, 100, 100);
  ellipse(640, 250, 75, 75);
  ellipse(640, 250, 50, 50);
  line(640, 226, 640, 275);
}

void tres() {
  rect(950, 128, 240, 240);
  rect(950, 128, 220, 220);
  rect(950, 128, 200, 200);
  rect(950, 128, 180, 180);
  rect(950, 128, 160, 160);
  rect(950, 128, 140, 140);
  rect(950, 128, 120, 120);
  rect(950, 128, 100, 100);
  rect(950, 128, 80, 80);
  rect(950, 128, 60, 60);
  rect(950, 128, 40, 40);
  rect(950, 128, 20, 20);
}