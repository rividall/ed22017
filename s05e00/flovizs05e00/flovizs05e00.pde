void setup() {
  size(500, 500);
}

void linea(int x, int y) {
  noCursor();
  
   //linea
  stroke(#B7FFE1);
  strokeWeight(5);
  line(x, y, 250, 250);
  
  //Elipse chica
  
  ellipse(250, 250, 25, 25);
}

void chica(int x, int y){
  //Elipse estática
  fill(x, y, 0, 180);
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);
}

void elipses(int x, int y){
  //relleno elipses grandes
  fill(0, mouseX, mouseY, 100);
  //3 elipses grandes
  ellipse(x, y, x, y);
  ellipse(x, y, x+20, y+20);
  ellipse(x, y, x+40, y+40);
}

void draw(){
  background(100);
  linea(mouseX, mouseY);
  elipses(mouseX, mouseY);
  chica(mouseX, mouseY);
  
  
}