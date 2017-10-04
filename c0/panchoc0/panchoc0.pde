// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre -
// Expresión Digital II
// Francisco Barría
/*
Una flor turquesa que gira en el mismo sentido que los pétalos que están atrás de ella,
con una aceleración oscilante.
Entre estos pétalos hay dos circunferencias que cambian de manera progresiva,
pero no suave, su tamaño. Adicionalmente hay una malla de círculos en el fondo,
que cambian su tamaño en orden progresiva y cíclica.
 */

// son minúsculas, la descripción debe ser con minúsculas
int x, y, g;                                   //X e Y, funcionan como variables de coordenada. Mientras que g me sirve para las funciones ciclicas.
float l, t, r, s;                              //l, T y R funcionan como variables incrementables, que necesito sean decimales o negativos, y S funciona como la polaridad del movimiento del programa.
boolean w;


color c1 = color(252, 13, 72);               // Turquesa.
color c2 = color(52, 221, 211);              // Rojo.

void setup() {

  size(500, 500);
  frameRate(30);
  noStroke();

  x = 50;
}

void draw() {
  background(0);
  translate(width/2, height/2);

  g++;                                      //Giro.
  t += 0.1;
  r = 225 + sin(g/20) * 50;

  if (w == true) {                          // Cambio de color.
    c1 = color(252, 13, 72);               // Turquesa.
    c2 = color(52, 221, 211);              // Rojo.
  } else {
    c2 = color(252, 13, 72);               // Rojo.
    c1 = color(52, 221, 211);              // Turquesa.
  }


  // Malla de círculos en el fondo. También puede ser descrito acá
  for (int i = -width/2; i < (width/2) + 1; i = i + 50) {            // Malla de círculos en el fondo.
    for (int j = -height/2; j < (height/2) + 1; j = j + 50) {

      fill(50);
      l = sin(t + s +i + j);                                              // Pulsaciones.
      ellipse (i, j, 35 + l * 8, 35 + l * 8);                            // Formula de elipse.
    }
  }



  pushMatrix();
  rotate(radians(g * s));

  for (int a = 0; a < 360; a = a + 10) {                              // Flor de fondo.
    
    rotate(radians(a*s));
    fill(c2);
    // bien aquí, ayuda a la lectura
    quad(0, 0,
      x*3, x*.55,
      x*3.5, 0,
      x*3, -x*.55);
  }
  popMatrix();

  noFill();                                                          // Circunferencias blancas que cambian de tamaño.
  stroke(255);
  ellipse(0, 0, r, r);
  ellipse(0, 0, r-30, r-30);
  rotate(radians(g*.75*s)+sin(t/2)); // y a p o   p a n c h o   l o s   e s p a c i o s ! !

  for (int a = 0; a < 360; a = a + 30) {                             // Flor principal.

    fill(c1);
    rotate(radians(a*s));
    bezier(0, 0,
      x, x,
      x, 0,
      x*4, 0);

    strokeWeight(2);
    stroke(c1);
    line(0, 0, 200, 0);
    noStroke();

    bezier(0, 0,
      x, -x,
      x, 0,
      x*4, 0);
  }

  fill(255);
  ellipse(0, 0, 50, 50);                                           // Circulo blanco en el centro.

  if (w == true) {
    s = 1;
  } else {
    s = -1;
  }
}

void keyPressed () {                                               // Cambio de color y sentido
  if (keyPressed == true && w == true) {

    w = false;
  } else {

    w = true;
  }
}
void mousePressed () {                                               // Cambio de color y sentido
  if (mouseButton == LEFT && w == true) {

    w = false;
  } else {

    w = true;
  }
}
