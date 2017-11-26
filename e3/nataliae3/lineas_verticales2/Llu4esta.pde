class Llu4esta {//esta clase muestra las precipitaciones dividida cada dos meses
  float pre;
  int fechal;

  Llu4esta(int fechal, float pre) {
    this.fechal = fechal;
    this.pre = pre;
  }

  void veranol() {//cada estación es un color y muestra la precipitación
    stroke(#96F7DE);//verdeagua
    strokeWeight(0.5);
    ellipse(200, 300, pre, pre);
  }

  void otonol() {//cada estación es un color y muestra la precipitación
    stroke(#FFB846);//naranjo pastel
    strokeWeight(0.5);
    ellipse(200, 300, pre, pre);
  }

  void inviernol() {//cada estación es un color y muestra la precipitación
    stroke(#45708B);//azul oscuro
    strokeWeight(0.5);
    ellipse(200, 300, pre, pre);
  }

  void primaveral() {//cada estación es un color y muestra la precipitación
    stroke(#FFB2F2);//rosado claro
    strokeWeight(0.5);
    ellipse(200, 300, pre, pre);
  }
}