// Expresión Digital II - Diseño Digital UDD - 2017
// Javiera Ramírez
// javieraRc01

/* Cuando corra el programa se verá una serie de puntos
que se desplazan formando ondas por el canvas. La unión de
dos tipos de movimiento distinto da la forma de ola a los
objetos. Por medio de las teclas 'a', 's', 'd', 'f'
se puede modificar la gama de colores del programa, que
representan diferentes partes del día como la noche, amanecer,
día (con sol) y atardecer. Además, con las teclas '1', '2', '3',
'4' y '5' se puede modificar la amplitud con que se mueven
los objetos en horizontal y con las teclas 'q', 'w', 'e',
'r' y 't' se modifica la onda de los objetos en vertical.
También al hacer click con el mouse se puede guardar una imágen
de lo que sale en el canvas*/

// color inicial del cielo
color cielo = color(89, 108, 104);

color[] ci = new color[4]; // array cielo

JaviR[] r = new JaviR[300];

void setup() {
  fullScreen();
  for (int i = 0; i < r.length; i++) {
    r[i] = new JaviR();
  }

  // colores array cielo
  ci[0] = color(89, 108, 104); // 1 nublado/oscuro
  ci[1] = color(187, 250, 241); // 2 de día
  ci[2] = color(255, 225, 182); // 3 amanecer
  ci[3] = color(234, 144, 133); // 4 atardecer
}

void draw() {
  fill(cielo, 20);
  rect(0, 0, width, height); //
  
  for (int i = 0; i < r.length; i++) {
    r[i].union();
  }
}

// se modifica el color del cielo por el teclado
void keyPressed() {
  if (key == 'a') {
    cielo = ci[0];
  }

  if (key == 's') {
    cielo = ci[1];
  }

  if (key == 'd') {
    cielo = ci[2];
  }

  if (key == 'f') {
    cielo = ci[3];
  }
}

// se puede crear una foto de lo que esta pasando
// en el canvas haciendo click
void mousePressed() {
  saveFrame ("jr2_###.jpg");
}
