// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to Semestre
// Expresión Digital II - 2017
//gabrielas02t00

/* Aquí se verá como mediante las figuras básicas se logra formar una simple cara con una corbata en forma de reloj de arena.
Esto se logrará mediante líneas, puntos, rectángulo, círculo y quad.*/

int x, y, z, x1, y1, z1, x2, y2, z2;
float b;
color turqueza, verde, blanco, negro;

void setup() {
size(50, 50);                                   // Tamaño del canvas es de 50px por 50px
background(negro);                              // El color de fondo es blanco
x = 25;
y = 13;
z = 45;
x1 = 40;
y1 = 5;
z1 = 35;
x2 = 8;
y2 = 23;
z2 = 29;
b = 1.5;
turqueza =(#3FC9BC);
verde =(#9FE57D);
blanco =(255);
negro =(0);


}
void draw() {
stroke(verde);                                   // El color del stroke será verde
strokeWeight(0);                                 // El grosor definido para ellipse es de 13px
fill(turqueza);                                  // El relleno de la elipse será turqueza
ellipse(x, x, x1, x1);                           // Dibujamos un ellipse / círculo

noFill();
strokeWeight(y1 + y1);                            // El grosor para los puntos
point(y1 + y1 + y1, x1 / 2);                     // Dibujamos un punto 
point(z1, x1 / 2);                               // Dibujando otro punto 

strokeWeight(y1 / 2);
stroke(negro);                                     // El grosor de la línea
line(x, 14 * b, x, y2);                         // Dibujamos una línea

strokeWeight(b);
stroke(y1 + y1 + y1);                          // El grosor definido para el rectángulo es de 15px
fill(blanco);                                  // El relleno del rectángulo será turqueza
rect(y, z2, x, 4*b);                           // Dibujamos un rectángulo

strokeWeight(0);
fill(verde);                                  // El relleno del quad será verde
quad(x2, x1, z, z, z, x1, x2, z);             // Dibujamos un quad con forma de reloj de arena

//modificaciones

x1 += 1;
x -= 1;
}