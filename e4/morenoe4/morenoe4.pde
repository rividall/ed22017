
import processing.opengl.*;
Table tabla;
float po = 1500;        
float yMax = 10;
float yMin = 0;
float maxSize = 0;
float minSize = 1000000;
PVector rot = new PVector();
PVector trot = new PVector();
float flatness = 0;
float tflatness = 0;

void setup() {
  size(displayWidth, displayHeight, OPENGL);
  background(0);
  smooth();  
  tabla=loadTable("/data/dataBase.csv","header"); 
}
void draw() {

  rot.x += (trot.x - rot.x) * 0.1;
  rot.y += (trot.y - rot.y) * 0.1;
  rot.z += (trot.z - rot.z) * 0.1;

  flatness += (tflatness - flatness) * 0.1;
  background(10);
  translate(width/2 - (250 * flatness * 3.30), height/2 + (60 * rot.x));
  rotateX(rot.x);
  rotateZ(rot.z);
  strokeWeight(2);
  noFill();
  stroke(255, 50 - (40 * flatness));
  ellipse(0, 0, po, po);
  stroke(255, 100);
  pushMatrix();
  rotateY(-PI/2);
  line(0, 0, 500 * flatness ,0);
  pushMatrix();
  fill(255, 100 * flatness);
  rotateZ(PI/2);

  popMatrix();
  fill(255, flatness * 255);
  popMatrix();
  pushMatrix();
  rotateZ(PI/2);
  line(0, 0, 1500 * flatness, 0);


  if (flatness > 0.5) {
    pushMatrix();
    rotateX(PI/2);
    line(po * 1.06, -10, po * 1.064, 10); 
    line(po * 1.064, -10, po * 1.068, 10);   
    popMatrix();
  }


  fill(255, flatness * 255);
  rotateX(-PI/2);
  fill(255, 100 * flatness);
 
  
  popMatrix();
  }    
void keyPressed() {
  
 
  if (key == '1') {
    tflatness = (tflatness == 1) ? (0):(1);
    toggleFlatness(tflatness);
  }
}
void toggleFlatness(float f) {
  tflatness = f;
  if (tflatness == 1) {
    trot.x = PI/2;
    trot.z = -PI/2;
  }
  else {
    trot.x = 0;
  }
}