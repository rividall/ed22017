color amarillo, azul, negro, blanco;

void setup(){
  size(900, 300);
 
  amarillo = color(#F59F14); // iniciación variable de color
  azul = color(#14BAF5); // iniciación variable de color
  negro = color(#050505); // iniciación variable de color
  blanco = color(#FFFFFF);
  
 
}

void draw(){
  background(negro);
  brujula(150, 150);
  saturno(450, 150);
  yinYang(750, 150);
}

void brujula(int x, int y){
  
  stroke(blanco);
  line(x, y, 240, 150);
   line(x, y, 201, 107);
  line(x, y, 150, 240);
   line(x, y, 199, 192);
  line(x, y, 60, 150);
   line(x, y, 106, 191);
  line(x, y, 150, 60);
   line(x, y, 107, 103);
  
  stroke(amarillo);
  fill(negro);
  strokeWeight(1);
  ellipse(x, y, 64, 64);
  
   noStroke();
  fill(amarillo);
  ellipse(x, y, 36, 36);
  
  stroke(azul);
  noFill();
  strokeWeight(2);
  ellipse(x, y, 199, 199);
  
  stroke(azul);
  noFill();
  strokeWeight(2);
  ellipse(x, y, 219, 219);
  
  // elipses exteriores grandes
  fill(blanco);
  noStroke();
  ellipse(215, 274, 17, 17);
  ellipse(85, 274, 17, 17);
  ellipse(24, 208, 17, 17);
  ellipse(24, 90, 17, 17);
  ellipse(94, 30, 17, 17);
  ellipse(215, 30, 17, 17);
  ellipse(284, 94, 17, 17);
  ellipse(284, 200, 17, 17);
  
  // elipses exteriores chicas
  noStroke();
  fill(azul);
  ellipse(243, 238, 6, 6);
  fill(amarillo);
  ellipse(155, 277, 6, 6);
  fill(azul);
  ellipse(56, 235, 6, 6);
  fill(amarillo);
  ellipse(27, 150, 6, 6);
   fill(azul);
  ellipse(59, 65, 6, 6);
  fill(amarillo);
  ellipse(155, 27, 6, 6);
  fill(azul);
  ellipse(255, 65, 6, 6);
  fill(amarillo);
  ellipse(281, 150, 6, 6);
}

void saturno(int z, int c) {
  
  noStroke();
  fill(amarillo);
  ellipse(z, c, 36, 36);
  stroke(blanco);
  noFill();
  ellipse(z, c, 64, 64);
  stroke(azul);
  noFill();
  ellipse(z, c, 93, 93);
  stroke(amarillo);
  noFill();
  ellipse(z, c, 108, 108);
  stroke(blanco);
  noFill();
  ellipse(z, c, 128, 128);
  stroke(azul);
  noFill();
  ellipse(z, c, 140, 140);
  stroke(amarillo);
  noFill();
  ellipse(z, c, 161, 161);
  stroke(blanco);
  noFill();
  ellipse(z, c, 177, 177);
  stroke(azul);
  noFill();
  ellipse(z, c, 199, 199);
  stroke(amarillo);
  noFill();
  ellipse(z, c, 219, 219);
}

void yinYang(int v, int b) {
  
  stroke(blanco);
  noFill();
  ellipse(v, b, 219, 219);
  
  noStroke();
  fill(amarillo);
  ellipse(802, 84, 6, 6);
  ellipse(802, 209, 6, 6);
  ellipse(802, 206, 6, 6);
  ellipse(680,206, 6, 6);
  ellipse(683, 86, 6, 6);
  ellipse(741, 107,6, 6);
  ellipse(786, 144, 6, 6);
  ellipse(744, 191, 6, 6);
  ellipse(702, 144, 6, 6);
  
   noStroke();
  fill(azul);
  ellipse(744, 66, 21, 21);
  ellipse(744, 147, 21, 21);
  ellipse(833, 147, 21, 21);
  ellipse(660, 147, 21, 21);
  
  
  
  
  
}