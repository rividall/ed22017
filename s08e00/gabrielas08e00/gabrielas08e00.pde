int [] nume = new int [3];
color [] colr = new color [4];

color turqueza = color(63, 201, 188);                                                 // Se le da valor al color turqueza
color blanco = color(255);                                                       // Se le da valor al color blanco
color verde = color(159, 229, 125);                                                    // Se le da valor al color verde
color negro = color(0);         

int numeroequis, colorestotal;

void setup() {
  size(500, 500);
  noFill();
  nume [0] = 200;
  nume [1] = 150; 
  nume [2] = 350; 

  colr[0] = turqueza;
  colr[1] = verde;
  colr[2] = negro;
  colr[3] = blanco;

  println(numeroequis);
  println(colorestotal);
}


void draw() {
  background(150);
  fill(colr[colorestotal]);
  ellipse(250, 250, nume [numeroequis], nume [numeroequis] );
}

void keyPressed() {
  numeroequis = (int)random(nume.length);
  colorestotal = (color)random(colr.length);
  println(numeroequis);
  println(colorestotal);
}