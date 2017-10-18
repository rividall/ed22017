
int a, b, c, d, j; // Declaramos nuestras variables base.
color negro, verde, blanco; // Declaramos los colores que se ocuparán.
PShape CT; // Declaramos que existirá una imagen svg.

void setup() {
  size (500, 500); // Definimos el tamaño del canvas, en este caso un cuadrado de pixelaje 500.
  verde = color(#64b759); // Definimos verde.
  negro = color(#303130); // Definimos negro.
  CT = loadShape("Processing_SVG_CirculoConTriangulo.svg"); // llamamos a la imagen svg, que está en la carpeta data.  
   CT.disableStyle(); // Method que deshabilita el estilo proveniente del svg y ocupa el de processing.
}

void draw() {
  background(negro);  // Nuestro fondo es negro
  strokeWeight(1); // Tendrá una pequeño contorno de 1 px. 
  nuclear(height/4, width/2, 30, negro, verde);  // llama al void "nuclear" declarado mas abajo
  explo(height/2, width/2, height/3, height*0.666 , verde); // llama al void "explo" declarado mas abajo.
  fill(verde); // Rellenar de color verde el svg.
  shape(CT, (height*0.75)-45, (width/2)-45, 90, 90); // dibujar el svg.
  
// Ahora crear un marco solo con fines estéticos. y de prática con la funcino triangle. 
  triangle(0, 0, width/2, 0, 0, height/2);
  triangle(0, height, width/2, height, 0, height/2);
  triangle(width, height, width, height/2, width/2, height);
  triangle(width, 0, width/2, 0, width, height/2);
}
void nuclear(int x, int y, int lado, color a, color b) { // Esta función creará un símbolo de "Nuclear"
  stroke(a);
  fill(b);
  ellipse(x, y, lado*3, lado*3);
  fill(a);
  triangle(x, y, x-lado, y, x-lado/2, y-lado);
  triangle(x, y, x+lado/2, y-lado, x+lado, y);
  triangle(x, y, x+lado/2, y+lado, x-lado/2, y+lado);
  fill(a);
  stroke(b);
  strokeWeight(lado/10);
  ellipse(x, y, lado/2, lado/2);
}
void explo(int m, int n, float rand, float rand2, color a) { // Esta función creará una pequeña explosión a partir de lineas en un random controlado.

  strokeWeight(1);
  for (j = 0; j < height; j++) {
    line(m, n, random(rand,rand2), random(rand,rand2));
  }
}