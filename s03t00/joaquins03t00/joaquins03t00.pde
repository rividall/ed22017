//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II - 05/09/17
//s03t00
//Joaquín Domínguez

int x, y, velx, vely; //Declarar variables x, y, velx, vely.
color heinz, verde; //Declarar una variable color llamada verde.
void setup() { //Inicio del ámbito de sistema.
  size(450, 400); //Tamaño del canvas = 500 x 400.
  background(255); //Color de fondo del canvas blanco.
  x = 1; //El valor de la variable x es 1.
  velx = 4; //El valor de la variable velx es 4.
  vely = 4; //El valor de la variable vely es 4.
  y = height / 2; //El valor de la variable y es la mitad de la altura del canvas.
  heinz = color(#FFD64D); //El color heinz es igual a #FFD64D.
  verde = color(#59A260); //El color verde es igual a #59A260.
  fill(heinz); //Rellena con heinz.
  noStroke(); //Quita los contornos.
  // innecesario para el nivel del programa
  frameRate(120); //Establecer la tasa de cuadros por segundo a 120.
}//Fin del ámbito de sistema.
void draw() { //Inicio del ámbito de dibujo.
  // los fill van acá y el cambio de valor en la variable se hace en los if
  ellipse(x, y, 30, 30); //Dibujar en cada cuadro una elipse de 30 x 30 y que comienze su trayectoria en x e y.

  if (x > width || x < 0) { // Condicional si x es mayor al ancho o menor a 0 es verdadero.
    velx *= -1; //Multiplicar velx por -1.
    fill(heinz); //Rellenar la pelota de color heinz.
  } //Fin del ámbito condicional
  if (y > height || y < 0) { // Condicional si y es mayor al alto o menor a 0 es verdadero.
    vely *= -1; //Multiplicar vely por -1.
    fill(verde); //Rellenar la pelota de color verde.
  } //Fin del ámbito condicional
  x += velx; //Sumarle al valor x el valor actual de la variable velx.
  y += vely; //Sumarle al valor y el valor actual de la variable vely.
}//Fin del ámbito de dibujo.