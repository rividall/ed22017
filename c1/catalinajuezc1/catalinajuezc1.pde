// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre - Expresión Digital II UDD - 2017
// Catalina Juez
// 8 de noviembre del 2017
/*
Explicación interactiva:
 Al correr el programa se generarán unos grupos de cubos que se encuentran rotando
 constantemente donde podemos cambiar su rotación apretando “a” o “s”. También
 tenemos dos circunferencias generadas por unas series de círculos que también se
 encuentran en constante movimiento, y que al apretar el mouse cada círculo que
 compone esta circunferencia cambia su eje Z de 0 a mouseY/8, y el diametro de la
 circunferencia más pequeña varía según el eje X del mouse. Además hay 6 círculos
 que cambian su plano Z en relación al eje Y del mouse, lo cual también sucede con
 todos los elementos de la composición, y si apretamos “d” su tamaño cambia a 150 y
 si apretamos “f” este vuelve a medir 550. Y con i guardamos la composición como pdf,
 pero este no guarda el plano Z en el pdf.

 Explicación conceptual:
 La simetría existente en la composición esta basada en las ondas que genera una gota
 al caer en el agua, pero a la vez el movimiento de los demás objetos está basado en
 los movimientos más bruscos o destructivos que puede generar la misma naturaleza,
 así como podría ser un tornado, etc.


 */
import processing.pdf.*;

Cata [] u = new Cata [1];        // Llamamos a nuestro class.
Cata2 [] d = new Cata2 [0];

float z;                   // Declaramos variables.
color miColor, miColor1, miColor2, miColor3;
boolean guardar;

void setup() {
  frameRate(10);
  size (550, 850, P3D);          // Tamaño composición y el P3D para poder usar el pano “Z” dentro de esta.
  miColor= color(228, 115, 76);  // Asignamos valor a nuestras variables.
  miColor1= color(227, 133, 135);
  miColor2= color(113, 114, 114);
  miColor3= color(83, 83, 82);

  guardar = false;

  for (int i = 0; i < u.length; i = i + 2) // Llamamos a nuestros class dentro del for.
  {
    u[i] = new Cata();
  }

  for (int i = 0; i < d.length; i = i + 2)
  {
    d[i] = new Cata2();
  }
}

void draw() {
  background(miColor1);
  texto();

  if (guardar) {         // Creamos un "if" para definir como llamaremos al PDF;
    beginRecord(PDF, "catalinajuezc1.pdf");
    background(miColor1);
  }

  for (int i = 0; i < u.length; i ++) {  // Llamamos a los Metodos que creamos dentro del class.
    //rotate(radians(i)); // intento fallido de rotar los Metodos en 360.
    u[0].giro();
    u[0].giro1();
    u[0].giro2();
    u[0].giro3();

    u[0].movimiento();
    u[0].keyPressed();
    // u[0].cambio();
  }

  for (int i = 0; i<  d.length; i ++) {
    d[0].circulo1();
    d[0].circulo2();
    d[0].keyPressed();
  }


  translate(width/2, height/2); //Trasladamos a la mitad de nuestra composición.
  for (int x = 0; x < 360; x = x + 45) {  // Creación de un for circular donde cada objeto tendrá 45 grados de diferencia.
    // rotate(radians(x)); // La x del for la multiplicamos por radianes (radians) la cual a su vez es rotada, lo cual hace posible que este for sea circular.
    // circulo (1, frameCount * .5); // Llamamos al "void circulo" y asignamos los valores de sus variables.

  }

  if (guardar) {      // Creamos un “if” para guardar nuestro PDF, declarando nuestro boolean "guardar" como falso.
    endRecord();
    guardar = false;
  }
}

void circulo (float amt, float a) { // Creación del “void circulo” y  declaramos variables a usar en este void.
  strokeWeight(1);
  fill (miColor);
  noStroke();
  translate(0, 0, z); // Profundidad de nuestros elementos (eje Z).
  ellipse(amt * cos(a)*5, width/2, 10, 10); // Usamos "cos" para crear un movimiento en bucle del circulo
  ellipse(amt * cos(a)*5, mouseX/6, 10, 10); // Gracias al mouseX puesto en su eje "Y", podemos manipular el diámetro de la circunferencia.
}


void mousePressed () {   // Al apretar el mouse el eje Z pasa de estar en “0” a tener una distancia en relación al “eje Y” del mouse.

  if (z == 0)
  {
    z = mouseY/8;
  } else {
    z = 0;
  }
}

void keyPressed() {    // keyPressed para guardar finalmente nuestro PDF.
  if (key == 'i') {
    guardar = !guardar;
  }
}


void texto() {
  fill(255);
  rect(width/20, height/50, width - (width/20)*2, height/8.3, 7);

  textSize(10);  // Texto explicativo de las acciones que se pueden hacer.
  fill(miColor3);
  text("mouseY: Acercamiento al eje Z (zoom).", width/15, height/150 + 30);
  text("mousePressed: Los círculos de la circunferencia mas pequeña cambian su disntancia del eje Z.", width/15, height/150 + 45);
  text("a: Opción uno para rotar el cubo.", width/15, height/150 + 60);
  text("s: Segunda opción para rotación del cubo.", width/15, height/150 + 75);
  text("d: Primera opción para el tamaño de los círculos.", width/15, height/150 + 90);
  text("f: Segunda opción para los tamaños de los círculos.", width/15, height/150 + 105);
}
