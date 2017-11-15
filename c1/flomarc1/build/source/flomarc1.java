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

public class flomarc1 extends PApplet {

//Universidad del Desarrollo
//Facultad de Dise\u00f1o
//Dise\u00f1o Digital
//6to semestre
//Expresi\u00f3n Digital II
//8 de Noviembre, 2017
//Florencia Mart\u00ednez V.

/*
  "Se pide entregar un programa en donde se pueda modificar el comportamiento de
objetos por medio de input de mouse y el teclado, y que una vez el programa no reciba
input, este tenga un cambio c\u00edclico. Los comportamientos a dise\u00f1ar tienen que ser
relacionados al movimiento y ritmo del entorno natural: olas, viento, nieve, agua,
ondulaci\u00f3n, lluvia, vuelo. Con como m\u00ednimo una clase."
*/

/*
  Comportamiento: AGUA. Al apretar el mouse cambia el color de fondo y al apretar
el espacio cambia el ciclo de la ola.
*/


// Variables:
Florencia n; // Nuevo datatype.
boolean cambio; // boolean para el cambio de ciclo con el keyPressed.
 // Para imprimirlo.
boolean guardarpdf; //boolean para imprimirlo.

public void setup() { // Inicio \u00e1mbito setup.

  background(0xffC4F7FF); // Fondo abajo de la estela.
  n = new Florencia(); // Llamando a la clase Florencia.
   // Tama\u00f1o de canvas (tabloide).
  guardarpdf = false; // Para imprimir, es falso el valor, hasta apretar "p".
}

public void draw() { // \u00c1mbito dibujo:
  if (guardarpdf) {
    beginRecord(PDF, "flomarc01.pdf"); // Nombre del archivo pdf.
  }

  noStroke();
  fill(0, 219, 255, 3);
  rect(0, 0, width, height); /* Rect\u00e1ngulo con opacidad que se reescribe encima
                                de la estela de las ondulaciones. */

  // las funciones no deben llamar funcion.
  n.function(); // void function que esta dentro de la clase.

  n.movimiento(); // void movimiento que esta dentro de la clase.

  if (cambio) {
    n.onda(2, frameCount / 9); // Ciclo de la onda.
  }
  if (!cambio) {
    n.onda(70, frameCount * 0.09f); // Ciclo de la onda.
  }

  if (guardarpdf) { // Guardar para imprimir.
    endRecord();
    guardarpdf = false;

  }

}



public void keyPressed() {
  if (key == ' ') { // Si aprieto el espacio, el ciclo de la onda va a cambiar.
    cambio = !cambio;
  }
  if (key == 'p') { // Al apretar la tecla p, se va a generar un archivo pdf.
    guardarpdf= !guardarpdf;
    //save("flomarc01.tiff"); // Para guardar con estela.
  }
}


public void mousePressed() { /* Si aprieto el bot\u00f3n izquierdo del mouse el background va a
                      cambiar de color, sobreescribiendose en las ondas anteriores. */

  background(0, 0, 255,5); // Background azul.
}
class Florencia {//Inicio clase Florencia.

//variables:
  float x, y, diam, a, x1, y1, x2; //Se declaran variables.
  int c, d, e, f; //Se declaran variables de color.

//constructor:
  Florencia() { //inicializacion de variables.
    x = 100;
    y = 0;
    x1 = 100;
    y1 = 0;
    x2 = 1;

  //inicializar color de los puntos.
    c = color(0xff00C4D1);
    d = color(0xff0A84FA);
    e = color(0xff091BD8);
    f = color(0xff000C8B);

}
  //metodos:
  public void movimiento () {
    // x += 15; //velocidad de x.
    // x1 += 30; //velocidad de x1.
    // x2 += 26; //velocidad de x2.

    if (x > 800 || x < 0) { /* Si x es mayor al largo del canvas(800) o menor a 0,
                              su valor ser\u00e1 0. */
      x = 0;
   }

    if (x1 > 800 || x1 < 0) {  /* Si x1 es mayor al largo del canvas(800) o menor a 0,
                                 su valor ser\u00e1 0. */
      x1 = -10;

   }
   if (x2 > 800 || x2 < 0) {  /* Si x1 es mayor al largo del canvas(800) o menor a 0,
                                 su valor ser\u00e1 0. */
      x2 = 0;
   }




}



  public void function () { // Inicio void fincion con los puntos que forman las ondas.

    strokeWeight(20);
    stroke(c);
    point(x + 500, y + 50);

    strokeWeight(20);
    stroke(c);
    point(x, y + 50);

    strokeWeight(10);
    stroke(f);
    point(x + 100, y + 260);

    strokeWeight(10);
    stroke(f);
    point(x, y + 250);

    strokeWeight(10);
    stroke(f);
    point(x + 600, y + 175);

    strokeWeight(20);
    stroke(d);
    point(x + 100, y + 80);

    strokeWeight(20);
    stroke(d);
    point(x2 + 670, y + 10);

    strokeWeight(20);
    stroke(e);
    point(x2 + 300, y + 410);

    strokeWeight(20);
    stroke(d);
    point(x2 + 100, y + 220);

    strokeWeight(10);
    stroke(c);
    point(x + 550, y + 500);

    strokeWeight(10);
    stroke(e);
    point(x2 + 100, y + 385);

    strokeWeight(15);
    stroke(d);
    point(x2 + 10, y + 440);

    strokeWeight(20);
    stroke(c);
    point(x, y + 200);

    strokeWeight(10);
    stroke(f);
    point(x + 50, y + 190);

    strokeWeight(15);
    stroke(f);
    point(x, y + 470);

    strokeWeight(20);
    stroke(c);
    point(x + 8, y + 245);

    strokeWeight(10);
    stroke(d);
    point(x, y + 305);

    strokeWeight(15);
    stroke(e);
    point(x2, y + 200);

    strokeWeight(15);
    stroke(f);
    point(x2, y + 8);

    strokeWeight(20);
    stroke(c);
    point(x2, y + 300);

    strokeWeight(20);
    stroke(c);
    point(x2, y + 350);

    strokeWeight(20);
    stroke(f);
    point(x2, y + 350);

    strokeWeight(20);
    stroke(e);
    point(x, y + 150);

    strokeWeight(10);
    stroke(f);
    point(x, y + 125);

    strokeWeight(10);
    stroke(f);
    point(x1, y1 + 125);

    strokeWeight(15);
    stroke(c);
    point(x1, y1 + 300);

    strokeWeight(10);
    stroke(c);
    point(x1, y1 + 3);

    strokeWeight(10);
    stroke(d);
    point(x1, y1 + 30);

    strokeWeight(15);
    stroke(e);
    point(x1, y1 + 380);

    strokeWeight(10);
    stroke(f);
    point(x, y + 325);

    strokeWeight(15);
    stroke(e);
    point(x, y + 10);

    strokeWeight(10);
    stroke(e);
    point(x, y + 400);


}


  public void onda(float diam, float a) {//Inicio del void onda que da valor a las ondulaciones.

    // y = y + diam * cos(a); //Da un nuevo valor a y para formar la onda.

    // y1 = y1 + diam * cos(a); //Da un nuevo valor a y1 para formar la onda.

  } // Cierre del void onda que da valor a las ondulaciones.


} // Cierre de la clase Florencia.
  public void settings() {  size(800, 517); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "flomarc1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
