/*
 Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre -
 Expresión Digital II -  Certamen 1 - Sofía Oller

 Se pide entregar un programa en donde se pueda modificar el comportamiento de objetos,
 en este caso ellipses para la representación de burbujas, que por medio de input de
 mouse se cambia el color de fondo y la tecla espacio se cambia el sentido del ciclo de
 horizontal a vertical, en donde da la sensación que las burbujas suben y luego bajan.
 Mientras el programa no recibe ningún tipo de input tiene un cambio cíclico en sentido
 horizontal. El comportamiento diseñado en esta ocasión está directamente relacionado con
 movimiento y el ritmo del entorno natural del agua, el cual se representa a través de
 ellipse, dando la sensación que son burbujas.
 */

// Se inicia declaración de variables.
boolean espacio, guardarpdf; // Variables del boolean.
int fondo;
Agua a; // Variable clase.
import processing.pdf.*; // Importar en PDF.
// Fin declaración de variables.

void setup() {
  // Se inicia ámbito de seteo.
  size(800, 517);
  a = new Agua(); // Se declara "a", como la clase de "Agua".
  guardarpdf = false;
  fondo = #1b7eaa;
  noCursor();
}
// Fin ámbito de seteo.

void draw() {
  // Se inicia ámbito de dibujo.
  if (guardarpdf) {
    beginRecord(PDF, "sofiac1.pdf");
  }
  background(fondo);
  a.movimiento();
  pushMatrix();
  /* Se utiliza pushMatrix para realizar cambios de transformación en una sóla función y
   no afecte a las demás*/
  rotate(radians(90)); // Rotación en 90º la función "agua".
  a.agua();
  popMatrix();
  /* Se utiliza popMatrix para restaurar los cambios realizados anteriormente y que así
   no afecte a las demás funciones.*/
  if (espacio) { // Cuando se presione "espacio" aparecerá la función "burbujas".
    a.burbujas();
  }
  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
}
// Fin ámbito de dibujo.

void keyPressed() {
  // Inicio ámbito de teclado.
  if (key ==' ') // Si se preciona "espacio", aparece la función "burbujas".
    espacio = (!espacio );
  if (key == 'p') { // Si se presiona "p", se guarda un frame como PDF.
    guardarpdf = !guardarpdf;
  }
}
// Fin ámbito de teclado.

void mousePressed() {
  // Inicio ámbito de mouse.
  if (fondo == #259bd1) { // Si se presiona el "mouse", cambia el color del fondo.
    fondo = #085172;
  } else {
    fondo = #259bd1;
  }
}
// Fin ámbito de mouse.
