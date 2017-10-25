// Expresión Digital II - Diseño Digital - UDD - 2017
// Ricardo Vidal Lynch
// s03t00lynch

color c1 = color(218, 40, 245);
color c2 = color(254, 240, 5); // Colores propios.
int x, y, w, z; // Enteros de posicion de elipses.
float speed = 2.945; // Velocidad.
float directionx = 1;
float directiony = 1;
float directionw = 1;
float directionz = 1; // Direcciones de rebote
float bh = 50;
float bw = 50; // Alto y ancho de elipses


void setup () {
  background (0);
  size (500, 500); // Setup inicial de fondo y tamaño.
  // es mejor aumentar la variable de velocidad y el efecto se cumple, los frameRate van hacia la calidad del movimiento
  frameRate (150); // Aumentar un poco la velocidad.

  // Posiciones elipses.

  x = 350;
  y = 125;
  w = 140;
  z = 355;
}

void draw () {
  x += speed*directionx;
  y += speed*directiony; // Añadir movimiento.

  // Rebotes primera elipse.

  if (x > width-bh/2 || x<25) {
    directionx *= -1;
  }

  if (y > height-bh/2 || y < 25) { // dude! los espacios
    directiony *= -1;
  }

  fill (c1, 100);
  ellipse (x, y, bw, bh); // Color y dibujo ellipse 1.

  w += speed*directionw;
  z += speed*directionz;  // Añadir movimiento.

 // Rebotes segunda elipse.

  if (w>width-bh/2 || w < 25) { // plisss
    directionw *= -1;
  }

  if (z>height-bh/2 || z<25) {
    directionz *= -1;
  }

  fill (c2);
  ellipse (w, z, bw, bh); // Color y dibujo ellipse 2.
}