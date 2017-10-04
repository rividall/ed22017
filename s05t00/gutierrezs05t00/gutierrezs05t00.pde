
boolean pressed; // declaracion de boolean
void setup(){
size(1200,400);//tamano canvas
rectMode(CENTER);//rectangulos se dibujaran desde el centro
}
void draw(){
  if (pressed){//si boolean es verdadero el fondo se ira a negro
    background(0);
  }
  else{
    background (255);//si el boolean es falso el fondo sera blanco
  }
mandala1(200,height/2);//declaracion de las coordenadas en las que se partira dibujando como si fueran 0
mandala2(600,130);//declaracion de las coordenadas en las que se partira dibujando como si fueran 0
mandala3(350,-250);// declaracion de las coordenadas en las que se partira dibujando como si fueran 0
}
void mandala1(int x, int y){
 noFill();
 strokeWeight(10);
 noStroke();
 fill(200);
 ellipse(x,y,210,210);
 fill(0);
 rect(x, y, 150, 150);
 pushMatrix();// se aislara la rotacion a solo un cuadrado
 translate(x,y);// se parte el dibujo y la rotacion desde aqui
 rotate(PI/4.0);// rotacion
 rect(0, 0, 150, 150);
 popMatrix();// se aislara la rotacion a solo un cuadrado
 noStroke();
 fill(255);
 rect(x, y, 100, 100);
 pushMatrix();// se aislara la rotacion a solo un cuadrado
 translate(x,y);
 rotate(PI/4.0);//rotacion
 rect(0, 0, 100, 100);
 popMatrix();// se aislara la rotacion a solo un cuadrado
}

void mandala2(int x, int y){
  stroke(0);
  noFill();
  rect(x, y, 150, 150);
  pushMatrix();
  translate(x,y);
  rotate(PI/4.0);
  rect(0, 0, 150, 150);
  popMatrix();
  noFill();
  ellipse(600,135,100,100);
  stroke(0);
  fill(255);
  ellipse(600,135,55,55);
  fill(0);
  ellipse(600,135,35,35);
  noStroke();
  translate(x,y-10);
  rotate(PI/4.0);
  for (int i = 1;i <= 40; i+=20){
   for (int j= 1;j <= 40; j+=20){
  strokeWeight(2);
  fill(0);
 fill (255);
  rect (i,j,20,1);//se dibujaran dos rectangulos(pareceran lineas por lo delgados que son)
 rect (i,j,1,20);
       }
  }
}
void mandala3(int a,int b){
  translate(a,b);
    for (int i = 1;i <= 100; i+=50){
   for (int j= 1;j <= 100; j+=50){
     fill(0);
     ellipse(i-15,j-15,100,100);
   }
    }
    for (int i = 1;i <= 80; i+=40){
   for (int j= 1;j <= 80; j+=40){
     fill(255);
     stroke(0);
     ellipse(i-10,j-10,80,80);
   }}
  for (int i = 1;i <= 40; i+=20){
   for (int j= 1;j <= 40; j+=20){
     noStroke();
     fill(200);
     ellipse(i,j,70,70);
     fill(0);
   }}
       for (int i = 1;i <= 40; i+=20){
   for (int j= 1;j <= 40; j+=20){
     ellipse(i,j,40,40);
}
  }
}
void keyPressed(){
  pressed = true; 
}
void keyReleased(){
  pressed = false; 
}