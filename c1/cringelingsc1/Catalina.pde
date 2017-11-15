ºclass Catalina {   // Se establece la clase Catalina
  //Variables
  float x, y, vx, vy, vx1, vy1, h, k1, k2;    // Variables en decimal a usar.
  int a, b, c, d, e, k;                       // Variables enteras a usar.

  color[] colores = new color [3];            // Array para 3 colores diferentes
                                              // a utilizar en ellipses
  int f;                                      // Esta variable elegíra un color
                                              // de la lista al correr el programa.

  //Constructor
  Catalina() {                     /*Se escriben los valores de cada variable. 
                                   Se utiliza this. para referirse a variables
                                   de a otra ventana.*/

    // Se declaran las variables a utilizar.
    x = 0;
    y = height/2;
    vx = random(1, 3);     // Variables de Velocidad.
    vy = random(7, 9);
    vx1 = random(7, 9);
    vy1 = random(4, 6);

    a = 25;
    b = 25;
    d = 50;
    e = 50;
    h = 0;
    k1 = 0;
    k2 = k1;

    // Variables de Color.
    colores[0] = #70B1D1;
    colores[1] = #1F6486;
    colores[2] = #ADE4FF;
    f = (int)random(colores.length);  // Se elige entre los colores 0, 1 y 2.
  }

  //Métodos
  // Movimiento a utilizar en las ellipses - void bolita1()
  void movbolitas() {
    x += vx;
    y += vy;
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
  }

  // Se crea una ellipse de tamaño (50, 50) o (d, e)
  void bolita1() {
    noStroke();
    fill(colores[f]);
    ellipse(x, y, d, e);
  }

  // Se crea el mismo movimiento pero para ellipses más pequeñas
  void movbolitas1() {
    x += vx1;
    y += vy1;
    if (x > width || x < 0) {
      vx1 *= -1;
    }
    if (y > height || y < 0) {
      vy1 *= -1;
    }
  }

  // Se crea una ellipse de tamaño (10, 10) o (a, b);
  void bolita2() {
    fill(colores[f]);  // Color random según array anteriormente mencionado.
    noStroke();
    ellipse(y, x, a, b);
  }

  // Se crean dos triángulos a la mitad del canvas. triangulo1 está al inverso.
  void triangulo() {
    fill(0);
    stroke(255);
    strokeWeight(5);
    triangle(width/2, 50, height+100, 650, 350, 650);
    //(width/2, height-100, 350, 150, 900, 150);
  }

  void triangulo1() {
    fill(0);
    stroke(255);
    strokeWeight(5);
    triangle(width/2, height-100, 350, 150, 900, 150);
  }

  //Se cra una ellipse que rota y traslada en sentido contrario a las manijas del reloj
  void circulos() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(-h);
    noFill();
    strokeWeight(5);
    stroke(255);
    ellipse(10, 10, 20, 20);
    popMatrix();

    h = h + 0.3;
  }

  // Se inicializa las variables de color.
  void colores(int f) {
    this.f = f;
  }
}
