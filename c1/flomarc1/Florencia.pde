class Florencia {//Inicio clase Florencia.

//variables:
  float x, y, diam, a, x1, y1, x2; //Se declaran variables.
  color c, d, e, f; //Se declaran variables de color.

//constructor:
  Florencia() { //inicializacion de variables.
    x = 100;
    y = 0;
    x1 = 100;
    y1 = 0;
    x2 = 1;

  //inicializar color de los puntos.
    c = color(#00C4D1);
    d = color(#0A84FA);
    e = color(#091BD8);
    f = color(#000C8B);

}
  //metodos:
  void movimiento () {
    // x += 15; //velocidad de x.
    // x1 += 30; //velocidad de x1.
    // x2 += 26; //velocidad de x2.

    if (x > 800 || x < 0) { /* Si x es mayor al largo del canvas(800) o menor a 0,
                              su valor será 0. */
      x = 0;
   }

    if (x1 > 800 || x1 < 0) {  /* Si x1 es mayor al largo del canvas(800) o menor a 0,
                                 su valor será 0. */
      x1 = -10;

   }
   if (x2 > 800 || x2 < 0) {  /* Si x1 es mayor al largo del canvas(800) o menor a 0,
                                 su valor será 0. */
      x2 = 0;
   }




}



  void function () { // Inicio void fincion con los puntos que forman las ondas.

    strokeWeight(20);
    stroke(c);
    point(x + 500, y + 50);

    strokeWeight(20);
    stroke(c);
    point(x, y + 50);

    strokeWeight(10);
    stroke(f);
    point(x + 100, y + 260);

    strokeWeight(10);
    stroke(f);
    point(x, y + 250);

    strokeWeight(10);
    stroke(f);
    point(x + 600, y + 175);

    strokeWeight(20);
    stroke(d);
    point(x + 100, y + 80);

    strokeWeight(20);
    stroke(d);
    point(x2 + 670, y + 10);

    strokeWeight(20);
    stroke(e);
    point(x2 + 300, y + 410);

    strokeWeight(20);
    stroke(d);
    point(x2 + 100, y + 220);

    strokeWeight(10);
    stroke(c);
    point(x + 550, y + 500);

    strokeWeight(10);
    stroke(e);
    point(x2 + 100, y + 385);

    strokeWeight(15);
    stroke(d);
    point(x2 + 10, y + 440);

    strokeWeight(20);
    stroke(c);
    point(x, y + 200);

    strokeWeight(10);
    stroke(f);
    point(x + 50, y + 190);

    strokeWeight(15);
    stroke(f);
    point(x, y + 470);

    strokeWeight(20);
    stroke(c);
    point(x + 8, y + 245);

    strokeWeight(10);
    stroke(d);
    point(x, y + 305);

    strokeWeight(15);
    stroke(e);
    point(x2, y + 200);

    strokeWeight(15);
    stroke(f);
    point(x2, y + 8);

    strokeWeight(20);
    stroke(c);
    point(x2, y + 300);

    strokeWeight(20);
    stroke(c);
    point(x2, y + 350);

    strokeWeight(20);
    stroke(f);
    point(x2, y + 350);

    strokeWeight(20);
    stroke(e);
    point(x, y + 150);

    strokeWeight(10);
    stroke(f);
    point(x, y + 125);

    strokeWeight(10);
    stroke(f);
    point(x1, y1 + 125);

    strokeWeight(15);
    stroke(c);
    point(x1, y1 + 300);

    strokeWeight(10);
    stroke(c);
    point(x1, y1 + 3);

    strokeWeight(10);
    stroke(d);
    point(x1, y1 + 30);

    strokeWeight(15);
    stroke(e);
    point(x1, y1 + 380);

    strokeWeight(10);
    stroke(f);
    point(x, y + 325);

    strokeWeight(15);
    stroke(e);
    point(x, y + 10);

    strokeWeight(10);
    stroke(e);
    point(x, y + 400);


}


  void onda(float diam, float a) {//Inicio del void onda que da valor a las ondulaciones.

    // y = y + diam * cos(a); //Da un nuevo valor a y para formar la onda.

    // y1 = y1 + diam * cos(a); //Da un nuevo valor a y1 para formar la onda.

  } // Cierre del void onda que da valor a las ondulaciones.


} // Cierre de la clase Florencia.
