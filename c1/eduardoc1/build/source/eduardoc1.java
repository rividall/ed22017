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

public class eduardoc1 extends PApplet {

// Universidad del Desarrollo.
// Dise\u00f1o Digital.
// Expresi\u00f3n Digital II.
// Certamen_01.

// Descripci\u00f3n: En este programa se pueden visualizar ondas constantes, tal como se ven cuando una gota cae sobre el agua. Bas\u00e1ndose en el movimiento del agua, tambi\u00e9n
// se puede hacer un paralelo con un remolino que es formado por las l\u00edneas que giran alrededor de las ondas.





Edo []e = new Edo [1]; // si es un objeto no es necesario hacer una lista

boolean print = false;

public void setup() {
  // noCursor();
  
  

  for (int i=0; i< e.length; i++) {
    e[i] = new Edo();
  }
}


public void draw() {

  if (print) {
    beginRecord(PDF, "Eduardoc01.pdf");
    background(20);
  }


  fill(0, 25);                    //Color fondo.
  noStroke();                     //El rect\u00e1ngulo de fondo no tiene bordes.
  rect(0, 0, width, height);      //El rect\u00e1ngulo de fondo ocupa el tama\u00f1o del canvas.

  for (int i=0; i <e.length; i++) {
 // e[i].ptos();  Sin Uso
    e[i].ondas();   // Se dibujan las elipses.
    e[i].centro();  // Se dibujan los arcos.
    e[i].lineas();  // Se dibujan las l\u00edneas.
    e[i].keyPressed(); // Funci\u00f3n de tecla.
    e[i].click();     // Funci\u00f3n de mouse.
  }
  if (print) {
    endRecord();
    print=false;
  }
  // println(frameRate);
}
public void keyPressed() {

  if (key == 'p') {
    print = !print;
  }
}
// Nueva clase.
class Edo {

  int x1, y1, x2, y2, cx, cy, x3, y3, x4, y4; // Se declaran las variables decimales, de color y enteras.
  int veluno, veldos;
  int aqua, blanq, celq;
  float i = 0;
  float o = 0;
  float g = 3;
  float f = 2;

  // Constructor.
  Edo() {
    x1 = 70;       // Se inician las variables decimales, de color y enteras.
    y1 = 70;
    x2 = 70;
    y2 = 70;
    cx = 325;
    cy = 250;
    x3 = 50;
    y3 = 100;
    veluno = 1;
    veldos = 2;
    aqua = (0xff8BC0FF);
    blanq =(0xffD6E9FF);
    celq = (0xffAAD8FF);
  }
  // M\u00e9todos.
  public void ondas() {    // Se dibujan las ondas que aparecen y decaparecen.
    stroke(aqua);
    strokeWeight(3);
    noFill();
    ellipse(width/2, height/2, x1, y1);
    stroke(blanq);
    ellipse(width/2, height/2, x2, y2);


    if (x1 > 200) {        // Si el tama\u00f1o de la elipse 1 supera los 200px, la elipse vuelve a crearse desde 70px.
      x1 = 70;
      if (y1 > 200) {
        y1 = 70;
      }
    }

    if (x2 > 300) {       // Si el tama\u00f1o de la elipse 2 supera los 300px, la elipse vuelve a crearse desde los 70px.
      x2 = 70;
      if (y2 > 300) {
        y2 = 70;
      }
    }


    x1 += veluno;        // Los tama\u00f1os aumentan en 1 y 2 px.
    y1 += veluno;
    x2 += veldos;
    y2 += veldos;
  }

  public void centro() {         // Se dibujan los arcos que rotan.
    stroke(celq);
    strokeWeight(5);
    translate(cx, cy);   // Posiciona el arco a la mitad del canvas.
    rotate(i);           // Velocidad rotaci\u00f3n.
    arc(0, 0, 20, 20, PI, PI*2);
    resetMatrix();

    translate(cx, cy);
    rotate(o);
    arc(0, 0, 50, 50, PI, PI*2);
    resetMatrix();

    i=i+0.04f;         // Rotaci\u00f3n hacia la derecha.
    o=o-0.05f;         // Rotaci\u00f3n hacia la izquierda.
  }

  public void lineas() {       //Se dibujan las l\u00edneas que rotan.

    strokeWeight(g);
    translate(cx, cy);
    rotate(i);
    line(120, 120, 160, 160);
    resetMatrix();


    translate(cx, cy);
    rotate(o);
    line(120, 120, 160, 160);
    resetMatrix();

    translate(cx, cy);
    rotate(i+10);
    line(75, 75, 90, 90);
    resetMatrix();

    translate(cx, cy);
    rotate(o+5);
    line(75, 75, 90, 90);
    resetMatrix();
  }



  public void keyPressed() {      // Si se aprieta la tecla c, el color de las ondas y grosor de las l\u00edneas cambian; si se aprieta n, se revierten los cambios.
    if (key == 'c') {
      aqua = color(0, 0, random(50, 200));
      blanq = color(0, 0, random(50, 200));
      g ++;
    }
    if (g >= 25) {        // Cuando las l\u00edneas sean o superen los 25px de grosor, se quedar\u00e1n as\u00ed.
      g --;
    }

    if (key == 'n') {
      aqua = 0xff8BC0FF;
      blanq =0xffD6E9FF;
      g --;

      if (g <= 3) {       // Cuando las l\u00edneas sean inferior o igual a los 3px de grosor, se quedar\u00e1n as\u00ed.
        // mentira.
        g ++;
      }
    }
  }

  public void ptos() {        // Se dibuja un punto.
    strokeWeight(4);
    stroke(0xff8BAAA9);
    for (int i = -600; i < 400; i +=15) {   // El punto se multiplica por todo el eje Y.
      point(x3, y3+i+mouseY);  // El punto sigue al mouse en el eje Y.
    }

    x3 +=3;
    if (x3 > 650) {    // El punto vuelve a aparecer al llegar al final del canvas.
      x3 = 0;
    }
  }

  public void click() {         // Funci\u00f3n de mouse.
    if (mousePressed) {
      celq = 0xffFF989B;     // Mientras el mouse est\u00e1 clickeado, el color celq es rojo.
    } else {
      celq = 0xffAAD8FF ;   // Cuando el mouse no est\u00e1 clickeado, el color rojo es celq.
    }
  }
}
  public void settings() {  size(650, 500);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "eduardoc1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
