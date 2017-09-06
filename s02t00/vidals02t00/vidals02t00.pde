color c1 = color(218,40,245);
color c2 = color(254,240,5);
float geom = 9.3;

void setup(){
  size(200,200);
}

void draw(){
  strokeWeight(11);
  for(int i=5;i<220;i+=20){
  stroke(0);
  line(i,0,i,200);
  }
    for(int i=15;i<width;i+=20){
  stroke(255);
  line(i,0,i,200);
  }
  for(int i =0;i<100;i++){  
  noStroke();
  fill(c1,85);
  rect(50+i*10,width/2,width/2,width/2);
  }
  for(float i=geom;i<width;i+=10){
  noFill();
  strokeWeight(2);
  stroke(c2);
  triangle(i,i,width/4,10,width/4,90);
  }
  stroke(0);
  strokeWeight(20);
  point(80,180);
  point(100,180);
  point(120,180);
}