/*Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre -
 Expresión Digital II -  Certamen 1 - 08.11.2017 - Victor Sartori H.

 Se pide entregar un programa en donde se pueda modificar el comportamiento de
 objetos por medio de input de mouse y el teclado, y que una vez el programa no
 reciba input, este tenga un cambio cíclico. Los comportamientos a diseñar tienen
 que  ser relacionados al movimiento y ritmo del entorno natural: olas, viento,
 nieve, agua, ondulación, lluvia, vuelo.

 Este programa visualizará dos tifones (representado en varias ellipses girando) que
 estan en contacto y "bailan" entre ellos. Representando el movimiento del viento.
 Al presionar la tecla UP se sumarán objetos al tifón. Al Presionar DOWN se restarán
 objetos al tifón.
 Al hacer click se entrará en "Modo Huracán",  el cual terminará el "baile" de los
 tifones y aumentará la velocidad del viento. Afectando a los objetos dentro del
 huracán.
 */
import processing.pdf.*; // Importar en pdf.
float cc;  // Declarar variable cantidad de circulos;
boolean mh, guardarpdf;  // Declaramos modo huracán y guardar en pdf.
Viento v; // Nuevo datatype.

void setup() {
  size (523, 800); // Tamaño canvas, pensado para luego ser impreso en tabloide.
  v = new Viento(); // Definimos el nuevo class como "v".
  guardarpdf = false; // Definimos los valores.
  mh = false;
  cc = 180;
}
void draw() {

  if (guardarpdf) { // Nos imprimirá el frame como PDF.
    beginRecord(PDF, "vsartori01.pdf");
  }

  //background(139, 155, 177);

  fill(139, 155, 177, 90);     // Crear estela.
  rect(0, 0, width, height);
  smooth();
  translate(width/2, height/2); // Mover el punto (0,0) a la mitad del canvas.
  v.modohuracan(); // Activar el modo huracán.
  fill(167, 196, 189); // Verde. Esta brisa debe estar dentro del método
  v.brisa(50, 10, 2, 60); // Crea pequeños circulos al interior del tifón.
  fill(212, 215, 219, 90); // Gris Claro. Debe estar dentro del método
  v.tifon(100, 20, 2, 10, cc); // Crea una serie de circulos girando en un eje a
  // distintos tiempos.
  v.negatifon(100, 20, 2, 10, cc); // Crea el tifon de manera inversa/espejo.
  v.pdf(); // Termina el guardado en pdf.
}

void keyPressed() {
  v.interaccion0(); // Suma o resta el numero de circulos que componen al TIFON.
}
void mousePressed() {
  mh = !mh; // Cambia el valor del boolean mh, para activar el modo huracán.
}
