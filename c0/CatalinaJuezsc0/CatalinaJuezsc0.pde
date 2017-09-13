// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre - Expresión Digital II
// Catalina Juez
/*Al correr el programa se notaran las presencia de círculos y cuadrados los cuales varían según se mueve el mouse en relación al eje Y, manipulando así 
 la cantidad de columnas en la grilla. También podemos aumentar dichos elementos apretando la letra “a” o volviendolo a la normalidad con la letra “d”. 
 Además al pasar la mitad de la composición en su eje X, el cuadrado aumenta su tamaño, y si haces click con el mouse los círculos cambiarán su color 
 original por el mismo que tienen los cuadrados. */

int  r, g, b, r2, g2, b2, tam, f;  // Declarar variables.
int margen, margen2;
color miColor, miColor2;

void setup() {

  size(1000, 1000);

  r = 200; // Colores.
  g = 50;     
  b = 15;
  miColor = color(r, g, b);

  r2 = 176;
  g2 = 103;
  b2 = 163;
  miColor2 = color(r2, g2, b2);


  tam = 10; // Valores Variables.

  margen = 150;

  f = 50;
}

void draw() {
  background(255);

  margen2= mouseY/2; // El margen sigue el valor del mouse en relación al eje Y, pero dividido en dos.
  // Lo que permite manipular la cantidad de columnas existentes en la composición

  for (int i = margen2; i < width - margen2; i += f) {
    for (int j = margen; j < height - 350; j += f) {
      noFill();
      strokeWeight(2);
      stroke(miColor);
      ellipse(i, j, 100, 100);

      rectMode(CENTER);
      stroke(miColor2);
      rect(i, j, tam, tam);
    }
  }

  if (mouseX > width / 2) {  // Si  el mouseX es mayor a la mitad de la composición entonces cambia la variable “ tam “ a 40.
    tam = 40;
  } else {
    tam = 10;
  }

  label();
}

void mousePressed() {  // Si miColor es igual a color(r, g, b) al apretar el mouse este cambia su valor a color(r2, g2, b2), sino vuelve al valor anterior.
  if (miColor == color(r, g, b)) {

    //miColor = color(r2, g2, b2);
    miColor = miColor2;
  } else {

    miColor = color(r, g, b);
  }
}

void keyPressed () {
  if (key == 'a') {   // Si apretas “a”  la variable “f” cambia a 30 disminuyendo la distancia de los elementos y creando así mas elementos en la grilla.
    f = 30;
  }
  if (key == 'd') {   // Si apretas “d”  la variable “f” cambia a 50 aumentando la distancia de los elementos y creando así menos elementos en la grilla.
    f = 50;
  }
}

void label() {
  textSize(15);  // Texto explicativo de las acciones que se pueden hacer.
  fill(miColor2);
  text("mouseY = La cantidad de columnas disminuye en relación al eje Y.", 200, 740); 
  text("mouseX = Al pasar la mitad de la composición los cuadrados aumentan su tamaño.", 200, 760);
  text("mousePressed = Los círculos cambian de color.", 200, 780); 
  text("a = La cantidad de elementos en la grilla aumenta.", 200, 800); 
  text("d = La cantidad de elementos en la grilla disminuye.", 200, 820);
}