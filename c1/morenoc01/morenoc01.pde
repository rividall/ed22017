/*
Universidad del Desarrollo, Diseño Digital
Expresión Digital II,Certamen 01 , 08/1712017 /Nicolás Moreno

 En este codigo se encuentran 3 clases las cuales cada uno tiene su propio comporamiento , estos estan relacionados al moviemiento natural del viento , agua (olas) y nieve

 -Clase Agua : Al procesar el código, se visualizaran puntos en paralelo, al mover el mouse hacia abajo, los puntos se mueven creando distintas ondas. Estos al mover de tal forma crearan un moviemiento similar a las olas del mar.
 -Clase Nieve : Al procesar el código, se visualizaran ellipses que tienen su velocidad ,hight ,width en random dentro de unos parametros ( este crea la ilusión de que la nieve cae con perspectiva). La velocidad es controlado por el mouseY.
 -Clase viento : Al procesar el código, se visualizaran muchas ellipses controlado por el mouse .El tamaño de la ellipse es mayor cuando se alejan del mouse y viceversa. Crea la ilusión de una corriente de viento choca una tela.

 *Cada uno de estas clases es cambiado con las teclas a, s, d y sí se preciona el mouse, se guardara un frame como PDF.
 */

import processing.pdf.*; //Importar en PDF.

// variables
Viento n,e; // nuevo datatype
Nieve o;
Agua w;

void setup() {

  size(500,700); // tamaño del canvas es de 500px,700px
  beginRecord(PDF, "Agua_Unknown Pleasures.pdf");
  smooth();

  o = new Nieve (); // se le asigna "o" a la nueva clase Nieve
  n = new Viento(); // se le asigna "n" a la nueva clase Viento
  w = new Agua();   // se le asigna "w" a la nueva clase Agua

}

void draw() {
  background(0);            // el fondo es negro
  noStroke();

  if (keyPressed){           //Sí se preciona el a,s,d , distintas clases se cambiaran en el canvas.
    }else{
      if (key == 'a' ){          // se le asigna la tecla a
      w.mar();              //Se llama a la función del "mar", en la clase "Agua".
    }
    if (key == 's' ){         // se le asigna la tecla s
      o.caida();                //Se llama a la función del "caida", en la clase "Nieve".
    }
    if (key == 'd'){      // se le asigna la tecla d
      n.tela();             //Se llama a la función del "tela", en la clase "Viento".
    }
  }
}
  void mousePressed() { //Sí se preciona el mouse, se guardara un frame como PDF.
  endRecord();
  exit();              // Se cierra la ventana
}
