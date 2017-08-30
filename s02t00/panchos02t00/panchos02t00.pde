/*
Péndulo que gira en sentido del reloj. En un extremo tiene un diamante turqueza, y en el otro un círculo rojo con una
luna roja de contornos negros que gira en su sentido contrario. En el fondo unos cuadrados turqueza se funden con el diamante
mientras giran en sentido contrario también.
*/
int  z, b, c;
float  a = 0;

void setup() {
  size(500, 500);
  frameRate(20);
  strokeWeight(2);
}

void draw() {

  a++;  //Variable que genera las rotaciones.
  
  background(255);
  
  translate(width/2, height/2);
  rotate(a*.1/PI);
  
  noStroke();
  fill(52,221,211);
  
  pushMatrix();
  rotate(-a/(8*PI));
  rect(0,0,350,350);
  rotate(PI);
  rect(0,0,350,350);
  popMatrix();
   
  stroke(52,221,211);
  line(0, 0, 100, 0); //Cuerpo del péndulo.
  
  noStroke();
  fill(52,221,211);
  quad(0, 0, -40, 30, -80, 0, -40, -30);  //Diamante turqueza.
  fill(255);
  stroke(52,221,211);
  
  pushMatrix();            //Este pushMatrix permite el giro fuera del eje de origen.
  translate(100, 0);
  rotate(-a*0.25/PI);
  fill(252,13,72);
  ellipse(25, 0, 50, 50);
  stroke(0);
  ellipse(100, 0, 15, 15);
  stroke(0);
  popMatrix();
}