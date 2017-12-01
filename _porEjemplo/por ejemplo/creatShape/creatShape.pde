PShape cuadrado, circulo, svg;
color verde; 

void setup() {
  size(500, 500);
  
  verde = #2AFF0A; 

  cuadrado = createShape(RECT, 0, 0, 50, 50);
  cuadrado.setFill(color(176, 28, 255));
  cuadrado.setStroke(color(0, 0, 255));

  circulo = createShape(ELLIPSE, 0, 0, 80, 80);
  circulo.setFill(color(175,1,97));
  circulo.translate(0,0);
  circulo.setStroke(color(verde));
  
  svg = loadShape("cuadrado.svg");
}

void draw() {
  background(#FFEDB9);
  shape(cuadrado, 5, 5);
  shape(cuadrado, 250, 250);
  shape(circulo, 87, 300);
  shape(svg, 400, 400, 100, 100); //medidas de un cuadrado
}