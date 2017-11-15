import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class gutierrezc01 extends PApplet {

// no hay descripci\u00f3n general de lo que el programa realiza

Olas[] papers = new Olas[10];// se llama a una clase y se declara un array de 100 objetos
float x, y, speeda, speedb;
float z = 80;
float r = height - 5;

public void setup() {
  
  noCursor();
  for (int i = 0; i < papers.length; i++){
    papers[i] = new Olas(random(100));// se da un valor a cada objeto del array
  }
 }

public void draw(){
  background(0);
  for (int i=0; i < papers.length; i++){
    papers[i].display();
    papers[i].move();
// se dibuja cada objeto dandole caractirisicas y movimientos determinados en la clase
  }
}
class Olas{
  float x, y, a, posa, posb;
  float rr=PI/3.0f;
  Olas(float s){
  y = s;
  posa = random(-10, 10);
  posb = random(-3, 3);
 // se le da un valor random a ciertas partes del bezier para que cada vez que sea nuevamente
 // dibujado se le de un nuevo valor dando una sensacion de movimiento
  }
  public void display(){
    noFill();
    strokeWeight(3);
    bezier(0, cos(x)*200,  mouseX , mouseY,  700, 75,  cos(y)*500, 1000);
    bezier(width, sin(x)*200,  mouseX, mouseY,  width-700, height-75,  sin(y)*500, 0);
    bezier(width, cos(x)*200,  mouseX, mouseY,  width-700, width-75,  sin(y)*500, 0);
    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        rotate(rr);
      // se aplicar\u00e1 rotaci\u00f3n al bezier
      }
    }
    if (mousePressed == true) {
      stroke(random(255),random(255),random(255));
    } else {
      stroke(random(255),200);// el segundo valor da opacidad
    }
  }

 public void move() {
   x += posa;
   y += posb;
   rr+=3;
    // esta parte dara el movimiento y la rotacion
 }
}
  public void settings() {  size(1020, 660); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "gutierrezc01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
