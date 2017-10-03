color c1 = color(218, 40, 245);
color c2 = color(254, 240, 5);
float geom = 9.3;

void setup() {
  size(200, 200);
}

void draw() {
  strokeWeight(11);
  for (int i=5; i<width; i+=20) {
    stroke(0);
    line(i, 0, i, height);
  }

  for (int i=15; i<width; i+=20) {
    stroke(255);
    line(i, 0, i, height);
  }

  for (int i =0; i<100; i++) {  
    noStroke();
    fill(c1, 155);
    rect(100+i*0, 30+i*10, width/2, width/2);
  }

  for (int i=0; i<width-20; i+=20) {
    stroke(0, 255, 0, 100);
    strokeWeight(20);
    point(i, height);
    point(i, 8.5*height/9);
    point(i, 8*height/9);
    point(i, 7.5*height/9);
    point(i, 7*height/9);
  }

  for (float i=geom; i<width; i+=10) {
    noFill();
    strokeWeight(3);
    stroke(c2);
    triangle(i, i, width/4, 10, width/4, 90);
    stroke(0, 190, 255);
    strokeWeight(1);
    triangle(i*2, i*3, width/4, 10, width/4, 90);
  }
}