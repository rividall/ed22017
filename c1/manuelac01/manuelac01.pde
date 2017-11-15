/*Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre -
 Expresión Digital II -  Certamen 2 - 08.11.2017 - Manuela Larrain O.

 Se pide entregar un programa en donde se pueda modificar el comportamiento de
 objetos por medio de input de mouse y el teclado, y que una vez el programa no
 reciba input, este tenga un cambio cíclico. Los comportamientos a diseñar tienen
 que  ser relacionados al movimiento y ritmo del entorno natural: olas, viento,
 nieve, agua, ondulación, lluvia, vuelo.

 Al procesar el código, se visualizaran varias líneas en paralelo, que crearán
 distintas ondas. Al presionar la tecla espaciadora, la velocidad de la onda
 aumenta/disminuye, cambiando el  efecto visual que crea la onda, y al presionar
 el mouse, el ancho de las líneas aumenta/disminuye. El comportamiento del código,
 representa el movimiento del agua, ya sea por la velocidad del flujo, o las olas
 del agua.
 */

// variables
Ondas o;
float vv = 0;

import processing.pdf.*; //Importar en PDF.
boolean guardarpdf, vel, anch; //Variables del boolean.
color naranjo, celeste;  //Variables de color.
float x, y;

void setup() {
  size(800, 517); //Tamaño del canvas
  o = new Ondas(); //Se declara "o", como la clase "Ondas.
  guardarpdf = false;
  celeste = #ACEDEF;
  naranjo = #FA9C21;
  vel = false;
  anch = true;
}

void draw() {
  if (guardarpdf) {
    beginRecord(PDF, "manuelac01.pdf");
  }

  o.fondo(); //Se llama a la función del "fondo", en la clase "Ondas".

  if (vel) {
    vv = 0.2; //vv es 0.2.
  } else {
    vv = 0.01; //Sino 0.01.
  }

  if (anch) {
    o.lineas(vv, 5); //Si el boolean "anch" es verdadero, el ancho de las líneas es 5.
  }

  if (!anch) {
    o.lineas(vv, 2); //Si el boolean "anch" es falso, el ancho de las líneas es 2.
  }

  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}

void keyPressed() {
  if (key ==' ') { //Sí se preciona el espacio, la velocidad cambia.
    vel = !vel;
  }

  if (key == 'p') { //Sí se preciona "p", se guardara un frame como PDF.
    guardarpdf = !guardarpdf;
  }
}

void mousePressed() { //Sí se preciona el mouse, el ancho de las líneas cambia.
  anch = !anch;
}
