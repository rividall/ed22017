import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.pdf.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class gabrielac01 extends PApplet {

// Universidad del Desarrollo - Facultad de Dise\u00f1o - Dise\u00f1o Digital - 6to semestre
// Expresi\u00f3n Digital II - 2017
// Gabriela Navarro Risopatr\u00f3n
// gabrielasc1

/*Se podr\u00e1 ver aqu\u00ed dos espirales que representan remolinos de viento,
 tiene dos strokes diferentes para simular la potencia de estos remolinos.
 Esto se lograr\u00e1 mediante una clase llamada Gabriela, la cual contiene todos
 los elementos a utilizar*/


boolean guardartiff;

Gabriela g;
public void setup() {
  
  guardartiff = false;
  g = new Gabriela();
}

public void draw() {
  g.spiral();
  g.keyPressed();

  if (guardartiff) {
    beginRecord(PDF, "gabrielac01.tiff");

    if (guardartiff) {
      endRecord(); //detiene el proceso
      guardartiff = false;
    }
  }
}
public void keyPressed() {
  if (key == 's') {
    guardartiff = true;
  saveFrame("gabrielac01.tif");

  }
}
class Gabriela {
  int margen, value;
  float x, y, z, r;
  int t, b, v, n;                 // Se declaran las variables de color

  Gabriela() {
    t = color(63, 201, 188);    //Turqueza
    b = color(255);          //Blanco
    v = color(159, 229, 125);   //Verde
    n = color(0);   //Negro
    x = 10;
    y = 10;
    z = 0;
    r = 0;
    value = 0;
  }

  public void spiral() {
    stroke(t);
    strokeWeight(4);
    if (z < 150) { 
      point(width/2 + cos(z) * r, height/2 + sin(z) *r);
      point(width/4 + cos(z) * r, height/4 + sin(z) *r);
      point(450 + cos(z) * r, 450 + sin(z) *r);
      z = z + 0.5f;
      r = r + 0.1f;
    }
  }


  public void keyPressed() {
    if (key == 't') {
      background(b);
      stroke(v);
      strokeWeight(4);
      if (z < 1500) {
        point(width/2 + cos(z) * r, height/2 + sin(z) *r);
        point(width/4 + cos(z) * r, height/4 + sin(z) *r);
        point(450 + cos(z) * r, 450 + sin(z) *r);
        z = z + 0.5f;
        r = r + 0.1f;
      }
    }
  }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "gabrielac01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
