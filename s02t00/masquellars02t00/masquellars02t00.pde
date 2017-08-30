//#AA4225 rojo
//#058789 verde agua
int x; 
int y;
int z;
int w;
int a;
int b;

void setup() {
  size(500, 500);
  x = 140;
  y = 120;
  z = 470;
  w = 100; 
  a = 120;
  b = 50;

}

void draw() {
  
  
  background(#FFFFFF);
  
  stroke(#000000);
  strokeWeight(3);
  line(450,500,450,0);
  
  stroke(#000000);
  strokeWeight(3);
  line(400,500,400,0);
  
  stroke(#000000);
  strokeWeight(3);
  line(350,500,350,0);
  
  stroke(#000000);
  strokeWeight(3);
  line(0,450,500,450);
  
  stroke(#000000);
  strokeWeight(3);
  line(0,400,500,400);
  
  
  fill(#AA4225);
   noStroke();
  ellipse(120, 90, y, x);
  
  fill(#058789);
 noStroke();
  rect(30, 120,100,w);
 
 fill(#058789);
 noStroke();
  rect(30, 100,w,100);
 

 strokeWeight(10);
 stroke(#AA4225);
 point(50,120);
 
 strokeWeight(10);
 stroke(#AA4225);
 point(50,a);
 
 strokeWeight(10);
 stroke(#AA4225);
 point(b,120);
 
 
  
  x +=3; 
  y +=3;
  z ++;
  w ++;
  a +=1.8;
  b +=1.8; 
  

  
}