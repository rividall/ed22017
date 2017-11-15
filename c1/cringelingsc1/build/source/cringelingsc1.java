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

public class cringelingsc1 extends PApplet {

// Universidad del Desarrollo - Facultad de Dise\u00f1o - Dise\u00f1o Digital - 6to semestre
// Expresi\u00f3n Digital II
// cringelingsc1

/*
Al correr el programa, se visualizar\u00e1n varios objetos en toda la pantalla como canvas
 tales como 2 tri\u00e1ngulos en el medio. Adem\u00e1s se visualizar\u00e1n varias ellipse que
 rebotan en los bordes del canvas y los cuales cambian de color cada vez que se
 apreta la tecla espacio y var\u00eda cada vez que se abre el programa y por \u00faltimo
 una ellipse rotanto en el medio entre los tri\u00e1ngulos.
 */

Catalina a, m, c; // Se crea la clase Catalina.

public void setup() { // Se ejecuta al iniciar el programa
   // Tama\u00f1o del Canvas - Toda la Pantalla

//Se crean 3 versiones para las funciones de las clase para as\u00ed poder repetir una funci\u00f3n
  a = new Catalina();  // Se crea una versi\u00f3n de la clase = a = new Catalina
  m = new Catalina();  // Se crea una versi\u00f3n de la clase = m = new Catalina
  c = new Catalina();  // Se crea una versi\u00f3n de la clase = c = new Catalina
}

public void draw() {  // Se ejecuta cada vez que se inicia el programa
  background(0); // Color de Fondo - Negro
  // Se mencionan cada una de las funciones a utilizar en la class.
  a.movbolitas1(); // a.funcion es para las funciones principales.
  a.bolita2();
  a.movbolitas();
  a.bolita1();
  a.triangulo();
  a.triangulo1();
  c.movbolitas();      // c.funcion y m.funci\u00f3n es para las mismas
                       // funciones anteriores que se repetir\u00e1n
  c.bolita1();
  c.movbolitas();
  c.bolita2();
  m.movbolitas();
  m.bolita1();
  m.movbolitas1();
  m.bolita2();
  a.circulos();
}

public void keyPressed() {        //Void keyPresses se utilizar\u00e1 para poder cambiar colores de las ellipses
  if (key == ' ') {
    int f = (int)random(2);
    a.colores(f);
    c.colores(f);
    m.colores(f);
    // println(f);
  }
}
class Catalina {   // Se establece la clase Catalina
  //Variables
  float x, y, vx, vy, vx1, vy1, h, k1, k2;    // Variables en decimal a usar.
  int a, b, c, d, e, k;                       // Variables enteras a usar.

  int[] colores = new int [3];            // Array para 3 colores diferentes
                                              // a utilizar en ellipses
  int f;                                      // Esta variable eleg\u00edra un color
                                              // de la lista al correr el programa.

  //Constructor
  Catalina() {                     /*Se escriben los valores de cada variable. 
                                   Se utiliza this. para referirse a variables
                                   de a otra ventana.*/
                                   
    // Se declaran las variables a utilizar.
    x = 0;
    y = height/2;
    vx = random(1, 3);     // Variables de Velocidad.
    vy = random(7, 9);
    vx1 = random(7, 9);
    vy1 = random(4, 6);

    a = 25;
    b = 25;
    d = 50;
    e = 50;
    h = 0;
    k1 = 0;
    k2 = k1;
    
    // Variables de Color.
    colores[0] = 0xff70B1D1;
    colores[1] = 0xff1F6486;
    colores[2] = 0xffADE4FF;
    f = (int)random(colores.length);  // Se elige entre los colores 0, 1 y 2.
  }

  //M\u00e9todos
  // Movimiento a utilizar en las ellipses - void bolita1()
  public void movbolitas() {
    x += vx;
    y += vy;
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
  }
  
  // Se crea una ellipse de tama\u00f1o (50, 50) o (d, e)
  public void bolita1() {
    noStroke();
    fill(colores[f]);
    ellipse(x, y, d, e);
  }
  
  // Se crea el mismo movimiento pero para ellipses m\u00e1s peque\u00f1as
  public void movbolitas1() {
    x += vx1;
    y += vy1;
    if (x > width || x < 0) {
      vx1 *= -1;
    }
    if (y > height || y < 0) {
      vy1 *= -1;
    }
  }
  
  // Se crea una ellipse de tama\u00f1o (10, 10) o (a, b);
  public void bolita2() {
    fill(colores[f]);  // Color random seg\u00fan array anteriormente mencionado.
    noStroke();
    ellipse(y, x, a, b);
  }
  
  // Se crean dos tri\u00e1ngulos a la mitad del canvas. triangulo1 est\u00e1 al inverso.
  public void triangulo() {
    fill(0);
    stroke(255);
    strokeWeight(5);
    triangle(width/2, 50, height+100, 650, 350, 650);
    //(width/2, height-100, 350, 150, 900, 150);
  }

  public void triangulo1() {
    fill(0);
    stroke(255);
    strokeWeight(5);
    triangle(width/2, height-100, 350, 150, 900, 150);
  }
  
  //Se cra una ellipse que rota y traslada en sentido contrario a las manijas del reloj
  public void circulos() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(-h);
    noFill();
    strokeWeight(5);
    stroke(255);
    ellipse(10, 10, 20, 20);
    popMatrix();

    h = h + 0.3f;
  }
  
  // Se inicializa las variables de color.
  public void colores(int f) {
    this.f = f;
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "cringelingsc1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
