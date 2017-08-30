//Expresión Digital II - Diseño Digital - UDD - 2017
//Paulina Descouvieres
//s02t00paly

//Colores usados en la composición
  color v = color(111, 197, 166);
  color g = color(91, 91, 91);
  color n = color(0);
  color b = color(255);
  
//Variables
  int x, y;
  int vel = 5;
  float z;

void setup() {

  //Tamaño del canvas
  size(600, 600);

  x = 75;
  y = height / 2;
  z = 112.5;


}

void draw() {
  
  //Color del fondo
  background(n);
  
  //Cuatriláteros que juntos forman el grande en el centro
  noStroke();
  fill(v);
  quad(y/2, y/2, y, 0, y*2, y, 450, 450);
  fill(g);
  quad(0, y, y/2, y/2, 450, 450, y, y*2);
  
  //Cuatriláteros que juntos forman el pequeño en el centro
  noStroke();
  fill(v);
  quad(z*2, z*2, 375, 375, y, 450, y/2, y);
  fill(g);
  quad(y, y/2, 450, y, 375, 375, z*2, z*2);

  //Cuadrilátero sin relleno que enmarca el cuadrilatero pequeño del centro
  strokeWeight(15);
  stroke(b);
  noFill();
  quad(y, y/2, 450, y, y, 450, y/2, y);

  //Líneas que delinean la parte superior derecha del cuadrilátero grande
  strokeWeight(15);
  stroke(b);
  line(0, 0, y/2, y/2);
  line(y/2, y/2, y, 0);
  line(y, 0, y*2, y);
  line(y*2, y, 450, 450);
  line(450, 450, y*2, y*2);
  
  //Elipses en las esquinas
  noStroke();
  fill(g);
  ellipse(525, x, 125, 125);
  fill(v);
  ellipse(x, 525, 125, 125);

  //Puntos en el centro de las elipses
  strokeWeight(25);
  stroke(b);
  point(525, x);
  point(x, 525);
  
  //Loop de rebote para las elipses de las esqunas
  x += vel;
  if (x > width || x < 0) {
    vel *= -1;
  }
}