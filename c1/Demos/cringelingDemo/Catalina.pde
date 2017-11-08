class Catalina {

  color[] colores = new color [2];
  int n; // esta variable elegirá un color de la lista, de manera random

    Catalina() {
    colores[1] = #70B1D1;
    colores[0] = #2C8DBC;
    n = (int)random(colores.length); // acá elige entre 0 y 1
  }

  // show
  void show () {
    noStroke();
    fill(colores[n]);
    ellipse(width * .4, height * .5, 40, 40);

    fill(colores[n]);
    ellipse(width * .6, height * .5, 40, 40);
  }

  void eleccionColor(int n) {
    this.n = n;
  }
}
