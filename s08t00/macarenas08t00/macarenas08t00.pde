// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// s08 tarea 00

color amarillo, azul, negro, blanco; // declaración de variables de color
boolean b, s; // declaración de boolean
int  eleccionColores, eleccionNumeros, eleccionNumeros1; // declaracón de la variable 

int[] numeros = new int[4]; // declaracón de la variable array
color[] colores = new color [3]; // declaracón de la variable array
float[] numeros1 = new float[4]; // declaracón de la variable array

void setup() { // inicio ámbito de configuración
  size(900, 300); // tamaño del Canvas de 900 px por 300 px
  noCursor(); // el cursor no se ve

  amarillo = color(#F59F14); // iniciación variable de color
  azul = color(#14BAF5); // iniciación variable de color
  negro = color(#050505); // iniciación variable de color
  blanco = color(#FFFFFF); // iniciación variable de color

  b = true; // iniciación variable b verdadera
  s = true; // iniciación variable s verdadera

  colores[0] = color(#F59F14); // iniciación array color amarillo
  colores[1] = color(#14BAF5); // iniciación array color azul
  colores[2] = color(#050505); // iniciación array color negro

  numeros[0] = 8; // iniciación array
  numeros[1] = 10; // iniciación array
  numeros[2] = 12; // iniciación array
  numeros[3] = 14; // iniciación array

  numeros1[0] = 1.5; // iniciación array
  numeros1[1] = 3; // iniciación array
  numeros1[2] = 5.5; // iniciación array
  numeros1[3] = 8; // iniciación array
} // fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  background(negro); // fondo del canvas de color negro
  strokeWeight(1); // las figuras tendrán un espesor de borede 2

  brujula(150, 150); // función uno
  dardos(450, 150); // función dos
  reloj(750, 150); // función tres

  if (b) { // si b es verdadera 
    blanco = #FFFFFF; // el blanco es blanco
    amarillo = #F59F14;
  } else  if (!b) { // si b es falsa
    negro = #FFFFFF; // el negro es amarillo
    azul = #F59F14;
  }  
  if (s) { //si s es verdadera
    negro = #050505; // el negro es negro
    azul = #14BAF5;
  } else if (!s) { // si s es falsa
    blanco = #050505; // el negro es blanco
    amarillo = #14BAF5;
  }
} // fin ámbito de dibujo

void brujula(float x, int y) { // inicio ámbito de función uno

  //lineas
  stroke(blanco);
  line(x, y, 240, 150);
  line(x, y, 201, 107);
  line(x, y, 150, 240);
  line(x, y, 199, 192);
  line(x, y, 60, 150);
  line(x, y, 106, 191);
  line(x, y, 150, 60);
  line(x, y, 107, 103);

  //elipses centro
  stroke(amarillo);
  fill(negro);
  strokeWeight(1);
  ellipse(x, y, 64, 64);

  noStroke();
  fill(amarillo);
  ellipse(x, y, 36, 36);

  //elipses borde
  stroke(azul);
  noFill();
  strokeWeight(2);
  ellipse(x, y, 199, 199);

  stroke(azul);
  noFill();
  strokeWeight(2);
  ellipse(x, y, 219, 219);

  // elipses exteriores 
  noStroke();
  fill(azul);
  ellipse(243, 238, 6, 6);
  fill(amarillo);
  ellipse(155, 277, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  fill(azul);
  ellipse(56, 235, 6, 6);
  fill(amarillo);
  ellipse(27, 150, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  fill(azul);
  ellipse(59, 65, 6, 6);
  fill(amarillo);
  ellipse(155, 27, numeros[eleccionNumeros], numeros[eleccionNumeros]);
  fill(azul);
  ellipse(255, 65, 6, 6);
  fill(amarillo);
  ellipse(281, 150, numeros[eleccionNumeros], numeros[eleccionNumeros]);
} // fin ámbito de función uno

void dardos(int x, int y) { // inicio ámbito de función dos
  noStroke(); // las figuras de la función no tienen borde

  //elipse 1, grande
  fill(colores[eleccionColores]);
  ellipse(x, y, 266, 266);

  //elipse 2, central
  fill(blanco);
  ellipse(x, y, 147, 147);

  //elipse 2, pequeña
  fill(colores[eleccionColores]);
  ellipse(x, y, 47, 47);

  //lineas
  stroke(negro);
  line(x, y, 450, 17);
  line(x, y, 450, 282);
  line(x, y, 317, 150);
  line(x, y, 581, 150);
} // fin ámbito de función dos

void reloj(int x, int y) { // inicio ámbito de función tres
  noStroke(); // las figuras de la función no tienen borde

  // elipse 1, marco reloj
  fill(amarillo);
  ellipse(x, y, 274, 274);

  // elipse 2
  fill(blanco);
  ellipse(x, y, 230, 230);

  // elipse 3, números
  stroke(azul);
  strokeWeight(numeros1[eleccionNumeros1]);
  ellipse(x, y, 185, 185);

  //punteros
  stroke(negro);
  strokeWeight(2);
  line(x, y, 750, 50);
  line(x, y, 790, 100);
} // fin ámbito de función tres

void keyPressed() { // inicio ámbito de teclas
  if (key == 'a') { // si la tecla a se apreta los colores de la sandia uno (función uno) se invierten 
    b = (!b);
    s = (!s);
  }
} // fin ámbito de teclas

void mousePressed() { // inicio ámbito de mouse
  eleccionColores = (int) random (colores.length); // la eleccionColores se hcambia de manera random cuando se apreta el mouse

  if (eleccionNumeros > 2) { // si la eleccionNumeros es mayor que 2
    eleccionNumeros = 0; // la eleccionNumeros es igual a 0
  }
  eleccionNumeros ++; // eleccionNumeros aumenta de uno en uno

  if (eleccionNumeros1 > 2) { // si la eleccionNumeros1 es mayor que 2
    eleccionNumeros1 = 0; // si la eleccionNumeros1 es mayor que 2
  }
  eleccionNumeros1 ++; // eleccionNumeros1 aumenta de uno en uno
} // fin ámbito de mouse