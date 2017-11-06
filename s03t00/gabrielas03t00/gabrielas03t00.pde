// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// gabrielas03t00
// Hacer que las pelotas reboten en los bordes del canvas y cambien de color

int x, y, speedx, speedy;                     // Declaración de variables x, y, speedx y speedy
color turqueza, verde, negro, blanco;                 // Declarar variables de color turqueza, Verde, Negro y Blanco

void setup() {    
  size(500, 500);                                     // Tamaño del canvas es de 500 px x 500 px
  turqueza = color(#3FC9BC);                               // Definir color Turqueza
  verde = color(#9FE57D);                                  // Definir color Verde
  negro = color(0);                                        // Definir color Negro
  blanco = color(255);                                     // Definir color Blanco
  x = 1;                                              // Valor de la variable x es 1
  y = height/2;                                       // Valor de la variable y es height/2
  speedx = 4;                                         // Valor de la variable speedx es 4
  speedy = 4;                                         // Valor de la variable speedy es 4
  background(negro);                                  // Color de fondo del canvas es Negro
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

void draw() {

  stroke(blanco);                                      // Color del grosor es blanco
  strokeWeight(0.5);     // El grosor es de 0.5
   // solo debes cambiar el valor de la variable
  ellipse(x, y, width/12.5, height/12.5);              // Dibujar elipse 
  ellipse(y, x, width/12.5, height/12.5);              // Dibujar elipse 
  ellipse(x, x, width/12.5, height/12.5);              // Dibujar elipse 
  ellipse(y, y, width/12.5, height/12.5);              // Dibujar elipse 


  if (x > width || x < 0) {                            // Declara condicional, sí x es mayor al ancho o menor a 0 es verdadero
    speedx *= -1;                                      // Multiplica speedx por -1.
     // solo debes cambiar el valor de la variable
    fill(turqueza);                                    // Rellenar la pelota de color Turqueza
  } 

  if (y > height || y < 0) {                           // Declara condicional, sí y es mayor al alto o menor a 0 es verdadero
    speedy *= -1;                                      // Multiplica speedy por -1
     // solo debes cambiar el valor de la variable
    fill(verde);                                       // Rellenar la pelota de color Verde
  } 
  x += speedx;                                        // Sumar a valor x  valor de speedx
  y += speedy;                                        // Sumar a valor y  valor de speedy
}