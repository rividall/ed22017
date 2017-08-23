// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to Semestre
// Expresión Digital II - 2017
//gabrielaS01T00

/* Aquí se verá como mediante las figuras básicas se logra formar una simple cara con una corbata en forma de reloj de arena.
Esto se logrará mediante líneas, puntos, rectángulo, círculo y quad.*/


size(50, 50);                               // Tamaño del canvas es de 50px por 50px
background(220);                            // El color de fondo es blanco
stroke(13);                                 // El grosor definido para ellipse es de 13px
ellipse(25, 25, 40, 40);                    // Dibujamos un ellipse / círculo
stroke(15);                                 // El grosor definido para los puntos
point(15, 20);                              // Dibujamos un punto de 15px de grosor
point(35, 20);                              // Dibujando otro punto de 15px de grosor
stroke(5);                                  // El grosor de la línes será de 5px
line(25, 21, 25, 23);                       // Dibujamos una línea de grosor 5px
stroke(15);                                 // El grosor definido para el rectángulo es de 15px
fill(220);                                  // El relleno del rectangulo sera del mismo color que el background (gris)
rect(13, 29, 25, 6);                        // Dibujamos un rectángulo
quad(8, 40, 45, 45, 45, 40, 8, 45);         // Dibujamos un quad con forma de reloj de arena