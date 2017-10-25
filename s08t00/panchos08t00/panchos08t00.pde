// comentarios

int x, y, z, i, j, i2, j2, a, func;
float r, s, t, units, meta;
boolean b;

color[] colors = {#FF0000, #FFC000, #E0FF00, #7EFF00, #21FF00, #00FF41, #00FF9F, #00FDFF, #009FFF, #003DFF, #2100FF, #8300FF, #E500FF, #0052FF, #FF007C, #1000FF, #FFFFFF, };

void setup() {

  size(600, 600);
  noStroke();
  frameRate(20);
  units = 10;
}
void draw() {
  a++;
  background(0);
  translate(width/2, height/2);


  display();
  press();
  if (a > 600) {
    a = 0;
    meta = random(5,35);
  }
}

void display() {
 if(func == 0){ 
  func1();
 }
  if(func == 1){ 
  func2();
 }
  if(func == 2){ 
  func3();
 }
}
void func1 () {
  for (i = 0; i < 200; i = i + (int)units) {
    translate(i, i);
    figure();
  }
}
void func2 () {
  for (i = -100; i < 100; i = i +5) {
    strokeWeight(1);
    stroke(255);
    line(i, i, (mouseX)-300, mouseY-300);
    line(-i, -i, -((mouseX)-300), -(mouseY-300));
    noStroke();
  }
  for (i = -100; i < 100; i = i+5) {
    figure();
  }
}
void func3 () {

  for (i = -(width/2); i <(width/2); i = i + (int)units) {
    noFill();
    stroke(255);
    ellipse(0, 0, i+a, i+a);
  }
  rotate(a*.1/PI);

  noStroke();
  fill(52, 221, 211);

  noStroke();
  stroke(0);
  figure();

  pushMatrix();            //Este pushMatrix permite el giro fuera del eje de origen.
  translate(random(a), 0);
  rotate(-a*0.25/PI);
  stroke(0);
  figure();
  popMatrix();
}

void figure() {
  if (b == false) {
    cube();
  } else {
    tri();
  }
}
void cube() {
  rotate((a)/20);
  colour((int)random(17));
  quad(-8, 8, 
    8, 8, 
    8, -8, 
    -8, -8);
  colour((int)random(17));
  quad(2, -18, 
    18, -18, 
    8, -8, 
    -8, -8);
  colour((int)random(17));
  quad(18, -2, 
    8, 8, 
    8, -8, 
    18, -18);
}
void tri() {
  rotate((a)/20);
  colour((int)random(17));
  triangle(7, 0, 
    0, 16, 
    16, 0);
  colour((int)random(17));

  triangle(7, 0, 
    0, -16, 
    16, 0);
  colour((int)random(17));

  triangle(7, 0, 
    0, -16, 
    0, 16);
}
void colour(int c) {

  fill(colors [c]);
}
void press() {

  if (keyPressed) {
    if (keyCode == UP) {
      b = !b;
    }
  }
  if (mousePressed == true) {
    func = (int)random(3);
  }

}
void units() {


  units = lerp(units, meta, 0.1);
}