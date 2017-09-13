//#AA4225 rojo
//#058789 verde 
int x;
int y;
color c;
void setup() {  
size(1000,500);

}

void draw() {
Reja(#AA4225);
golf();
canon();
}

void keyPressed() {}

void Reja(color c) {
  
  strokeWeight(24);
  stroke(#058789);
  line(10,0,10,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(50,0,50,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(90,0,90,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(130,0,130,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(170,0,170,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(210,0,210,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(230,0,230,225);
  strokeWeight(24);
  stroke(#058789);
  line(270,0,270,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(310,0,310,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(350,0,350,225);
  
  strokeWeight(24);
  stroke(#058789);
  line(390,0,390,225);
  
  strokeWeight(21);
  stroke(#058789);
  line(430,0,430,225);
  

  strokeWeight(15);
  stroke(c);
  line(0,0,435,0);
  
  strokeWeight(15);
  stroke(c);
  line(0,230,435,230);
  
  strokeWeight(30);
  strokeCap(SQUARE); 
  stroke(c);
  line(22,120,198,120);
  
  strokeWeight(30);
  strokeCap(SQUARE); 
  stroke(c);
  line(243,120,420,120);
 
}

void golf(){
noStroke();
fill(#AA4225);
ellipse(850,150,240,240);

fill(#058789);
ellipse(850,150,120,120);

fill(#AA4225);
ellipse(850,150,60,60);

 strokeWeight(10);
stroke(#058789);
line(850,130,850,400);


}

void canon(){
noStroke();
fill(#AA4225);
ellipse(580,180,50,50);
rect(580,155,35,30);

fill(#058789);
ellipse(580,205,20,20);
ellipse(680,165,10,10);
}