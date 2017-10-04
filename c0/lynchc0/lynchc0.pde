//Expresión digital II - Diseño Digital - UDD- 2017.
//Ricardo Vidal Lynch.
//lynchc0.
/* El programa genera una grilla estática de elipses al fondo, y una grilla de ellipses
 que orbitan a las anteriores. Estas elipses cambian de tamaño dependiendo de la distancia
 de su centro al lugar donde se encuentra el mouse. Una tercera ellipse, al interior de
 las anteriores, genera un efecto de vacío de estas, y su tamaño se puede controlar mediante
 las teclas 'a' y 's'.
 */


Orbita[] o = new Orbita[81]; // Clase Orbita, ellipse orbitando el fondo.
float tamN = 10; //Tamaño elipse vacío.

void setup() {
  size(600, 600);

  for (int i = 0; i < 9; i++) {  // Inicializadores de objetos de Orbita.
    for (int j = 0; j < 9; j++) {
      int total = j + i * 9;
      float px = i * 30;
      float py = j * 30;
      float posX = width / 8 * i;
      float posY = height / 8 * j;
      o[total] = new Orbita(px, py, posX, posY); // Creación de todos los objetos mediante un Array.
    }
  }
}

void draw() {
  background(5);
  noStroke();

  for (int i = 0; i < o.length; i++) {  // Creación de objetos de clase Orbita.
    o[i].displayOrbita();
    o[i].moveOrbita(); // Funciones al interior de la clase, pueden ser llamadas con un '.'.
  }
}

/*
Investiga los posibles problemas que hay en lo siguiente:
Declaras tamN como global, para modificalo acá abajo, pero la usas como local
en displayOrbita();
Creo que lo correcto sería crear displayOrbita(con parametros) que hagan de espejo
a tamN, así el cambio más directo y específico en la función.
Así se guía por el texto a que la modificación de tamN ocurre solo en displayOrbita();
*/

void keyPressed() { // Funciones de teclado.
  if (key =='a') {
    if (tamN<90) {
      tamN +=10;
    }
  }
  if (key =='s') {
    if (tamN >0) {
      tamN -=10;
    }
  }
}
