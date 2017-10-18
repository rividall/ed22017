int a, c, e;
float b, d, f;
boolean k;

void setup() {

  size(940, 340);
  noStroke();
}

void draw() {

  a++;
  c++;

  b= sin(a/5);
  background(235);
  translate(width/2, height/2);

  timer();
  snap();

  ratones(mouseX - 470, mouseY - 150);
  queso(mouseX - 470, mouseY - 150);
  
  f = lerp(f, d, 0.1);
  
  pushMatrix();
  gatos(-300 - 470 + mouseX, f);
  popMatrix();
  
  pushMatrix();
  gatos(300 - 470 + mouseX, -f);
  popMatrix();
  

}


void queso(int x, int y) {

  translate(x, y);

  fill(255, 172, 51);
  triangle(-35, -5, 35, -5, 15, -20);
  fill(255, 217, 131);
  quad(-35, -5, 35, -5, 35, 20, -35, 20);
  fill(255, 172, 51);
  ellipse(-4, 10, 10, 10);
  ellipse(-30, 0, 7, 7);  
  ellipse(27, 3, 8, 8);
  fill(255, 217, 131);
  ellipse(12, -13, 8, 4);
}

void ratones(int x, int y) {
  pushMatrix();
  fill(150);
  translate(x, y);
  rotate(radians(a));

  pushMatrix();
  translate(100, 0);
  rotate(radians(-70));
  raton(0, 0);
  popMatrix();

  pushMatrix();
  translate(0, 100);
  rotate(radians(20));
  raton(0, 0);
  popMatrix();

  pushMatrix();
  translate(-100, 0);
  rotate(radians(110));
  raton(0, 0);
  popMatrix();

  pushMatrix();
  translate(0, -100);
  rotate(radians(200));
  raton(0, 0);
  popMatrix();
  popMatrix();
}
void raton(int x, int y) {
  noFill();
  stroke(255, 192, 203);
  strokeWeight(3);
  bezier(x + 7, y - 7, 
    x + 10, y - 7, 
    x + 18, y - 16, 
    x + 18, y - 18);
  noStroke();
  fill(150);
  ellipse(x, y, x+ 35, y + 35); 
  ellipse(x + 3, y + 18, 13, 13);
  triangle(x, y + 19, 
    x - 24, y + 13, 
    x - 10, y + 7);
  fill(0);
  ellipse(x - 24, y + 13, 4, 4);
  ellipse(x - 4, y + 11, 3, 5);
  noFill();
}


void gatos(int x, float y) {
  translate(x, y);
  subgatos();
}
void subgatos() {
  pushMatrix();

  noStroke();
  fill(255, 159, 0);

  ellipse(0, 0, 100, 60);
  triangle(10, -10, 
    45, -10, 
    30, -55);
  triangle(-10, -10, 
    -45, -10, 
    -30, -55);

  fill(255);

  translate(-15, -6);
  bezier(-15, 0, -12, 10, 12, 10, 13, 0);
  ellipse(0, 0, 24, 5);
  bezier(-15, 0, -12, -10, 12, -10, 13, 0);
  translate(15, 6);

  translate(15, -6);
  bezier(-14, 0, -12, 10, 12, 10, 15, 0);
  ellipse(0, 0, 24, 5);
  bezier(-14, 0, -12, -10, 12, -10, 15, 0);
  translate(-15, 6);

  fill(0);
  ellipse(-15, -6, 4, 12);
  ellipse(15, -7, 4, 12);
  triangle(4, 0, 
    0, 4, 
    -4, 0);

  stroke(0);
  strokeWeight(1);

  pushMatrix();
  noStroke();
  fill(255, 91, 165);

  quad(-5, 5, -5, 13+b, 5, 13+b, 5, 5);
  ellipse(0, 13+b, 10, 10);
  popMatrix();




  fill(255, 172, 51);

  bezier(-10, 5, -10, 10, 0, 10, 0, 5);
  bezier(10, 5, 10, 10, 0, 10, 0, 5);

  stroke(0);
  strokeWeight(1);


  line(24, 10, 65, 10);
  line(25, 8, 65, 5);
  line(22, 12, 65, 15);
  line(-24, 10, -65, 10);
  line(-25, 8, -65, 5);
  line(-22, 12, -65, 15);



  popMatrix();
}

void perro(int x, int y) {
}

void timer() {

  if (c > 70) {
    k = !k;
    c = 0;
  }
}
void snap() {

  if (k == true) {

    d = -100;
  } else {
    d= 100;
  }
}