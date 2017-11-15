// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II
// cringelingsc1

/*
Al correr el programa, se visualizarán varios objetos en toda la pantalla como canvas
 tales como 2 triángulos en el medio. Además se visualizarán varias ellipse que
 rebotan en los bordes del canvas y los cuales cambian de color cada vez que se
 apreta la tecla espacio y varía cada vez que se abre el programa y por último
 una ellipse rotanto en el medio entre los triángulos.
 */

Catalina a, m, c; // Se crea la clase Catalina.

void setup() { // Se ejecuta al iniciar el programa
  fullScreen(); // Tamaño del Canvas - Toda la Pantalla

//Se crean 3 versiones para las funciones de las clase para así poder repetir una función
  a = new Catalina();  // Se crea una versión de la clase = a = new Catalina
  m = new Catalina();  // Se crea una versión de la clase = m = new Catalina
  c = new Catalina();  // Se crea una versión de la clase = c = new Catalina
}

void draw() {  // Se ejecuta cada vez que se inicia el programa
  background(0); // Color de Fondo - Negro
  // Se mencionan cada una de las funciones a utilizar en la class.
  a.movbolitas1(); // a.funcion es para las funciones principales.
  a.bolita2();
  a.movbolitas();
  a.bolita1();
  a.triangulo();
  a.triangulo1();
  c.movbolitas();      // c.funcion y m.función es para las mismas
                       // funciones anteriores que se repetirán
  c.bolita1();
  c.movbolitas();
  c.bolita2();
  m.movbolitas();
  m.bolita1();
  m.movbolitas1();
  m.bolita2();
  a.circulos();
}

void keyPressed() {        //Void keyPresses se utilizará para poder cambiar colores de las ellipses
  if (key == ' ') {
    int f = (int)random(2);
    a.colores(f);
    c.colores(f);
    m.colores(f);
    // println(f);
  }
}
