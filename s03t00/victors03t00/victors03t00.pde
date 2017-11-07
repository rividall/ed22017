int x; //Declarar las variables.
int y;
int v1;
int v2;
color morado; // Declarar que existen colores llamados "morado" y "dorado".
color dorado;


void setup() { 
  x = 1; // Valor inicial de x es 1.
  y = 300; // Valor inicial de y es 300.
  v1 = 6; // Cuanto va a avanzar x.
  v2 = 6; // Cuanto va a avanzar y.
  morado = color(114, 19, 102); // se declara el rgb de morado
  dorado = color(234, 160, 13); // se declara el rgb de dorado
  fill(morado); // El relleno será morado por defecto.
  noStroke(); // No existirá linea por defecto.
  size(600, 600); // el tamaño del canvas será 600 x 600
}

void draw() {
  background(0, 0, 1); // el color del background será negro y se pondrá en cada frame, para que se actualize y se vea solo la forma.
  // los fill van acá. el cambio de variable de color va en los if
  ellipse(x, y, 30+v1*3, 30+v2*3); // dibujar una elipse de centro (x, y) y de tamaño dependiente de v1 para que varíe 
  if (x > width || x < 0) { // si x llega  a un extremo la función se cumple.
    v1 *= -1; // se multiplica v1 para alternar a negativo.
    fill(morado); // el color de la ellipse será morado.
  }
  if (y > height || y < 0) { // si y llega a un extremo la función se cumple.
    v2 *= -1; // se multiplica v2 para alternar a negativo.
    fill(dorado); // el color de la ellipse será dorado.
  }
  x += v1; // x se le suma el valor actual de v1
  y += v2; // y se le suma el valor actual de v2
}