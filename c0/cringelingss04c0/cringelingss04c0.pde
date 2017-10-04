// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital
// 6to Semestre - Expresión Digital II
// Catalina Ringeling Selman
// cringelings

/*
 En un Canvas de (400, 400) con background negro (0) se visualizará una elipse
 de color azul y tamaño 50 x 50 que rebotará en la esquina superior izquierda y
 esquina inferior derecha, la cuál cambiará de color al apretar
 las teclas 'q', 'w' y 'e' entre los colores azul, verde y blanco.
 Al mismo tiempo al apretar la tecla 'r', la elipse comenzará a avanzar desde
 la esquina superior izquierda y al apretar el mouse (mousePressed)una vez,
 desaparece, y al apretarla por segunda vez, vuelve a aparecer pero partiendo
 desde la esquina inferior derecha.
 */

/*
 Por otro lado se visualiza un triángulo de color verde con dos puntos fijos en
 dos de los bordes del canvas, mientras la tercera punta se mueve con
 el movimiento del mouse (mouseY y mouseX).
 */

/*
 Al procesar el programa, se puede visualizar un rectángulo blanco que con el
 movimiento del mouse dentro del canvas por el eje y o el eje x, aparece el
 rectángulo y se agranda dependiendo de la posición de este.
 Si se mueve por el eje y, se agranda con dirección al eje y y si el mouse se
 mueve en dirección al eje x, rectángulo se agranda en dirección al eje x.
 A diferencia de unos círculos que al procesar el programa, se visualizan varias
 elipses de color --random-- y tamaño 10 x 10 cada uno que llenan todo el canvas
 y al mover el mouse por el eje x e y, van disminuyendo su cantidad.
 Al inverso del rectángulo (rect).
 */


// Se declaran las variables a utilizar.
int a, b, c, d, e, k, x, y, velx, vely;                          // Variables de Posición y Movimiento.
color azul, verde, ngr, bl;                                      // Variables de Color.

void setup () {                                                  // void setup() se declaran los valores de variables que se efectuarán al iniciarlo.
  size(400, 400);                                                // Tamaño del Canvas.
  a = 200;                                                       // Tamaño de la Variable a.
  b = 50;                                                        // Tamaño de la Variable b.
  c = 200;                                                       // Tamaño de la Variable c.
  k = 20;                                                        // Tamaño de la Variable k.
  x = 15;                                                        // Tamaño de la Variable x.
  y = 15;                                                        // Tamaño de la Variable y.
  velx = 2;                                                      // Variable de Velocidad.
  vely = 0;                                                      // Variable de Velocidad.
  azul = #70B1D1;                                                // azul es una variable de de color: azul.
  verde = #B3D170;                                               // verde es una variable de de color: verde.
  ngr = 0;                                                       // ngr es una variable de de color: negro.
  bl = 255;                                                      // bl es una variable de de color: blanco.
  noCursor();                                                    // No hay cursor en el canvas al iniciar el programa.
}

void draw() {                                                    // void draw() Se inicia el ámbito de dibujo.
  background(ngr);                                               // Fondo de color negro (ngr = 0;).

  noStroke();                                                    // No hay línea, solo relleno.
  fill(bl);                                                      // Relleno del Rectángulo color Blanco (bl = 255).
  rect(width/k, height/k, mouseY, mouseX);                      // Tamaño y Posición del rectángulo - Tamaño depende de la posición del mouse en el canvas.

  for (int i = x; i <= width - mouseX; i += k) {                // Se declara i = x. (x =15). Si i es menor o igual al alto menos la posición del mouse en x (mouseX), se suma a i el valor de k (k= 20).
    for (int j = y; j <= height - mouseY; j += k) {               // Se declara j = y. (y =15). Si j es menor o igual al ancho menos la posición del mouse en y (mouseY), se suma a j el valor de k (k= 20).
      noFill();                                                  // No hay Relleno.
      stroke(random(100));                                       // Color de la línea es en escala de gris entre 100 colores.
      strokeWeight(2);                                           // El grosor de esta línea es 2.
      ellipse(i, j, x, y);                                       // Tamaño y posición de las ellipses.
    }
  }

  noFill();                                                      // No hay relleno.
  strokeWeight(y/2);                                             // El grosor de esta línea es y/2. y = 15. y/2 = 7.5
  stroke(azul);                                                  // Color de la línea al iniciar el programa. Azul: #70B1D1
  ellipse(a, a, b, b);                                           // Tamaño y posición de la ellipse.

  if (a > width || a < 0) {                                      // Si a es mayor al ancho del canvas o a es menor que 0, es verdadero
    velx *= -1;                                                  // Y la velocidad velx se multiplica por -1.
  }

  if (b > height || b < width/2) {                               // Si b es mayor al alto del canvas o b es menos que la mitad del alto del canvas, este es verdadero
    vely *= -1;                                                  // y la velocidad vely se multiplica por -1.
  }
  a += velx;                                                     // Se le suma al valor a el valor de la variable velx.
  b += vely;                                                     // Se le suma al valor b el valor de la variable vely.

  noFill();                                                      // No hay relleno.
  strokeWeight(2);                                               // Grosor de la línea es 2.
  stroke(verde);                                                 // Color de la línea es verde: #B3D170.
  triangle(c, c * 2, c * 2, c, mouseX, mouseY);                  // Posición y tamaño del triángulo.
}

void keyPressed() {                                              // Al oprimir cierta tecla cambia algo en especifico.
  if (key == 'q') {                                              // Se apreta la letra 'q' se cambia el color azul de la ellipse a color verde.
    azul = verde;
  } else if (key == 'w') {                                       // Si se apreta la letra 'w' se cambia el color que tenga de la ellipse al color #70B1D1 (azul) = Vuelve al color azul.
    azul = #70B1D1;
  } else if (key == 'r') {                                       // Si se apreta la letra 'r', la elipse comienza a moverse desde el punto (0,0) independientemente del color que tenga.
    a = 0;
  } else if (key == 'e') {                                       // Si se apreta la letra 'e', independiente del color que tenga la ellipse antes, se cambiará a color blanco.
    azul = bl;
  }
}

void mousePressed() {                                            // Al apretar el botón del mouse sucede lo siguiente.
  a = width;                                                     // Al apretar el botón del mouse, la ellipse comienza a avanzar desde la esquina del tamaño del canvas (400, 400) (la esquina inferior derecha hacia la esquina superior izquierda) y rebota en las dos esquinas.
  if (b == 0) {                                                  // Al apretar una vez el botón, su tamaño cambia a 0, al apretar otra vez el botón del mouse, este vuelve a 50 y empieza de nuevo el transcurso.
    b = 50;
  } else {
    b = 0;
  }
}
