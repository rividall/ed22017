//Universidad del Desarrollo
//Facultad de Diseño
//Diseño Digital
//6to semestre
//Expresión Digital II

boolean p;

void setup() {
  size(800, 300);
  p = true;
}

void triangulo(int q, int w) {

  stroke(#FFFFFF); 
  strokeWeight(5);
  noFill();
  triangle(50, 220, 200, 220, 125, 100);
  strokeWeight(2);
  line(45, 230, 230, 230);
  line(215, 220, 125, 80);
  line(120, 85, 30, 230);
  arc(125, 175, 120, 110, w, PI);
  strokeWeight(q); 
  ellipse(125, 175, 40, 40);
}

void redondo(int z, int x) {
  strokeWeight(2);
  stroke(255);
  rect(355, 90, 90, 120, z);
  rect(330, 120, 140, 60, x);
  noFill();
  stroke(#FFFFFF);
  ellipse(400, 150, 25, 25);
  stroke(#E0EAFF);
  ellipse(400, 150, 50, 50);
  stroke(#B7CEFF);
  ellipse(400, 150, 75, 75);
  stroke(#7EA8FF);
  ellipse(400, 150, 100, 100);
  stroke(#4883FF);
  ellipse(400, 150, 125, 125);
  stroke(#125FFF);
  ellipse(400, 150, 150, 150);
}

void lineas(int f, int g) {
  stroke(255);
  strokeWeight(2);
  line(650, 150, 570, 95);
  line(650, 150, 720, 95);
  line(650, 100, 570, 200);
  line(650, 100, 720, 200);
  line(570, 95, 570, 200);
  line(720, 95, 720, 200);
  fill(#F7005F);
  quad(625, 150, 650, 170, 670, 150, 650, 260);
  noFill();
  arc(645, 95, 150, 130, PI, PI+PI);
  stroke(#F7005F);
  strokeWeight(5);
  arc(645, 115, 179, 350, 0, PI);
  stroke(#F7005F);
  strokeWeight(5);
  arc(645, 95, 180, 160, PI, PI+PI);
  
  noFill();
  fill(#F7005F);
  ellipse(610, 80, 25, 25);
  ellipse(685, 80, 25, 25);

  fill(255);
  ellipse(610, 80, 10, 10);
  ellipse(685, 80, 10, 10);
}


void draw() {
  background(#343434);
  println(mouseX, mouseY);
  redondo(100, 100);
  lineas(0, 0);
  triangulo(3, 0);
  if (p==true) {

    triangulo(3, 0);
  }
  if (p ==false) {
    triangulo(10, 0);
  }
}

void keyPressed() {
  // unir el comportamiento en una sola tecla, añadir más complejidad
  if (key =='a') {
    p=true;
  }
  if (key =='s') {
    p= false;
  }
}