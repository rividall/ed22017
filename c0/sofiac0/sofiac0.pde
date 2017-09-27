/*
Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
- Expresión Digital II
 Sofía Oller V.
 Certamen 01

 En la siguiente muestra se le pide al alumno entregar un programa en donde se
 pueda modificar una grilla por medio de input de mouse y el teclado, y que una
 vez el programa no reciba input, este tenga un cambio cíclico. Las opciones de
 modificaciones de la grilla que en este caso el alumno escogió las modificaciones
 de cantidad de elementos en la grilla, tamaño de la grilla, tamaño y color de
 los elementos. El resultado de esto se ve de la siguiente manera, se corre el
 programa y se ve una grilla de 500 por 500 de ellipses, de color blanco, la
 cual apretando la tecla "c" se cambia de al color naranjo y luego con la
 tecla "v" se cambia a verde. Al mismo tiempo con la tecla "x" se agrande el
 tamaño de las ellipses y con la tecla "z" disminuye. Para poder agrandar o
 disminuir la grilla se realiza moviendo el cursor del mouse en el eje  "x".
 En ningún caso es necesario dejar presionada la tecla, con tan sólo una vez se
 puede ver el cambio.
 */


color negro, blanco, naranjo, verde; //Se declaran los distintos colores a usar

int w, h, f; //Se declaran las distintas variables a usar.
int margen; // Declaración variable margen.

void setup() { //Inicialización de configuración.
  size(500, 500); //Inicialización del tamaño al canvas.

  margen = 50; //Iinicialización variable margen.

  negro = color(0, 0, 0); //Inicialización del color negro.
  blanco = color(255, 255, 255); //Inicialización variable del color blanco.
  naranjo = color(255, 128, 0); //Inicialización variable del oclor narnajo.
  verde = color(0, 255, 176); //Inicialización variable del color verde.

  w = 3; //Inicialización del ancho de la ellipse.
  h = 3; //Iinicialización de la altura de la ellipse.

  stroke(blanco); //Inicialización variable stroke color blanco.
}

void draw() { //Inicialización de área de dibujo.
  background (negro);//Se dibuja el color de fondo para el canvas.
  margen = mouseX;//Se dibhuja la variable x, la cual es igual a la coordenada del mouse en x.

  for (int i = 10; i <= 500 - margen; i += 20) {  // Si inti es igual a 10;(prueba) i es menor o igual al tamaño del canvas - el margen (que corresponde a 50,
    // por lo que tenemos 450); i aumenta en 20; por lo que en la última el resultado será mayor al tamaño  y se saldrá de él,
    // y es por esta razón que se vuelve a repetir.

    for (int j = 10; j <= 500 - margen; j+= 20) { // Si inti es igual a 10;(prueba) j es menor o igual al tamaño del canvas - el margen (que corresponde a 50,
      // por lo que tenemos 450); j aumenta en 20; por lo que en la última el resultado será mayor al tamaño  y se saldrá de él,
      // y es por esta razón que se vuelve a repetir.
      ellipse(i, j, w, h); //Se diuja la ellipse.
    }
  }
  w += f; // Modificadores de tamaño.
  h += f; // Modificadores de tamaño.
}

void keyPressed () { //Se da inicio a las variables de teclas.
  if (key == 'c') { //Si la tecla es igual a tecla que se presiona, en este caso la letra c, se cambiará de color.
    fill(255, 128, 0);//Se indica el relleno de la ellipse se va a cambiar de blanco a naranjo.
  }
  if (key == 'v') { //Si la tecla es igual a telcla que se presiona, en este caso la letra v, se cambiará de color.
    fill(0, 255, 176); //Se indica el relleno de la ellipse se va a cambiar de naranjo a verde.
  }
  if (key == 'x') { //Si la tecla es igual a la que se presiona, en este caso la letra x, la ellipse se agrandará.
    f = 1; //Cuando el resultado es positivo se agranda el tamaño de la ellipse.
  }
  if (key == 'z') { //Si la tecla es igual a la que se presiona, en este caso la letra z, la ellipse disminuirá.
    f = -1; //Cuando el resultado es negativo se disminuye el tamaño de la ellipse.
  }
}
