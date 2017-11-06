// Universidad Del Desarrollo, Facultad de Diseño, Diseño Digital.
/* Se pide entregar un programa en donde se pueda modificar una grilla
 por medio de input de mouse y el teclado, y que una vez el programa no reciba
 input, este tenga un cambio cíclico.*/
/* Propuesta: Grilla de cuadrados y elipses palpitantes, centradas en medio del
 canvas, y diagramada en los 4 puntos medios de un diamante central.
 Esta grilla aumentará en número y posición dependiendo de la posición del cursor, su línea engrosara con la letra 'a' hasta un máximo de 5 y disminuirá con la letra 's'.
 Las elipses aumentarán tamaño con la letra 'q', disminuirán con 'w' y se reiniciarán con 'e'.
 El cursor no es visible en caso de no saber donde está el cursor actualmente se puede hacer click para mostrarlo.*/

int a, b, c, d, e, f; // Declaramos nuestras variables base.
int var1, var2; // Declaramos las variables que se usarán para el cursor.
color miColor, miColor2, miColor3; // Declaramos los colores que se ocuparán.

void setup() {
  size (500, 500); // Definimos el tamaño del canvas, en este caso un cuadrado de pixelaje 500.
  miColor = color(#d43774); // Definimos miColor como magenta.
  miColor2 = color(#fbb40f); // Definimos miColor2 como amarillo.
  miColor3 = color(#3a4892); // Definimos miColor3 como azul.
  c = 10; // Inicializamos las variables.
  d = 10;
  e = -1;
  f = 1;
}

void draw() {
  var1 = mouseX; //Inicializamos las variables del cursor
  var2 = mouseY;
  background(0, 0, 1); // Definimos el fondo del canvas como negro
  stroke(miColor3); // Usamos las variables definidas para crear un diamante azul en el centro del canvas.
  noFill();     // Sin relleno
  strokeWeight(1); // grosor de linea 1
  quad(0, height/2, width/2, 0, width, height/2, width/2, height); // Dado por los puntos medios de los extremos del canvas.

  stroke(miColor2); // Dado el diamante, buscaremos los puntos medios de las lineas que lo componen y estos serán nuestros margenes para la grilla.
  strokeWeight(3); //  Estos los marcaremos con 4 puntos amarillos de grosor 3.
  point(width*0.25, height*0.25); // Dibujamos los 4 puntos.
  point(width*0.75, height*0.25);
  point(width*0.25, height*0.75);
  point(width*0.75, height*0.75);

  if (var1 > width/4 && var2 > height/4 ) { // Para hacer la grilla, primero definimos el margen donde en que partes no se creará la grilla.
    for (int i = var1; i <= width*0.75; i += 30) { // Se siguen definiendo condicionales para la creacion de la grilla. i toma el valor de MouseX, si esta es menor que 3/4 del ancho del canvas se le sumarán 30.
      for (int j = var2; j <=height*0.75; j += 30) { // Se define la ultima condicional para la creacion de la grilla. j toma el valor de MouseY, si esta es menor que 3/4 del alto del canvas se le sumarán 30.
        strokeWeight(f); // El grosor de la linea a dibujar se definirá por f.
        stroke(miColor3); // Color Azul.
        rect(i-5, j-5, 10, 10); // Pequeños cuadrados que marcan la grilla fija.
        stroke(miColor); // Color magenta.
        ellipse(i, j, c, d); // Elipses dependientes del valor c y d para su alto y ancho.
      }
    }
  }

  // Para el efecto de palpitar usaremos la  variable e, y generaremos que vaya desde 0 a 20 y dependiendo de esto el valor de c y d.
  if (e < 10) { // e parte como -1, si e es menor a 10, c y d aumentarán.
    c++;
    d++;
  }
  if (e >= 10) { // Cuando e sea 10 o mayor, c y d disminuirán.
    c--;
    d--;
  }

  if (e == 20) { // Cuando e sea 20, volverá a -1 para hacer un loop.
    e = -1;
  }
  e++; // e aumenta en 1.

  if (c == 0) { // Para evitar que el circulo disminuya demás y crezca en negativo. cada vez que c sea 0, e se multiplicará por -1.
    e = e*-1;
  }
  if (mousePressed == true) { // Aquí deefinimos que no queremos que aparezca el cursor a menos que hagamos click en el mouse.
    cursor(HAND);
  } else {
    noCursor();
  }
}

void keyPressed() { // Aquí usaremos las variables para hacer crecer o disminuir valores usados para los dibujos.
  if (key == 'q') { // Si se apreta 'q' las elipses aumentarán de tamaño.
    c += 30;
    d += 30;
  }
  if (key == 'w' && c >= 0 && d >=0) { // Si se apreta 'w', las elipses disminuirán de tamaño, hasta un mínimo de 0.
    c -= 30;
    d -= 30;
  }
  if (key == 'e') { // Si se apreta 'e' se reiniciará el tamaño inicial de las elipses.
    c = 10;
    d = 10;
  }
  if (key == 'a' && f <= 5) { // si se apreta 'a' aumentará  el grosor de los cuadrados y elipses.
    f++;
  }
  if (key == 's') { // si se apreta 's' disminuirá el grosor de los cuadrados y elipses.
    f--;
  }

  if (f <= 1) { // definimos el mínimo de f como 1.
    f = 1;
  }
}
