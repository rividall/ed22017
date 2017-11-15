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

public class javieraRc01 extends PApplet {

// Expresi\u00f3n Digital II - Dise\u00f1o Digital UDD - 2017
// Javiera Ram\u00edrez
// javieraRc01

/* Cuando corra el programa se ver\u00e1 una serie de puntos
que se desplazan formando ondas por el canvas. La uni\u00f3n de
dos tipos de movimiento distinto da la forma de ola a los
objetos. Por medio de las teclas 'a', 's', 'd', 'f'
se puede modificar la gama de colores del programa, que
representan diferentes partes del d\u00eda como la noche, amanecer,
d\u00eda (con sol) y atardecer. Adem\u00e1s, con las teclas '1', '2', '3',
'4' y '5' se puede modificar la amplitud con que se mueven
los objetos en horizontal y con las teclas 'q', 'w', 'e',
'r' y 't' se modifica la onda de los objetos en vertical.
Tambi\u00e9n al hacer click con el mouse se puede guardar una im\u00e1gen
de lo que sale en el canvas*/

// color inicial del cielo
int cielo = color(89, 108, 104);

int[] ci = new int[4]; // array cielo

JaviR[] r = new JaviR[300];

public void setup() {
  
  for (int i = 0; i < r.length; i++) {
    r[i] = new JaviR();
  }

  // colores array cielo
  ci[0] = color(89, 108, 104); // 1 nublado/oscuro
  ci[1] = color(187, 250, 241); // 2 de d\u00eda
  ci[2] = color(255, 225, 182); // 3 amanecer
  ci[3] = color(234, 144, 133); // 4 atardecer
}

public void draw() {
  fill(cielo, 20);
  rect(0, 0, width, height); //
  for (int i = 0; i < r.length; i++) {
    r[i].union();
  }
}

// se modifica el color del cielo por el teclado
public void keyPressed() {
  if (key == 'a') {
    cielo = ci[0];
  }

  if (key == 's') {
    cielo = ci[1];
  }

  if (key == 'd') {
    cielo = ci[2];
  }

  if (key == 'f') {
    cielo = ci[3];
  }
}

// se puede crear una foto de lo que esta pasando
// en el canvas haciendo click
public void mousePressed() {
  saveFrame ("jr2_###.jpg");
}
class JaviR {
  // variables
  float a, b, x, x2, y, y2, vx, vy, vx2, vy2, cant, tam, tam2;
  int q, w;

  // colores iniciales de los objetos
  int espuma = color(227, 217, 202);
  int agua = color(149, 167, 146);

  int[] esp = new int[4]; // array espuma
  int[] ag = new int[4]; // array agua

  // constructor
  JaviR() {
    x = width/2;
    y = height*.3f;
    y2 = height;
    x2 = random(width);
    vx = random(-3, 4);
    vy = random(-3, 4);
    vy2 = random(-4, -1);
    cant = 3;
    tam = random(1, 5);
    tam2 = random(1, 4);
    q = 2;
    w = 5;

    // colores del primer array
    esp[0] = color(227, 217, 202); // 1
    esp[1] = color(255, 255, 219); // 2
    esp[2] = color(249, 248, 235); // 3
    esp[3] = color(233, 226, 208); // 4
    // colores del segundo array
    ag[0] = color(149, 167, 146); // 1
    ag[1] = color(0, 170, 160); // 2
    ag[2] = color(122, 158, 177); // 3
    ag[3] = color(110, 87, 115); // 4
  }

  // m\u00e9todos
  public void union() {
    espuma();
    olas();
    mover();
    onda();
    keyPressed();
  }

  public void olas() {
    noStroke();
    fill(espuma);
    ellipse(x, y, tam, tam);
  }

  public void espuma() {
    fill(agua); 
    ellipse(x2, y2, tam2, tam2);
  }

  // se genera un desplazamiento lineal
  public void mover() {
    // moviemiento espuma
    y += vy;
    x += vx;

    if (x > width || x < 0) {
      x = width/2;
      y = height*.3f;
    }

    // moviemiento agua
    y2 += vy2;
    x2 += vx2;

    if (y2 < height*.3f) {
      y2 = height;
    }
  }

  // genera las ondas del movimiento
  public void onda() {
    //ondas espuma
    vy = cant * cos(radians(a*6))/q;
    a++;
    //ondas agua
    vx2 = cant * cos(radians(b*4))/w;
    b++;
  }

  // se cambia la paleta de colores por medio del teclado
  public void keyPressed() {
    if (key == 'a') {
      espuma = esp[0];
      agua = ag[0];
    }

    if (key == 's') {
      espuma = esp[1];
      agua = ag[1];
    }

    if (key == 'd') {
      espuma = esp[2];
      agua = ag[2];
    }

    if (key == 'f') {
      espuma = esp[3];
      agua = ag[3];
    }

// mientras mayor el n\u00famero, m\u00e1s peque\u00f1a ser\u00e1 la onda
// espuma
    if (key == '1') { q = 1; }
    if (key == '2') { q = 2; }
    if (key == '3') { q = 3; }
    if (key == '4') { q = 4; }
    if (key == '5') { q = 5; }
    
// mientras mayor el n\u00famero, m\u00e1s peque\u00f1a es la onda
// agua
    if (key == 'q') { w = 1; }
    if (key == 'w') { w = 2; }
    if (key == 'e') { w = 3; }
    if (key == 'r') { w = 4; }
    if (key == 't') { w = 5; }
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "javieraRc01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
