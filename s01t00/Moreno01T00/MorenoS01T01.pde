void setup() { 
  size(500, 500);
  background(255, 100, 90);
}

void draw() {

 line ( 1,10,200,200);
   line ( 500,90,10,100);
     line ( 1,10,500,200);
       line ( 50,200,500,100);
 noStroke();
 fill(160, 220, 90);
  ellipse(250, 250, 400, 400);
 fill(255, 220, 90);
   rect (175, 170, 150, 150);
 fill(240, 120,220);
  quad ( 150,50,105,105,104,105,150,10);
  stroke(255,255,255);
  strokeWeight(10);
  point (450,250);
   point (350,250);
    point (250,250);
     point (150,250);
      point (50,250);

}