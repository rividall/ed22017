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

public class catalinajuezc1 extends PApplet {

// Universidad del Desarrollo, Facultad de Dise\u00f1o, Dise\u00f1o Digital - 6to semestre - Expresi\u00f3n Digital II UDD - 2017
// Catalina Juez
// 8 de noviembre del 2017
/*
Explicaci\u00f3n interactiva:
 Al correr el programa se generar\u00e1n unos grupos de cubos que se encuentran rotando
 constantemente donde podemos cambiar su rotaci\u00f3n apretando \u201ca\u201d o \u201cs\u201d. Tambi\u00e9n
 tenemos dos circunferencias generadas por unas series de c\u00edrculos que tambi\u00e9n se
 encuentran en constante movimiento, y que al apretar el mouse cada c\u00edrculo que
 compone esta circunferencia cambia su eje Z de 0 a mouseY/8, y el diametro de la
 circunferencia m\u00e1s peque\u00f1a var\u00eda seg\u00fan el eje X del mouse. Adem\u00e1s hay 6 c\u00edrculos
 que cambian su plano Z en relaci\u00f3n al eje Y del mouse, lo cual tambi\u00e9n sucede con
 todos los elementos de la composici\u00f3n, y si apretamos \u201cd\u201d su tama\u00f1o cambia a 150 y
 si apretamos \u201cf\u201d este vuelve a medir 550. Y con i guardamos la composici\u00f3n como pdf,
 pero este no guarda el plano Z en el pdf.

 Explicaci\u00f3n conceptual:
 La simetr\u00eda existente en la composici\u00f3n esta basada en las ondas que genera una gota
 al caer en el agua, pero a la vez el movimiento de los dem\u00e1s objetos est\u00e1 basado en
 los movimientos m\u00e1s bruscos o destructivos que puede generar la misma naturaleza,
 as\u00ed como podr\u00eda ser un tornado, etc.


 */


Cata [] u = new Cata [1];        // Llamamos a nuestro class.
Cata2 [] d = new Cata2 [0];

float z;                   // Declaramos variables.
int miColor, miColor1, miColor2, miColor3;
boolean guardar;

public void setup() {
  frameRate(10);
            // Tama\u00f1o composici\u00f3n y el P3D para poder usar el pano \u201cZ\u201d dentro de esta.
  miColor= color(228, 115, 76);  // Asignamos valor a nuestras variables.
  miColor1= color(227, 133, 135);
  miColor2= color(113, 114, 114);
  miColor3= color(83, 83, 82);

  guardar = false;

  for (int i = 0; i < u.length; i = i + 2) // Llamamos a nuestros class dentro del for.
  {
    u[i] = new Cata();
  }

  for (int i = 0; i < d.length; i = i + 2)
  {
    d[i] = new Cata2();
  }
}

public void draw() {
  background(miColor1);
  texto();

  if (guardar) {         // Creamos un "if" para definir como llamaremos al PDF;
    beginRecord(PDF, "catalinajuezc1.pdf");
    background(miColor1);
  }

  for (int i = 0; i < u.length; i ++) {  // Llamamos a los Metodos que creamos dentro del class.
    //rotate(radians(i)); // intento fallido de rotar los Metodos en 360.
    u[0].giro();
    u[0].giro1();
    u[0].giro2();
    u[0].giro3();

    u[0].movimiento();
    u[0].keyPressed();
    // u[0].cambio();
  }

  for (int i = 0; i<  d.length; i ++) {
    d[0].circulo1();
    d[0].circulo2();
    d[0].keyPressed();
  }


  translate(width/2, height/2); //Trasladamos a la mitad de nuestra composici\u00f3n.
  for (int x = 0; x < 360; x = x + 45) {  // Creaci\u00f3n de un for circular donde cada objeto tendr\u00e1 45 grados de diferencia.
    // rotate(radians(x)); // La x del for la multiplicamos por radianes (radians) la cual a su vez es rotada, lo cual hace posible que este for sea circular.
    // circulo (1, frameCount * .5); // Llamamos al "void circulo" y asignamos los valores de sus variables.

  }

  if (guardar) {      // Creamos un \u201cif\u201d para guardar nuestro PDF, declarando nuestro boolean "guardar" como falso.
    endRecord();
    guardar = false;
  }
}

public void circulo (float amt, float a) { // Creaci\u00f3n del \u201cvoid circulo\u201d y  declaramos variables a usar en este void.
  strokeWeight(1);
  fill (miColor);
  noStroke();
  translate(0, 0, z); // Profundidad de nuestros elementos (eje Z).
  ellipse(amt * cos(a)*5, width/2, 10, 10); // Usamos "cos" para crear un movimiento en bucle del circulo
  ellipse(amt * cos(a)*5, mouseX/6, 10, 10); // Gracias al mouseX puesto en su eje "Y", podemos manipular el di\u00e1metro de la circunferencia.
}


public void mousePressed () {   // Al apretar el mouse el eje Z pasa de estar en \u201c0\u201d a tener una distancia en relaci\u00f3n al \u201ceje Y\u201d del mouse.

  if (z == 0)
  {
    z = mouseY/8;
  } else {
    z = 0;
  }
}

public void keyPressed() {    // keyPressed para guardar finalmente nuestro PDF.
  if (key == 'i') {
    guardar = !guardar;
  }
}


public void texto() {
  fill(255);
  rect(width/20, height/50, width - (width/20)*2, height/8.3f, 7);

  textSize(10);  // Texto explicativo de las acciones que se pueden hacer.
  fill(miColor3);
  text("mouseY: Acercamiento al eje Z (zoom).", width/15, height/150 + 30);
  text("mousePressed: Los c\u00edrculos de la circunferencia mas peque\u00f1a cambian su disntancia del eje Z.", width/15, height/150 + 45);
  text("a: Opci\u00f3n uno para rotar el cubo.", width/15, height/150 + 60);
  text("s: Segunda opci\u00f3n para rotaci\u00f3n del cubo.", width/15, height/150 + 75);
  text("d: Primera opci\u00f3n para el tama\u00f1o de los c\u00edrculos.", width/15, height/150 + 90);
  text("f: Segunda opci\u00f3n para los tama\u00f1os de los c\u00edrculos.", width/15, height/150 + 105);
}
class Cata {
  // Variables
  float velx2, amt, a, r;
  int x, y, m, tam;
  int miColor3;

  // Constructor
  Cata () {
    x = width/2;
    y = height/2;
    tam = 70; // Tama\u00f1o cubos.
    m = 150;  // Para poner a la misma distancia los cubos.

    this.velx2= 1;
    amt = frameCount *.5f;
    a = 1;
    r = 0.4f; // Rotaci\u00f3n para eje X.

    miColor= color(228, 115, 76);
    miColor2= color(113, 114, 114);
    miColor3= color(83, 83, 82);
  }

  // Metodos
  public void giro() {
    strokeWeight(1);
    noFill();
    pushMatrix();
    translate(x, y - m, mouseY/3); // El mouseY define la distancia con el eje Z.
    rotateY(velx2);
    //rotateX(r);
    stroke(miColor3);
    box(tam); // Figura 3D primitiva.
    popMatrix();
  }

  public void giro1() {
    pushMatrix();
    translate(x, y + m, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  public void giro2() {
    pushMatrix();
    translate(x -m, y, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  public void giro3() {
    pushMatrix();
    translate(x + m, y, mouseY/3);
    rotateY(velx2);
    //rotateX(r);
    box(tam);
    popMatrix();
  }

  public void movimiento() {
    velx2 += 7.02f;   // Definimos el valor de la rotaci\u00f3n en eje Y
  }

  public void cambio() {
    if (mouseX > width/ 2) {
      r = 0.4f;
    } else {
      r = 0;
    }
  }

  public void keyPressed () {    // Al apretar \u201ca\u201d y \u201cs\u201d nuestra rotaci\u00f3n en eje X cambia, lo cual cambia la figura que los cubos crean al moverse
    if (key == 'a') {
      r = 0.4f;
    }
    if (key == 's') {
      r = 0;
    }
  }
}
class Cata2 {
  // Variables
  float velx, tam; 
  int x, y;
  int miColor, miColor3;

  //Constructor
  Cata2 () {
    this.velx= 1;
    miColor= color(228, 115, 76);
    miColor3= color(83, 83, 82);
    x = width/2;
    y = height/2;
    tam = 550;  // Tama\u00f1o c\u00edrculos.
  }

  // Metodos
  public void circulo1 () {
    strokeWeight(1);
    stroke(miColor3);
    noFill();
    translate(0, 0, mouseY/3); // Todo lo que siga a continuaci\u00f3n de este c\u00f3digo mover\u00e1 su eje Z en relaci\u00f3n al mouseY.
    ellipse(x, y, tam, tam);
  }

  public void circulo2 () {
    strokeWeight(1);
    stroke(miColor);
    noFill();
    ellipse(x, y, mouseY - tam, mouseY - tam); // Su tama\u00f1o adem\u00e1s depende del mouseY.
  }

  public void movimiento2() {
    velx += 2;
  }

  public void keyPressed () { // Al apretar "d" o "f" el tama\u00f1o de los c\u00edrculos cambia.
    if (key == 'd') {
      tam = 150;
    }
    if (key == 'f') {
      tam = 550;
    }
  }
}
  public void settings() {  size (550, 850, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "catalinajuezc1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
