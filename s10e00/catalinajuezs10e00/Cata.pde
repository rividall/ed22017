class Cata {
  float a;
  Cata () {
    a = 4;
  }

  void cuadrado () {   

    translate(50, 50);
    //translate((width/2)+sin(a)*10, height/2);
    rotate(a/10);
    rect(50, 50, 50, 50);
  }

  void mover() {
    a++;
  }
}