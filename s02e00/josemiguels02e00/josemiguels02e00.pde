
//s02e00

int x, r, g, b; //declarado
float y;
color miColor;

void setup() {
  size (500, 500);
  x = width /2; //inicializado
  y = 50.12394994;
  r = 255;
  g = 90;
  b = 140;
  
  miColor = color(r, g, b, 1);
 
}

void draw() {
background(#22E377);
stroke(miColor);
noStroke();
point(x, y); //usado

//modificadores
y += .1;//aumente
/*
point();
line();
rect();
ellipse();
quad();
fill();
*/
}