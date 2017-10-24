//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - Expresión Digital II
//Francisco Barría
//panchos03t00
/*
En un canvas rectangular una esfera rebota de un lado a otro cambiando de color en cada bote.
 Dentro de la esfera esta cambia de color y tamaño de su centro.
 */

int a;                                        // Timer.
boolean t, k, r;                              // Sentidos de los botes.
float x, y, o, p, r1, r2;                     // Coordenadas de la esfera, tamaño, y velocidad, respectivamente.
color c1 = color (252, 13, 72);               // Turqueza.
color c2 = color (52, 221, 211);              // Rojo.
color c3 = c1;

void setup() {

  size(600, 400);
  frameRate(30);
  noStroke();

  o = 5;
  p = 30;
  r = true;

  r1 = random (3, 10);
  r2 = random (3, 10);
  background(0);
}

void draw() {

  translate(width/2, height/2);

  a++;

  if (t == false) {                                  //Bote horizontal.
    x = x + r1;
  } else {
    x = x - r1;
  }

  if (k == false) {                                  //Bote vertical.
    y = y + r2;
  } else {
    y = y - r2;
  }

  fill(255, 255);                                    // Esfera.
  ellipse(x, y, 30, 30);
  fill(c3);
  ellipse(x, y, o, o);


  o = lerp(o, p, 0.05);                             // Pulsación del centro.

  if (x > (width/2)-15 || x < (-width/2)+15) {      // Limites horizontales.

    //    r1 = random(2, 10);
    r = false;

    if (t) { 
      t = false;
    } else if (!t) {
      t = true;
    }
  }

  if (y > (height/2)-15 || y < (-height/2)+15) {    // Limites verticales.

    //    r2 = random(2, 10);
    r = false;
    if (k) { 
      k = false;
    } else if (!k) {
      k = true;
    }
  }

  if (r == false) {                                // Cambio de color.

    if (c3 == c1) {
      c3 = c2;
    } else {
      c3 = c1;
    }

    r = true;
  }
  if (a > 75) {                                    // Frecuencia de cambio de color.
    o = o*-1;
    a = 0;
  }


  fill(0, 8);
  quad(-width/2, -height/2, // Fade Out.
    width/2, -height/2, 
    width/2, height/2, 
    -width/2, height/2);
}