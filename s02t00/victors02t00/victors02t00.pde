int x ;
float y;
color morado;
color dorado;
float ecuacion;



void setup(){
  x=10;
  y=3.14;
  size(600,600);
  morado = color(114, 19, 102);
  dorado = color(234, 160, 13);
  
}

void draw() {
  background(0,0,1);
  
    fill(morado);
    noStroke();
    rect(width/4,height/4,width/2,height/2); 
    
    fill(dorado);
    ellipse(width/2, height/2, y, y);
   
    strokeWeight(10); 
    stroke(morado); 
    line(0,height/2,ecuacion,height/2);
    
    
    
    strokeWeight(5);
    stroke(morado);
    point(x,100);
  
    strokeWeight(1);
    stroke(dorado);
    line(x/2,x,2,100-x);
  
    noFill();
    quad(x,y,200,x/2,100,x,y+3,2);
    
   
  
  x++;
  y += 0.2;
  ecuacion = 0 + y;
  
 
  
}