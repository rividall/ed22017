//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - Sexto Semestre - Expresión Digital II - 05/09/17
//s03t00
//Javiera Barraza

int q, w, se, sr; //Declarar variables
color cel; //Declarar variable de color Celeste
color lil; //Declarar variable de color Lila
color ant; //Declarar un color anterior

void setup() { //Inicio setup
  size(800, 800); //Tamaño del canvas sera 800x800
  background(#FFF0FF); //El color del fondo será rosado
  cel = color (#B7FAFF); // #B7FAFF es celeste
  lil = color (#D9A5FF); // #D9A5FF es lila
  ant = color (#D9A5FF);
  q = 3; //Variable q es 3
  w = height/2; //Variable w es la mitad de la altura
  se = 2; // Variable se es el ancho partido en dos
  sr = 2; // Variable sr es la altura partida en dos 
  // inneesario para el nivel de programa
  frameRate(150); // Tasa de cuadros x seg a 150
  noStroke(); //Quitar el borde negro del circulo
  
} //Fin ambito setup


void draw() { //Inicio ambito dibujo
  ellipse(q, w, 40, 40); //Dibujar el circulo de 100x100
  ellipse(q/2, w/2, 30, 30);
  ellipse(q/3, w/3, 20, 20);
  ellipse(q/5, w/5, 10, 10);

  if ((q > height) || (q < 0)){ //Si q es mayor al ancho o menor a 50
    se *= -1; // El valor se 
    fill(cel); //El circulo se volvera celeste
  } // Cierra la condicionante de q
  
  if ((w > width) || (w < 0)){ // Si w es mayor a la altura o menor a 50
    sr *= -1; // Multiplica sr x -1
    fill(lil); //El circulo se volvera lila
  } // Cierra la condicionante de w
  
  q += se; // Suma a q el valor de se
  w += sr; // Suma a w el valor de sr
  
} // Fin ambito dibujo