class Lluvia {
  //Se inicia clase Lluvia

  //Atributos utilizados, declara variables
  float x, y, vx, vy, tam, a, diam;
  float n = 0;
  float r = 0;
  color azul;
  //Fin de atributos

  //Constructor
  /*
   Se inicializa  x e y como random para que esten por todas partes
   de forma aleatoria en el canvas, se define vy como un map para poder
   alterarlo con el movimiento del mouseX, tam como una variable que se
   utiliza en el tamaño de la ellipse y su color azul*/
  Lluvia(float tam) {
    a = random(0, 800);// random eje x del canvas

    //Lluvia
    x = random(0, width);//random posición x en el canvas
    y = random(0, height);//random posición y en el canvas
    vx = 1;//no se mueve en el eje x
    vy = map(mouseX, 0, width, 1, 5);

    this.tam = tam;
    azul = (#1D8BB4);//color azul
  }
  //Fin del constructor

  //Métodos
  //Se llama a ambas funciones
  void lluvmov() {
    lluvia();
    mov();
  }

  //Se crea la ellipse azul y se define el tipo de cambio
  void lluvia() {
    fill(azul);
    stroke(azul);

    // esto puede estar en un método independiente
    if (giro) {
      ellipse(a, y, tam, tam);
    } else {
      ellipse(a + cos(n) * r, y + sin(n) * r, tam, tam);
      n = n + 0.2;
      r = r + 0.2;
      // println(giro);
    }
  }

  /*Loop de lluvia, las ellipses caen y es manipulado por el map cambiando la
   velocidad (entre más a la derecha más lento y más a la izquerda es más rápido*/
  void mov() {
    y += map(mouseX, 0, width, 0.05, 2);
    if (y > height) {
      y = 0;
    }
  }
}
