//Se crea la clase 'Flo' y se declaran las variables a usar a continuación
class Flo {
  //Definimos una variable n que nos ayudará a dibujar la onda
  float y;
  //y otra x para hacer que el punto avance de izquierda a derecha
  float x;
  float i;
  color c;
  color c2;
  float a;
  float b;

//Se les asigna un valor a cada variable
  Flo() {
    y = 0;
    x = 0;
    i=0;
    c = color(255, 0, 0);
    c2 = color(0, 0, 255);
    a = 800;
    b = 100;
  }

//Se crea una función llamada ADN
  void ADN() { // los métodos son con minúsculas
    if (x < 900) {
      stroke(c);
      strokeWeight(3);
      point(x + 80, height/2+120 + sin(y+5) * 140);

      stroke(c2);
      strokeWeight(3);
      point(x+100, height/2+120+ sin(y*.5) * -140);
      // prueba
      line(x+100, height/2+120+ sin(y*.5) * -40, x + 80, height/2+120 + sin(y+5) * 40);
    } else {

      //background(50); //¿?
      x=(int)random(200);
      y=(int)random(100);
    }
    x = x + 1;
    y = y + 0.2;
  }

//Se crean una función llamada ADN2
  void ADN2() {
    a = a - 2;
    b = b - 0.1;

    if (a > 0) {
      stroke(c);
      strokeWeight(3);
      point(a + 10, height/4 + sin(b) * 40);


      stroke(c2);
      strokeWeight(3);
      point(a+40, height/4+ sin(b) * -40);
    } else {

      //background(50); // ¿?
      a=random(800); // innecesario si la variable es float
      b=random(100); // innecesario si la variable es float

    }
   
  }

//Se crea una función llamada keyPressed
  void keyPressed() {

    if (key == 'n') {

      c=(int)random(#F25858); //mal
      c2=(int)random(#587AF2); //mal

    } else {
      c = color(#DE4144);
      c2 = color(#414ADE);
    }
  }
}