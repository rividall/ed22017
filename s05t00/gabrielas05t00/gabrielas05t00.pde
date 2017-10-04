// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// gabrielas07e00

float x, y, x1, x2, x3, x4, x5, x6, y2;                                 // Se declara varibales x e y
color turqueza, blanco, verde, negro;                                   // Se declaran las variables de color
boolean a ;                                                             // Se inicializa la variable boolean a

// Inicialización del ámbito de configuración
void setup() {

  size(1000, 400);                                                      // Tamaño del canvas es de 1000 px x 400px
  turqueza = (#3FC9BC);                                                 // Se le da valor al color turqueza
  blanco = (#FFFFFF);                                                   // Se le da valor al color blanco
  verde = (#9FE57D);                                                    // Se le da valor al color verde
  negro =(#000000);                                                     // Se le da valor al color negro
  x = 170.911;                                                          // Se inicializa la variable x
  y= 200;                                                               // Se inicializa la variable y
  x1 = 505.98;                                                          // Se inicializa la variable x1
  x2 = 498.736;                                                         // Se inicializa la variable x2
  x3 = 498.98;                                                          // Se inicializa la variable x3
  x4 = 499.321;                                                         // Se inicializa la variable x4
  x5 = 500.009;                                                         // Se inicializa la variable x5
  x6 = 836.05;                                                          // Se inicializa la variable x6
  y2 = 314.02;                                                          // Se inicializa la variable y2
  a = true;                                                             // Se inicializa la variable a como verdadera
}// Fin del ámbito de configuración


// Inicio ámbito dibujo
void draw() {
                                                   // Se declara el color de fondo
  if (a) {
    background(blanco);
    esfera(x, y, blanco, turqueza, verde, negro);                         // Función esfera
    lente(x2, x3, x4, x5, y, blanco, verde, turqueza, negro);             // Función lente
    solar(x6, y, blanco, turqueza, verde, negro);                         // Función solar
  } else if (!a) {
    background(negro);
    esfera(x, y, turqueza, blanco, negro, verde);                         // Función esfera
    lente(x2, x3, x4, x5, y, verde, blanco, turqueza, blanco);             // Función lente
    solar(x6, y, turqueza, negro, blanco, verde);                         // Función solar
  }
}// Fin ámbito dibujo

// Inicio ámbito esfera
void esfera(float x, float y, color blanco, color turqueza, color verde, color negro) {
  stroke(blanco);
  strokeWeight(2);
  fill(turqueza);
  ellipse(x, y, 300, 300);
  fill(verde);
  ellipse(x, y, 280, 280);
  fill(negro);
  ellipse(x, y, 260, 260);
  stroke(turqueza);
  ellipse(x, y, 220, 220);
  stroke(turqueza);
  ellipse(x, y, 200, 200);
  stroke(verde);
  ellipse(x, y, 180, 180);
  stroke(blanco);
  fill(turqueza);
  ellipse(x, y, 160, 160);
  stroke(blanco);
  fill(negro);
  ellipse(x, y, 120, 120);
}//Fin ámbito esfera

//Inicio ámbito lente
void lente(float x, float x2, float x4, float x5, float y, color blanco, color turqueza, color verde, color negro) {
  stroke(verde);
  strokeWeight(15);
  point(499.98, 81.185);
  point(618.425, 200.43);
  point(499.98, 319.253);
  point(379.217, 200.005);
  stroke(blanco);
  strokeWeight(2);
  line(648, 200, 350, 200);
  line(500, 350, 500, 51);
  noFill();
  strokeWeight(5);
  ellipse(x2, y, 300, 300);
  stroke(turqueza);
  strokeWeight(2);
  ellipse(x5, y, 260, 260);
  stroke(turqueza);
  strokeWeight(3);
  ellipse(x3, y, 220, 220);
  stroke(verde);
  strokeWeight(3);
  ellipse(x4, y, 180, 180);
  stroke(verde);
  strokeWeight(2);
  ellipse(x5, y, 100, 100);
}//Fin ámbito lente

//Inicio ámbito solar
void solar(float x, float y, color blanco, color turqueza, color verde, color negro) {
  noFill();
  stroke(verde);
  strokeWeight(4);
  ellipse(x6, y, 300, 300);
  stroke(turqueza);
  strokeWeight(2);
  ellipse(x6, y, 280, 280);
  fill(turqueza);
  stroke(turqueza);
  strokeWeight(2.5);
  ellipse(x6, y, 260, 260);
  fill(negro);
  stroke(blanco);
  strokeWeight(2);
  ellipse(x6, y, 240, 240);
  noFill();
  stroke(turqueza);
  strokeWeight(3);
  ellipse(x6, y, 220, 220);
  stroke(verde);
  strokeWeight(3);
  ellipse(x6, y, 200, 200);
  stroke(verde);
  strokeWeight(3);
  ellipse(x6, y, 180, 180);
  fill(verde);
  stroke(verde);
  strokeWeight(3);
  ellipse(x6, y, 160, 160);
  fill(negro);
  stroke(blanco);
  strokeWeight(2.5);
  ellipse(x6, y, 140, 140);
  noFill();
  stroke(verde);
  strokeWeight(2);
  ellipse(x6, y, 120, 120);
  fill(blanco);
  stroke(turqueza);
  strokeWeight(3);
  ellipse(x6, y, 100, 100);
}//Fin ámbito solar

//Inicio ámbito teclas
void keyPressed()  {
  if (key == 'a') {
    a = (!a);
  }
}//Fin ámbito teclas