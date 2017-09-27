// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// gabrielasc0

/*
Dos grillas hecha a partir de círculos, una verde y otra turqueza.
Cambian de posición de manera constante. Las grillas, aparecen y desaparecen
dependiendo del lugar en el que se ubique el mouse dentro del canvas.
Cuando uno utiliza la tecla "t" o la tecla "v", el color del grosor de los
círculos cambia a negro o a gris respectivamente.
*/

// Se declaran las variables globales
int margen;                                                             // Se declara variable margen
float x, y;                                                             // Se declara varibales x e y
color turqueza, gris, blanco, verde, grisoscuro, negro;                 // Se declaran las variables de color

//Inicialización ambito de configuración
void setup() {

  size(400, 400);                                                       // Se crea un canvas de 400px x 400px
  x = 10;                                                               // Se le da valor 10 a la x
  y = 10;                                                               // Se le da valor 10 a la y

  turqueza = color(#3FC9BC);                                                 // Se le da valor al color turqueza
  gris = color(100);                                                         // Se le da valor al color gris
  blanco = color(255);                                                       // Se le da valor al color blanco
  verde = color(#9FE57D);                                                    // Se le da valor al color verde
  grisoscuro = color(190);                                                   // Se le da valor al color gris oscuro
  negro = color(0);                                                           // Se le da valor al color negro
}
// Fin del ámbito

// Inicializacion ámbito de dibujo
void draw() {

  background(grisoscuro);                                               // Se le asigna el color gris oscuro de fondo
  fill(blanco);                                                         // Se le asigna el color blanco
  triangle(x, y, width, height, mouseX, mouseY);                        // Se dibuja un triangulo

  margen = mouseY;                                                      // Variable marge es igual a la posición del mouse

// Loop
  for (int i = margen; i <= width - mouseX; i += 40) {                  // For loop con i designado a margen
    for (float j = y; j <= height - margen; j += 40) {                  // For loop con j asignado a y
      fill(turqueza);                                                   // Se le asigna el color turqueza
      ellipse(i, j, 15, 15);                                            // Se dibuja un círculo
    }
  }
  for (float i = x; i <= width - mouseX; i += 40) {                     // For loop con i asignado a x
    for (float j = y; j <= height - margen; j += 40) {                  // For loop con j asignado a i
      fill(verde);                                                      // Se le asigna el color verde
      ellipse(i, j, 15, 15);                                            // Se dibuja un círculo
      x += 0.002;                                                       // Se le suma a x 0.002
      y += 0.001;                                                       // Se le suma a y 0.001
    }

    if (x < 300) {                                                      // Sí, x es menor 300
      x += 0.001;                                                       // X sigue creciendo
    }
    if (y < 300) {                                                      // Sí, y es menor a 300
      y -=0.001;                                                        // Y deja de crecer
    }
  }
}
// Fin del ámbito

// Inicialización ámbito del Teclado (teclas)
void keyPressed() {
  if (key == 't') {                                                     // Si se apreta la letra "t"
    stroke(negro);                                                      // El grosor cambiará de color a negro
  }
  if (key == 'v') {                                                     // Si se apreta la letra "v"
    stroke(gris);                                                       // El grosor cambiará de color a gris
  }
}

// Fin del ámbito
