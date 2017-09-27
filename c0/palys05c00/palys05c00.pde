// Expresión Digital II - Diseño Digital - UDD - 2017
// Paulina Descouvieres
// palyc0

/*
Al ejecutar la función, se dibuja una grilla con líneas que giran sobre ésta como eje,
 y van creciendo.
 Al presionar la tecla '2', la grilla cambia a elipses que se comienzan
 a trasladar aleatoriamente en el canvas.
 Al presionar la tecla '1', la grilla vuelve a las líneas.
 Ambas figuras pueden cambiar su grosor y diámetro, respectivamente, al clickear el mouse.
 */


Dot[] d = new Dot[625];                   //Declaración de array que completa con 625 elementos la grilla.
int cambio;                               //Declaración de variable de cambio de elementos.
int l, s;                                 //Declaración de variables de grosor y diámetro.

color c1 = color(111, 197, 166);            //Verde.
color c2 = color(234, 215, 104);            //Amarillo.

void setup() {
  size(850, 850);                         //Tamaño del canvas.
  cambio = 1;                             //Asignación de valor inicial de elementos en la grilla.
  l = 1;                                  //Asignación de valor inicial de grosor de las líneas.
  s = 3;                                  //Asignación de valor inicial de diámetro de las elipses.


  for (int i = 0; i < 25; i++) {          //Doble for loop para determinar elementos en la grilla.
    for (int j = 0; j < 25; j++) {
      int total = j + i * 25;             //Declaración de variable de elementos totales.
      float ix = i * 25;                  //Declaración de variables de posición de elementos.
      float jy = j * 25;                  //Declaración de variables de posición de elementos.

      d [total] = new Dot(ix, jy, (int)random(-2, 2), (int)random(-2, 2), total * .01);    //Llamada a la clase para dibujar elementos en la grilla.
    }
  }
}

void draw() {
  background(123);                        //Color del fondo.
  translate(width * .15, height * .15);   //Traslado del primer elemento de la grilla.

  for (int i = 0; i < d.length; i++) {    //Doble for loop para dibujar la grilla.
    if (cambio == 1) {                    //Función condicional para elementos en la grilla.
      d[i].displayLine();                 //Dibujar líneas.
      d[i].moveLine();                    //Rotación de líneas.
    }

    if (cambio == 2) {                    //Función condicional para elementos en la grilla.
      d[i].display();                     //Dibujar elipses.
      d[i].move();                        //Mover elipses.
    }
  }
}

void mousePressed() {
  /*
  Investigar que significa que una variable global sea modificada en este ámbito
  para ser usada como local dentro de una función de una clase.
  Cuestionar si es el mejor camino éste, y proponer uno mejor, si existe.
  */
  if (l == 1) {                           //Función condicional para grosor de la líneas de 1 px.
    l = 5;                                //Cambiar grosor a 5 px.
  } else {
    l = 1;                                //Cambiar grosor a 1 px.
  }

  if (s == 3) {                           //Función condicional para diámetro de las elipses de 3 px.
    s = 10;                               //Cambiar diámetro a 10 px.
  } else {
    s = 3;                                //Cambiar diámetro a 3 px.
  }
}

void keyPressed() {
  float r = random(255);                 //Variabales para crear un random de color.
  float g = random(255);
  float b = random(255);

  if (key == '1') {                       //Función condicional para tecla '1'.
    cambio = 1;                           //Mostrar grilla de líneas.
  }

  if (key == '2') {                       //Función condicional para tecla '2'.
    cambio = 2;                           //Mostrar grilla de puntos.
  }

  if (key == 'b') {                       //Función condicional para tecla 'b'.
     c1 = color(r, g, b);                 //Cambio de color de las líneas.
  }

  if (key == 'n') {                       //Función condicional para tecla 'n'.
     c2 = color(r, g, b);                 //Cambio de color de las elipses.
  }

  if (key == 'q') {                       //Función condicional para tecla 'q'.
    exit();                               //Cerrar la ventana.
  }
}
