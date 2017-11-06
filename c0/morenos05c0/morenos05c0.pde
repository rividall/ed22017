//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital
// - 6to semestre - Expresión Digital II
// Nicolas Moreno Tello
// morenos04col00

/* Dos grillas hecha a partir de círculos y cuadrados, se puede cambiar el color
celeste por uno naranjo al apretar el mouse. Tambien cambia la cantidad
de los ellipses al mover el mouse con eje Y. Cuando uno utiliza la tecla "z"
se cambia el orden ( aparece menos ) de los ellipses .Cuando uno utiliza
la tecla "x" aumenta un poco mas los ellipses.Cuando uno utiliza la tecla "c"
los cuadrados aumentan de tamaño con un fill blanco y al mover el mouse con eje
Y los cuadrados pasa a un degrade  con opacidad.
 */

// Se declaran las variables globales-------

int r, g, b, r2, g2, b2; //Declarar variables r, g, b
int tamano; //Declarar variable tamano
int a;   //Declarar variable a
int margen;//Declarar variable de margen

color col0, col1;//Declarar variable de color

//Inicialización ambito de setup -------

 void setup() {
  noCursor(); //No aparece el cursor
  size(900, 900); // un canvas de un tamaño de 900px X 900px

  // Valores Variables.

  col0 = color(#99cccc); // establecer que col0 sea un color celeste
  col1 = color(#ffffff);// establecer que col0 sea un color blanco

  r = 153;      // establecer que el variable r sea un numero int de 153
  g = 204;     // establecer que el variable g sea un numero int de 204           ( este rgb hace el mismo celeste de col0 )
  b = 204;    // establecer que el variable b sea un numero int de 204

  r2 = 221;    // establecer que el variable r2 sea un numero int de 221
  g2 = 161;   // establecer que el variable g2 sea un numero int de 221           (este rgb es un color naranjo )
  b2 = 143;  // establecer que el variable b2 sea un numero int de 221

  tamano = 10; //establecer variable tamano sea un numero int 10
  margen = 50; //establecer variable margen sea un numero int 50
  a = 140;      //establecer variable a sea un numero int 140
 }

void draw() {
 background(255); // bakcground de color blanco

 margen= mouseY; // margen es igual al movimiento vertical del mouse Lo que permite manipular la cantidad de columnas existentes en la composición

 for (int i = 40; i < width - margen; i+= a) { //  asigna el valor a a
  for (int j = margen; j < height- 50; j+= a) {
    noFill(); // establecer que mi ellipse no tenga relleno
    strokeWeight(40); // estrablecer que mi stroke de mi ellipse sea de grosor de 40
    stroke(col0); // color de mi stroke
    ellipse(i, j, 100, 100); //decir que mi ellipse sea de x i y aun j de y . con tamaño de 100 x 100

    fill(col1,j); // Relleno de col1 con la transparencia de j
    rectMode(CENTER);// centro en rect dento de los ellipses ( grilla )

    rect(i, j, tamano, tamano);//( se crea un rect con x i y j y , tamaño 10 y 10
    }
  }
}
  // Inicialización ámbito del mouse pressed

 void mousePressed() {  // Si col0 es igual a color(r, g, b) al apretar el mouse este cambia su valor a color(r2, g2, b2), sino vuelve al valor anterior.
 if (col0 == color(r, g, b)) {
  col0 = color(r2, g2, b2);
   } else {
    col0 = color(r, g, b);
   }
  }

 // Inicialización ámbito del Teclado (teclas)

 void keyPressed() {
   if (key == 'z') {   // Si pulsas “z”  la variable “f” cambia a 300 disminuyendo la distancia de los ellipses y creando menos ellipses en la grilla.
    a = 300;
   }
   if (key == 'x') {   // Si pulsas “x”  la variable “f” cambia a 200 aumentando la distancia de los ellipses y creando menos ellipses en la grilla.
     a = 200;
   }

 if (key == 'c') {   // comentario copiado y no modifcado
     tamano = 150;
   }
 }
 //Inicialización ámbito de soltar el teclado

 void keyReleased(){
  if(tamano == 0) { //si tamano deja de ser 255 cambia a un valor de 10 ( normal )
    tamano = 255; // nunca ocurre
  } else {
    tamano = 10;
  }
}
