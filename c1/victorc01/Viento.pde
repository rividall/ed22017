class Viento {
  //Variables
  //constructor
  Viento() {
  }
  //metodos
  void brisa(float a, float b, float c, float d) { // Creará una serie de pequeños
  // circulos al centro del tifon.


    for (int i = 0; i < 360; i+=d) {
      float x = sin(radians(i))*a;
      float y = cos(radians(i))*a;
      pushMatrix();
      translate(x, y);
      rotate(radians(-i+frameCount*c));
      noStroke();
      ellipse(x, y, b, b);
      popMatrix();
    }
  }

  void tifon (float a1, float b1, float c1, float d1, float e1) {
    // Crea una serie de circulos girando en un eje a distintos tiempos.
    //a = tamaño movimiento en circulo.
    //b = tamaño ellipse.
    //c = velocidad.
    //d = cantidad circulos.
    //e = aumentar largo tifon.
    for (float i = 0; i < e1; i+=d1) {
      float x = sin(radians(i))*a1;
      float y = cos(radians(i))*a1;
      pushMatrix();
      translate(x, y);
      rotate(radians(-i+frameCount*c1));
      //noStroke();
      ellipse(x, y, b1, b1);
      popMatrix();
    }
  }

  void negatifon (float a2, float b2, float c2, float d2, float e2) {
    // Crea el tifon de manera inversa/espejo.
    //a = tamaño movimiento en circulo.
    //b = tamaño ellipse.
    //c = velocidad.
    //d = cantidad circulos.
    //e = aumentar largo tifon.
    for (float j =180; j < e2+180; j+=d2) {
      float x = sin(radians(j))*a2;
      float y = cos(radians(j))*a2;
      pushMatrix();
      translate(x, y);
      rotate(radians(-j+frameCount*c2+180));
      noStroke();
      //fill(255);
      ellipse(x, y, b2, b2);
      popMatrix();
    }
  }

  void interaccion0() { // Suma o resta el numero de circulos que componen al TIFON.
    if (key == 'p') {
      guardarpdf = !guardarpdf;
    }
    if (key == CODED) {
      if (keyCode == UP) {
        cc = cc + 10;
      }
      if (key == CODED) {
        if (keyCode == DOWN) {
          cc = cc - 10;
        }
        if (cc > 360) {
          cc = 360;
        }
        if (cc < 0) {
          cc = 0;
        }
      }
    }
  }

  // este método debe tener argumentos locales mh es global :/
  void pdf() { // Termina el guardado en pdf.
    if (guardarpdf) {
      endRecord();
      guardarpdf = false;
    }
  }

  // este método debe tener argumentos locales mh es global :/
  void modohuracan() { // Activar el modo huracán.
    if (mh) {
      rotate(radians(frameCount*2));
    }
    if (!mh) {
    }
  }
}
