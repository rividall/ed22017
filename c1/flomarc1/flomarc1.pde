//Universidad del Desarrollo
//Facultad de Diseño
//Diseño Digital
//6to semestre
//Expresión Digital II
//8 de Noviembre, 2017
//Florencia Martínez V.

/*
  "Se pide entregar un programa en donde se pueda modificar el comportamiento de
objetos por medio de input de mouse y el teclado, y que una vez el programa no reciba
input, este tenga un cambio cíclico. Los comportamientos a diseñar tienen que ser
relacionados al movimiento y ritmo del entorno natural: olas, viento, nieve, agua,
ondulación, lluvia, vuelo. Con como mínimo una clase."
*/

/*
  Comportamiento: AGUA. Al apretar el mouse cambia el color de fondo y al apretar
el espacio cambia el ciclo de la ola.
*/


// Variables:
Florencia n; // Nuevo datatype.
boolean cambio; // boolean para el cambio de ciclo con el keyPressed.
import processing.pdf.*; // Para imprimirlo.
boolean guardarpdf; //boolean para imprimirlo.

void setup() { // Inicio ámbito setup.

  background(#C4F7FF); // Fondo abajo de la estela.
  n = new Florencia(); // Llamando a la clase Florencia.
  size(800, 517); // Tamaño de canvas (tabloide).
  guardarpdf = false; // Para imprimir, es falso el valor, hasta apretar "p".
}

void draw() { // Ámbito dibujo:
  if (guardarpdf) {
    beginRecord(PDF, "flomarc01.pdf"); // Nombre del archivo pdf.
  }

  noStroke();
  fill(0, 219, 255, 3);
  rect(0, 0, width, height); /* Rectángulo con opacidad que se reescribe encima
                                de la estela de las ondulaciones. */

  // las funciones no deben llamar funcion.
  n.function(); // void function que esta dentro de la clase.

  n.movimiento(); // void movimiento que esta dentro de la clase.

  if (cambio) {
    n.onda(2, frameCount / 9); // Ciclo de la onda.
  }
  if (!cambio) {
    n.onda(7, frameCount * 0.09); // Ciclo de la onda.
  }

  if (guardarpdf) { // Guardar para imprimir.
    endRecord();
    guardarpdf = false;

  }

}



void keyPressed() {
  if (key == ' ') { // Si aprieto el espacio, el ciclo de la onda va a cambiar.
    cambio = !cambio;
  }
  if (key == 'p') { // Al apretar la tecla p, se va a generar un archivo pdf.
    guardarpdf= !guardarpdf;
    //save("flomarc01.tiff"); // Para guardar con estela.
  }
}


void mousePressed() { /* Si aprieto el botón izquierdo del mouse el background va a
                      cambiar de color, sobreescribiendose en las ondas anteriores. */

  background(0, 0, 255,5); // Background azul.
}
