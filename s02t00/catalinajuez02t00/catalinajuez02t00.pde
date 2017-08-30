int x, r, g, b, r2, g2, b2; //declarado
float y;
color miColor, miColor3;

void setup() {
  size (500, 500);
  x= width / 2; //inicializar variable X
  y= 5.345678; 
  r= 200;
  g= 50;
  b= 15;

  r2= 176;
  g2= 103;
  b2= 163;

  miColor= color(r, g, b); //definir el color "miColor", con las variables ya declaradas (r, g, b)
  miColor3= color(r2, g2, b2); //definir el color "miColor3",  con las variables ya declaradas (r2, g2, b2)
}

void draw() {

  background(255);
  stroke(miColor);
  strokeWeight(50);

  point(x, y+mouseY); // Posición punto 1, este esta rigido en su cordenada X, pero en su coordenada Y se encuentra bajando constantemente además de seguir al mouse Y.
  point(mouseX, 250); // Posición punto 2,  en su eje X sigue al mouseX, pero se encuentra siempre la mital del eje Y.
  point(x, mouseY); // Posición punto 3, al contrario del punto 2 su eje Y sigue al mouse Y, mientras que su eje X siempre se encuentra en la mitad.

  stroke(0); // linea color negra
  strokeWeight(5); //ancho linea
  line(mouseX, 250, x, mouseY); // Su primera coordenada esta en la misma ubicación del punto 2, y la otra sigue al punto 3.
  line(mouseX, 250, x, y+mouseY); // Su primer coordenada sigue al punto 2 y la otra al punto 1 (por lo que esa coordenada se encuentra constantemente bajando).
  line(x, y+mouseY, x, mouseY); //Su primera coordenada sigue al punto 1, mientras que su segunda coordenada sigue al punto 3.

  noStroke();
  fill(255); // cambio al blanco
  ellipse(x, y+mouseY, 30, 30); // Misma ubicación que el punto 1
  ellipse(mouseX, 250, 30, 30); // Misma ubicación que el punto 2
  ellipse(x, mouseY, 30, 30); // Misma ubicación que el punto 3

  fill(miColor3); //cambio al color morado
  ellipse(x, y+mouseY, 20, 20); // Misma ubicación que el punto 1
  ellipse(mouseX, 250, 20, 20); // Misma ubicación que el punto 2
  ellipse(x, mouseY, 20, 20); // Misma ubicación que el punto 3

  //modificadores
  y += 1;
}