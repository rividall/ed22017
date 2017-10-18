// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// Certamen 0
/*
  Una grilla hecha a partir de dos elipses, una sin fill (elipse 1) que aumenta
  en su tamaño ciclicamente y se revierte presionando las teclas "a" y "s".
  Tambien cambia su color en degrade, según la posición del mouse en la coordenada Y.
  La elipse 2, sin stroke, cambia de color (degrade) según la posición del mouse
  en la coordenada X. 
*/

int a, l; // declaración de variables de tamaño
int t; //declaración de variable de modificación
int x; // declaracón de la variable x

void setup() { // inicio ámbito de configuración
  size(500, 500); // tamaño del Canvas de 500 px por 500 px

  x = 10; // iniciación variable de x

  t = 2; // iniciación de variable de modificación
  a = 20; // iniciación variable de tamaño a
  l = 20; // iniciación variable de tamaño l
}// fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  background(255); // fondo del canvas de color blanco
  x = mouseX; // variable x es igual a la posición del mouse en la coordenada X

  //       init,      test,           update
  for (int i = 10; i <= width - x; i += 20) {  // for loop con i para x
    for (int j = 10; j <= height - x; j += 20) { // for loop con j para y
      int c = i + j; //variable local
      noFill(); // figura no tiene relleno
      stroke(c * mouseY * .1, 500 - c * mouseY * .1, 0); //cambios de color en el borde con mouse en la coordenada Y
      ellipse(i, j, a, l); // figura elipse 1
      fill(c * mouseX * .1); // cambios de color en el relleno del elipse 2 en la coordenada X
      noStroke(); // figura no tiene borde
      ellipse(i, j, 5, 5); // figura elipse 2
    }
  }
  a += t; // modificador aumento de tamaño en a, el tamaño a aumenta en la variable t
  l += t; // modificador aumento de tamaño en l, el tamaño l aumenta en la variable t
} // fin ámbito de dibujo


void keyPressed() { // inicio ámbito de teclas
  if (key == 'a') { // si la tecla a se apreta el relleno de la elipse 1 aumenta
    t = 2;          // si la tecla a se apreta el tamaño de la elipse 1 aumenta
  }
  if (key == 's') { // si la tecla a se apreta el relleno de la elipse 1 disminuye
    t = -2;         // si la tecla a se apreta el tamaño de la elipse 1 disminuye
  }
} // fin ámbito de teclas
