//Expresión Digital II - Diseño Digital - UDD - 2017
//Joaquín Domínguez

int x1;
int x2;
int y2;
float y;

void setup(){
  size(500,500);
  x1 = 250;
  y = 15.5;
  x2 = 250;
  y2 = 100;
  background(0);
  frameRate(10);
}
void draw(){
  strokeWeight(1);
  stroke(0);
  fill(#FFD64D);
  ellipse(x1,x1,y,y);
    
    stroke(0);   
    fill(#FFD64D);
    ellipse(x2,x2,y,y);
    
  stroke(0);    
  fill(#59A260);
  ellipse(x1,x2,y,y);
 
    stroke(0);
    fill(#59A260);
    ellipse(x2,x1,y,y);
  
  noStroke();
  rect(215,215,75,75);
  
  noStroke();
  fill(#FFD64D);
  quad(250,200,300,250,250,300,200,250);
  
  strokeWeight(5);
  stroke(255);
  point(400,y2);
  
  strokeWeight(5);
  stroke(255);
  point(100,y2);
  
  strokeWeight(1);
  stroke(0);
  line(200,250,300,250);
  
  strokeWeight(1);
  stroke(0);
  line(250,200,250,300);
  
  x1+=2;
  y+=1.5;
  x2-=2;
  y2+=2;
}