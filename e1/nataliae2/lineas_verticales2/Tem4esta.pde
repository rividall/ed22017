class Tem4esta {//esta clase muestra las temperaturas dividida cada dos meses
  int maxima, minima, fecha;

  Tem4esta(int fecha, int maxima, int minima) {
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
  }

  void verano() {//cada estación es un color y muestra Tem máx y min.
    stroke(#96F7DE);//verdeagua
    strokeWeight(1);
    translate(0.1, 0.1);
    rotate(10);
    line(fecha, maxima*6, fecha, minima*6);
  }

  void otono() {//cada estación es un color y muestra Tem máx y min.
    stroke(#FFB846);//naranjo pastel
    strokeWeight(1);
    translate(0.1, 0.1);
    rotate(10);
    line(fecha, maxima*6, fecha, minima*6);
  }


  void invierno() {//cada estación es un color y muestra Tem máx y min.
    stroke(#45708B);//azul oscuro
    strokeWeight(1);
    translate(0.1, 0.1);
    rotate(10);
    line(fecha, maxima*6, fecha, minima*6);
  }

  void primavera() {//cada estación es un color y muestra Tem máx y min.
    stroke(#FFB2F2);//rosado claro
    strokeWeight(1);
    translate(0.1, 0.1);
    rotate(10);
    line(fecha, maxima*5, fecha, minima*5);
  }
}