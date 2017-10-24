//Expresión Digital II - Diseño Digital - UDD - 2017
//Paulina Descouvieres
//s03t00paly

//Una elipse que cambia de colores al rebotar en los bordes

//Variables de posición, tamaño y velocidad
int x, y, d, velX, velY;

//Variables de colores
color c;
color v = color(111, 197, 166);  //Verde
color g = color(91, 91, 91);     //Gris  
color n = color(0);              //Negro
color b = color(255);            //Blanco


void setup() {
  size (400, 400);               //Tamaño del canvas
  d = 40;                        //Asignación de valor a la variable 'd' de 40
  x = d;                         //Asignación del valor a la variable 'x' de 'd'
  y = height / 2;                //Asignación de valor a 'y' de la mitad del canvas
  velX = 2;                      //Velocidad de 2 en el eje X
  velY = 3;                      //Velocidad de 3 en el eje Y

  c = color(255);                //Asignación de color blanco a la variable 'c'
  // es más óptimo que sea global
  noStroke();                    //Sacarle el borde a la elipse
}

void draw () {
  background(123);               //Pintar el fondo de color gris
  fill(c);                       //Relleno de la elipse con la variable 'c'
  
  ellipse(x, y, d, d);           //Elipse con posición de las variables 'x' e 'y', de radio 'd'

  x += velX;                     //Suma a 'x' el valor de 'velX'. Esto reemplaza 'x += 2'
  y += velY;                     //Suma a 'y' el valor de 'velY'. Esto reemplaza 'y += 3'

//Función condicional del valor de 'x'
//Se hace el cálculo para que sea el borde el que rebote, no el centro
  if (x > width - d / 2 || x < d / 2) {
    velX *= -1;                  //Multiplicación del valor de 'velX' por -1 en cada lectura

    int rdm = (int)random(4);    //Declaración de un random entre 4 valores
    if (rdm == 0) {              //Opción '0' del random
      c = v;                     //El relleno de la elipse pasa a ser verde
    }
    if (rdm == 1) {              //Opción '1' del random
      c = g;                     //El relleno de la elipse pasa a ser gris
    }
    if (rdm == 2) {              //Opción '2' del random
      c = n;                     //El relleno de la elipse pasa a ser negro
    }
    if (rdm == 3) {              //Opción '3' del random
      c = b;                     //El relleno de la elipse pasa a ser blanco
    }
  }

//Función condicional del valor de 'y'
//Se hace el cálculo para que sea el borde el rebote, no el centro
  if (y > width - d / 2 || y < d / 2) {
    velY *= -1;                  //Multiplicación del valor de 'velY' por -1 en cada lectura

    int rdm = (int)random(4);    //Declaración de un random entre 4 valores
    if (rdm == 0) {              //Opción '0' del random
      c = v;                     //El relleno de la elipse pasa a ser verde
    }
    if (rdm == 1) {              //Opción '1' del random
      c = g;                     //El relleno de la elipse pasa a ser gris
    }
    if (rdm == 2) {              //Opción '2' del random
      c = n;                     //El relleno de la elipse pasa a ser negro
    }
    if (rdm == 3) {              //Opción '3' del random
      c = b;                     //El relleno de la elipse pasa a ser blanco
    }
  }
}