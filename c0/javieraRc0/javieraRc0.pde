// Expresión Digital II - Diseño Digital UDD - 2017
// Javiera Ramírez
// javieraRsc0

/* Cuando corra el programa se crearán dos grillas sobre un fondo negro,
una con cruces en forma de equis, y una segunda con círculos en las zonas donde
no hay cruces. Los colores de las grillas inicialmente varían de manera random
entre 2 colores, las cruces entre amarillo y blanco y los círculos entre blanco
y celeste. Las opacidades de ambas grillas están controladas por el movimiento
del mouse, Y para las cruces y X para los círculos. También los tamaños de las
cruces y el ancho del borde de los círculos varía, pero estos son modificados
por medio del teclado. Siempre que las cruces se vuelvan mas chicas, el borde
de los círculos será más grueso, y cuando las cruces sean mas grandes lo bordes
serán más delgados. Dependiendo de la posición del mouse en el canvas si se
puede ver una o las dos grillas y con que intensidad.
También los colores de los círculos y las cruces pueden variar por medio del
teclado, las cruces cambian entre amarillo y naranjo y los círculos varían
entre celeste y rosado.*/

// Variables de color
color n = color(0, 0, 0); // negro
color bl = color(255, 255, 255); // blanco
color am = color(255, 230, 0); // amarillo
color ce = color(7, 219, 157); // celeste
color ro = color(242, 0, 85); // rosado
color na = color(245, 160, 2); // naranjo
// variables de tamaño y color
int lr, c, c2, c3, c4, div, gr;

void setup() {
  size(700, 700); // canvas de 700 px de ancho y alto
  lr = 70; // se le da el valor 70 a la variable. Ésta es la distancia entre los objetos del canvas.
  c = color(bl); // color inicial 1 es blanco, que luego va a cambiar
  c2 = color(ce); // variable inicial de color de los círculos
  c3 = color(ce); // variable controlable de color de los círculos
  c4 = color(am); // variable controlable de color de las cruces
  div = 5; // variable de división que luego va a cambiar
  frameRate(10); // disminuye la cantidad de cuadros a 10 por segundo, para que el programa no sea tan rápido
}

void draw() {

  background(n); // fondo negro

  for (int i = 0; i <= width; i += lr) {
    for (int j = 0; j <= height; j += lr) { // se crea una grilla para los objetos que se dibujarán en el canvas
      strokeCap(ROUND); // los bordes del trazo tendrán esquinas redondas
      stroke(c, mouseY/2); // los bordes tendrán el color 1 (que varía) y su opacidad varía segun la posición del mouse en Y

      int r = (int)random(3); // se crea un random para determinar los colores del stroke (random varía entre los valores 0, 1 y 2)
      if (r == 0 || r == 2) {
        c = bl; // si el random da 0 el color será blanco
      }
      if (r == 1) {
        c = c4; // si el random da 1 el color será amarillo
      }

      strokeWeight(random(4)); // se crea un random de 4 valores (0, 1, 2 y 3) que hace variar el grosor del borde del objeto

      line(i-lr/div, j+lr/div, i+lr/div, j-lr/div); // crea crean dos series de líneas en la misma posición pero en direcciones opuestas que llenan el canvas de cruces (equis)
      line(i-lr/div, j-lr/div, i+lr/div, j+lr/div); // el valor que determina la distancia dividido por otra variable,
                                                    //modificable por medio del teclado, determinan el largo de las cruces
    }
  }
  for (int x = lr/2; x <= width; x += lr) {
    for (int y = lr/2; y <= height; y += lr) { // se crea una segunda grilla para una que utiliza los espacios vacíos que quedan entre
                                               //los objetos de la primera grilla
      noFill(); // los objetos no tienen relleno
      strokeWeight(div); // el grosor del borde de los objetos varía por medio del teclado
      stroke(c2, mouseX/2); // el color del borde varía tabién, pero la opacidad esta controlada por la posición del mouse con respecto a X

      int r = (int)random(3); // se crea un random de 3 valores (0, 1 y 2) para determinar el color de los objetos
      if (r == 0 || r == 1) {
        c2 = c3; // si el random da 0 el color es celeste
      }
      if (r == 2) {
        c2 = bl; // si el random da 2 el color es blanco
      }
      ellipse(x, y, width/50, height/50); // se crean los objetos de la grilla (círculos que son responsivos, varían según el tamaño
      //del canvas) en los espacios donde no hay cruces, o en el caso de una división baja, justo donde se encuentran
    }
  }
}

void keyPressed() { // cambios por medio de teclas
  // estos cambios de la variable div, modifican el largo de las cruces de la primera grilla y a la vez el ancho del borde de los círculos
  // un número menor significa una división menor, osea una cruz más larga, y a la vez un borde de círculo más delgado
  // un número mayor es una cruz más pequeña pero un borde de círculo más ancho
  if (key == '2') {
    div = 2; // la tecla 2, le da el valor 2 a la variable div
  }
  if (key == '3') {
    div = 3; // la tecla 3, le da el valor 3 a la variable div
  }
  if (key == '4') {
    div = 4; // la tecla 4, le da el valor 4 a la variable div
  }
  if (key == '5') {
    div = 5; // la tecla 5, le da el valor 5 a la variable div
  }
  if (key == '6') {
    div = 6; // la tecla 6, le da el valor 6 a la variable div
  }
  // modifica el color de los círculos
  if (key == 'x') {
    c3 = color(ro); // si la tecla x se activa y los círculos son celestes, éstos cambiarán a rosado
  }
  if (key == 'z') {
    c3 = color(ce); // si la tecla z se activa y los círculos son rosados, éstos cambiarán a celeste
  }
  // modifica el color de las cruces
  if (key == 'a') {
    c4 = color(na); // si la tecla a se activa y las cruces son amarillas, éstas cambiarán a naranjo
  }
  if (key == 's') {
    c4 = color(am); // si la tecla s se activa y las cruces son naranjas, éstas cambiarán a amarillo
  }
}
