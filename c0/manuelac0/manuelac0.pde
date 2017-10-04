//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II - 13.09.2017 - Manuela Larrain O.
//Certamen 1

/*
 Al procesar mi código, se visualizará una ellipse, de tamaño 5 * i, y 5 * j,
 que al presionar ‘a’, aumenta su tamaño hasta 50, y al presionar ‘s’, disminuye su tamaño hasta 1.
 El relleno de esta ellipse, dependerá del for loop ‘i’ y ‘j’.
 Luego al presionar el mouse, el color de la ellipse, cambia de forma random
 */

int x, y, velx, vely, x1, y1, t, speed; //Declaro las variables de posición, movimiento, y tamaño

void setup() { //Inicio void setup
  size(500, 500); //Tamaño del canvas
  x = 0; //Posición de x
  y = 0; //Posición de y
  x1 = 5; //Tamaño  de x
  y1 = 5; // Tamaño de y
  velx = 2; //Variable de movimiento
  vely = 4; //Variable de movimiento
}  //Cierre void setup

void draw() { //Inicio void draw
  background(255); //Color de fondo blanco
  noFill(); //Sin relleno
  x += velx; //A la posición x se le suma la variable de movimiento y se multiplica por 2
  y += vely; //A la posición y se le suma la variable de movimiento y se multiplica por 2
  x1 += t; //a x1 se le suma t
  y1 += t; //a y1 se le suma t

  // for loop (init, test, update)
  for (int i = 1; i < 10; i = i + 2) { //i se declara como 1, y aumenta 1 hasta llegar a 9
    for (int j = 1; j < 10; j = j + 1) { //j se declara como 1, y aumenta 1 hasta llegar a 9
      println(i); //se imprime el valor de i
      ellipse(x, y, x1 * i, y1 * j); //Ellipse en posición x,y, con diámetro de x1 se multiplica por el resultado de i, e y1 se multiplica por el resultado de j

      //if de movimiento
      if (x > width || x < 1) { //Sí x es mayo a al ancho, ó x es menor a 1
        velx *=-1; //La variable de movimiento x, se multiplica por -1
      } //cierre del if

      if (y > height || y < 1) { //Sí y es mayo a al ancho, ó y es menor a 1
        vely *=-1; //La variable de movimiento y, se multiplica por -1
      } //Cierre del if

      // esto nunca ocurre
          //if tamaño
          if (x1 < 0) { //Sí x1 es menor a 0
            x1 = 0; //x1 es igual a 0
          } //Cierre del if
          if (y1 < 0) { //Sí y1 es menor a 0
            y1 = 0;  //y1 es igual a 0
          } //Cierre del if
      // esto nunca ocurre

      if (x1 > 50 || y1 > 50) { //Sí x1 es mayor a 50, o  y1 es mayor a 50
        x1 = 50; //x1 es igual a 50
        y1 = 50; //y1 es igual a 50
      } //cierre del if

      if ( x1 < 1 || y1 < 1) { //Si x1 es menor a 1, o y1 es menor a 1
        x1 = 1; //x1 es igual a 1
        y1 = 1; //y1 es igual a 1
      } //Cierre del if
    } //cierre del for j
  } //Cierre del for i
} //cierre del void draw

void keyPressed() { //Inicio de keyPressed
  if (key == 'a') { //Sí se aprieta 'a'
    t = 1; //El tamaño va aumentando en 1
  } //cierre if

  if (key == 's') { //Sí se aprieta 's'
    t =-1; //El tamaño va disminuyendo en 1
  } //cierre del if
} //cierre del keyPressed

void mousePressed() { //Inicio mousePressed
  stroke(random(255), random(255), random(255)); //Color del stroke, random
} //Cierre del mousePressed
