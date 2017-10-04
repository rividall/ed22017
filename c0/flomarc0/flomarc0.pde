//Universidad del Desarrollo
//Facultad de Diseño
//Diseño Digital
//6to semestre
//Expresión Digital II
//13 de septiembre, 2017
//Florencia Martínez V.
/*
NO HAY DESCRIPCIÓN DE RESULTADO Y USO
*/
float x, y, x1, y1, r, s; //declaración de variables
color blanco; //declaracion color blanco
color negro; // decalración color negro
color naranjo; //declaración color naranjo
color verde; //declaración color verde


void setup(){ //inicio ámbito de setup
  size(500,500); // determino el tamaño del canvas
  x = 150; //inicializo x con un valor
  y = 350; //inicializo y con un valor
  x1 = 490; //inicializo x1 con un valor
  y1 = 490; //inicializo y1 con un valor
  r = 20; //inicializo r con un valor
  s = 20; //inicializo s con un valor
  naranjo = #FF6E0D; //inicializo la variable naranjo con un código de color
  verde = #7CFFD4; //inicializo la variable verde con un código de color
  blanco = #FFFFFF; //inicializo la variable blanco con un código de color
  negro = #000000; //inicializo la variable negro con un código de color
} //fin ámbito setup


void draw(){ //inicio ámbito dibujo
  background(negro); // determino el color de fondo

  //dibujo un triangulo de color naranjo y sin borde
  noStroke();
  fill(naranjo);
  triangle(mouseX, mouseY, x, y, 50, 50); //los puntos son la posición del mouse, dos variables declaradas e inicializadas previamente y los otros dos puntos estaticos

  //dibujo un circulo de color blanco con borde negro y ancho de borde de 2px
   stroke(negro);
   fill(blanco);
   strokeWeight(2);
   ellipse(mouseX, mouseY, r, s); //los puntos son la posición del mouse y dos variables declaradas e inicializadas previamente

  //modificadores
  x += 2; //x aumenta su valor en 2 *
  y -= 2; //y disminuye su valor en 2 *
  r += 0.5; //r aumenta su valor en 0,5
  s += 0.5;// s aumenta su valor en 0.5


  //loop init, text, update
  for (float i = x1; i > width - mouseX; i -= 10){ //for loop con i para x1

    for(float j = y; j < height - mouseY; j += 10){ //for loop con j para y

    // línea de color verde, de grosor 4px, cuyos puntos son i, j, y dos variables declaradas e inicializadas previamente
      stroke(verde);
      strokeWeight(4);
      line (i, j, x, y1);
      //modificadores
      x += 0.5; //x aumenta su valor en 0,5 *
      y1 += 0.5; //y1 aumenta su valor en 0,5 *

      if (x > 490){ // si x es menor a 490 se reducirá en 3
       x -= 3; // esto ocurre pero no sirve
      }

      if (y > 490) { // si y es mayor a 490 se multiplicará por -1
       y *= -1; // esto ocurre pero no sirve
      }
    }
  }
} //fin ámbito dibujo

void keyPressed(){ //inicio ámbito de presión de teclas
  if (key == 'v') { //si apreto la v el verde se convertirá en blanco
  verde = blanco;
  }
  if (key == 'b') { //si apreto la b el naranjo se convertirá en verde
  naranjo = verde;
  }
  if (key == 'n') { //si apreto la n el negro se convertirá en un verde oscuro
  negro = #00A02C;
  }
  if (key == 'm') { //si apreto la m el blanco se convertirá en un verde claro
  blanco = #85F016;
  }
  if (key == ' ') { //si apreto el espacio el tamaño del circulo disminuirá si estaba creciendo o aumentará si estaba achicandose
  r *= -1;
  s *= -1;
  }
} //fin ámbito presión de teclas
