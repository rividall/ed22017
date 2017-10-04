int c;
boolean a; 

void setup() {
  size(500, 500);
}


void draw(){
  noCursor();
  background(100);
  c=color(mouseX,mouseY,0,6); 
    
  
  for (int x = 0; x < width + 100; x += 100) { 
    for (int y = 0; y < height + 100; y += 100) {
    
  if (a == true){
  rombo(mouseX, mouseY);
  }
  elipses(x, y);
  chica(x-100, y-100);
  
  }
  }
}

void rombo(int x, int y) {
 
  stroke(mouseX, mouseY, 0, 40);
  strokeWeight(1);
  noFill();
  quad(mouseX+x-250, mouseY, mouseX, mouseY-y+250, mouseX-x+250, mouseY, mouseX, mouseY+y-250);
  fill(mouseX, mouseY, 0, 10);
  quad(mouseX+15, mouseY, mouseX, mouseY-15, mouseX-15, mouseY, mouseX, mouseY+15);
}

void chica(int x, int y){
  //Elipse chica estática en el centro
  //Elipse chica
  fill(c);
  noStroke();
  rect(500, 500, x-400, y-400);
}

void elipses(int x, int y){
  //relleno elipses grandes
    
  fill(0, mouseX, mouseY, 7);
  stroke(0);
  strokeWeight(1);
  ellipse(mouseX, mouseY, x-300, y-300);
  ellipse(mouseX, mouseY, x-285, y-285);
  ellipse(mouseX, mouseY, x-270, y-270);
}

void keyPressed(){
 if(key == 'w'){
  a = !a;
 }
}