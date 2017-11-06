// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Sofía Oller Vidal
// Elemento que rebote en cuatros bordes y que vaya cambiando de color cada vez que rebote

color negro, blanco, rosado, celeste;                                // esto diciendo que cuando llame a este color será con este nombre

int x, y;                                     // nombrando las variables
int vely, velx;                               // nombrando nuevamente las variables
color pelota;                                 // nombró variable de pelota

void setup() {                                // inicio área de seteo
  size(500, 500);                             // se crea el tamaño del lienzo
  y=1;                                        // valorizando y
  vely = 8;                                  // le entrego el valor de velocidad a y
  x = width/2;                               // valorizando x
  velx = 8;                                  // le entrego el valor de velocidad a x

  pelota = color (255, 255, 255);             // declarando color blanco
  celeste = color (115, 221, 252);            // declarando color celeste
  negro = color (0, 0, 0);                    // declarando color negro
  rosado = color (232, 102, 247);             // declarando color rosado
  }

void draw() {                                 // inicio área de dibujo
  fill(pelota);                               // declaro el color de la ellipse
  noStroke();                                 // declaro ellipse sin borde
  ellipse(x, y, 10, 10);                      // se dibuja la ellipse
  if (y > height|| y < 0) {                   // si y es mayor a la altura o menor a 0, la velocidad de y es...
    vely *=-1;                                // se multiplica por el inverso para que así pueda rebotar
  } else if (x > width|| x < 0) {             //  si x es mayor al ancho o menor a 9, la velocidad de x es...
    velx *= -1;                               // se multiplica por el inverso para que así pueda reborat
  }
  if (x < 125 && y > 125 ||  x < 125 && y < 375) {             // si x es mayor a 125 e y es menor a 125 o x es menor a 125 e y mnenor a 375
    pelota = color (255, 255, 255); // blanco                  //  el resultado de lo anterior es blanco
  } else if ( x < 375 && y < 125 || x < 375 && y < 375) {      // pero si x es menor a 375 e y menor a 125 o x es menor a 375 e y es menor a 375 
    pelota = color (115, 221, 252);  //celeste                 // el resultado de lo anterior es celeste
  }
  
  if (x > 375 && y > 125 ||  x > 375 && y < 375) {             // si x es mayor a 375 e y es mayor a 125 o x es mayor a 375 e y mnenor a 375
    pelota = color (255, 255, 255); // blanco                  // el resultado de lo anterior es blanco
  } else if ( x > 125 && y < 125 || x > 125 && y > 375) {      // pero si x es mayor a 125 e y menor a 125 o x es mayor a 125 e y es mayor a 125 
    pelota = color (115, 221, 252);  //celeste                 // el resultado de lo anterior es celeste
  }

  y += vely;                                // x aumenta su valor
  x += velx;                                // y aumenta su valor

  // agrupar en funciones de color si las diferentes figuras lo comparten

  // triángulo 1
  stroke (negro);                           // declarando el color del borde
  strokeWeight (2);                         // declarando el tamaño del borde
  fill (rosado);                            // declarando de que color es el relleno del triangulo
  triangle (200, 300, 250, 500, 300, 300);  // declarando la posición del triángulo 1

  // triángulo 2
  stroke (negro);                           // declarando el color del borde
  strokeWeight (2);                         // declarando el tamaño del borde
  fill (rosado);                            // declarando de que color es el relleno del triangulo
  triangle (300, 300, 500, 250, 300, 200);  // declarando la posición del triángulo 2

  // triángulo 3
  stroke (negro);                           // declarando el color del borde
  strokeWeight (2);                         // declarando el tamaño del borde
  fill (rosado);                            // declarando de que color es el relleno del triangulo
  triangle (300, 200, 250, 0, 200, 200);    // declarando la posición del triángulo 3

  // triángulo 4
  stroke (negro);                           // declarando el color del borde
  strokeWeight (2);                         // declarando el tamaño del borde
  fill (rosado);                            // declarando de que color es el relleno del triangulo
  triangle (200, 200, 0, 250, 200, 300);    // declarando la posición del triángulo 4

  // ellipse
  stroke (rosado);                          // declarando el color del borde
  fill (rosado);                            // declarando el color de relleno
  ellipse (250, 250, 140, 140);             // declarando posición más tamaño de ellipse
}