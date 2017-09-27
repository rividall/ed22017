//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - Expresión Digital II
//Certamen I - Miércoles 13, septiembre, 2017
//Florencia Vizcaya Benítez

//c0
/*
En el programa a continuación podemos modificar una grilla por medio de:
-Seguimiento de posicionamiento del mouse (sin cursor), a base de 4 cuadrados de color verdoso.
-De input de mouse (el click, cambia el color del que ahora podemos llamar cursor,
a un color rosado).
-Y de teclado:
con la tecla 't' se agranda el tamaño de los cuadrados que componen la grilla, y
con cualquier otra tecla, los cuadrados vuelven a su tamaño original.
Al mismo tiempo, el programa al no recibir input, este continúa teniendo un
cambio cíclico de background aleatorio.
*/


int tam = 20; //Declaramos el valor del tamaño .
color valor = color(0, 200, 170); //Declaramos el color correspondiente a la variable 'valor'.

void setup(){ //A continuación se declaran constantes del canvas:
  noCursor(); //Desaparece el cursos del mouse al entrar al canvas.
  size(400, 400); //Se asigna el tamaño del canvas.
  frameRate(20); //Se declaran 20 frames por segundo.
}

void draw(){ //A continuación se 'dibuja' en el canvas:
  for (int i = 0; i < 21; i++) {//Se declara i=0, y que este vaya aumentando en 1 por cada frame hasta llegar a 20.
    for (int j = 0; j < 21; j++) {//Se declara j=0, y que este vaya aumentando en 1 por cada frame hasta llegar a 20.
      int x = i*tam;//Se declara y asigna un valor a 'x', siendo el valor que tome 'i'(entre 0 y 20), multiplicado por tam=20.
      int y = j*tam;//Se declara y asigna un valor a 'y', siendo el valor que tome 'j'(entre 0 y 20), multiplicado por tam=20.

      if((mouseX > x - tam && mouseX < x + tam) && (mouseY > y - tam && mouseY < y + tam)){//En el caso de que la posición del mouse en 'x' sea mayor que el valor de 'x' menos 20, y además, menor que el valor de x más 20
                                                                                           //Y se cumpla también que la posición del mouse en 'y' sea mayor que el valor de 'y' menos 20, y además, menor que el valor de 'y' más 20.
        fill(valor);//Solo en el caso anterior, se rellena los cuadrados en esa posición de un color diferente al resto de la grilla (cuatro cuadrados verdosos).
      }else{//Para el resto de la grilla/canvas
        fill(random(200), 0, 0, 10);//Se mantiene un aleatorio de rojos de la escala del 1 al 200, con una transparencia de 10.
      }
      stroke(0);//La figura que se dibuja a continuación tiene un color negro
      rect(x, y, tam, tam);//Se 'dibuja' una figura rectangular con posicionamiento (x, y) y un tamaño de 'tam' de ancho, por 'tam' de altura.
    }
  }
}

void keyPressed(){//En el caso de oprimir una tecla:
  if(key == 't'){//Si se oprime la tecla 't'
    tam += 20;//El tamaño de los cuadrados aumentará en 20, osea 40, por lo que caben la mitad de los cuadrados que cambían anteriormente en el canvas
  }else{//Por otro lado, en el caso de oprimir cualquier tecla que no sea la 't'
    tam = 20;//el tamaño de los cuadrados vuelven a su valor original, o sea, 20.
  }
}
void mousePressed(){//En caso de oprimir cualquier botón del mouse:
 if (valor == color(0, 200, 170)) {//El color verdoso del cuadrado/puntero
    valor = color(200, 170, 200);//cambia a rosado.
  } else {//En caso de volver a oprimir cualquir botón del mouse
    valor = color(0, 200, 170);//Este vuelve a su color verdoso original.
  }
}
