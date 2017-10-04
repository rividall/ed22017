//Universidad del Desarrollo -
//Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II
//Certamen00
/*
En este programa se visualizan líneas que van formando figuras según
la posición del mouse en el eje X e Y, las coordenadas a su vez cambian
la posición y tamaño de una pelota que se encuentra en el canvas.
Los clicks y tipeos cambian los colores del fondo y la posición del puntero.
*/

int q;                                //se declara q como un número entero
float a;                              //se declara a como un numero decimal
color amarillo, negro, blanco;        //se declaran los colores amarillo, negro y blanco

void setup() {                       //ámbito de inicio
  size(600, 600);                    //tamaño del canvas
  q = 10;                            //se inicia q con un valor 10
  a = 0;                             //se inicia a con un valor 0
  amarillo = #FFF700;                //se inicia el color amarillo
  negro = #000000;                   //se inicia el color negro
  blanco = #FFFFFF;                  //se inicia el color blanco
}

void draw() {                       //ámbito de dibujo
  background(negro);                //color de fondo negro
  noCursor();                       //el puntero no se ve dentro del canvas
  q = mouseY;                       // q varía en eje Y con el mouse
  a = mouseX;                       // a varía en eje X con el mouse
  for (int i = q; i < 600; i +=15) { //si i es menor a 600, a q se le suman 15
    strokeWeight(3);                 //grosor de las líneas
    stroke(a, q, mouseX);            //color de las lineas, se ven afectadas por la posicion del mouse
    line(0, i, 600, mouseX);         //se dibuja una línea, segun la posición del mouse ésta se ve afectada
    line(i, 0, mouseX, 600);         //se dibuja una línea, segun la posición del mouse ésta se ve afectada
    fill(amarillo);                  //color de relleno amarillo
    ellipse(300, a, q, q);           //se dibuja una elipse, segun la posición del mouse esta cambia su posición y tamaño
    rectMode(CENTER);                //hace que el rectángulo se dibuje desde el centro
    rect(mouseX, mouseY, 10, 10);    //se dibuja un rectángulo, este se vera como si fuera el cursor
  }
}
void mousePressed() {            //ámbito de click de mouse
  if (negro == negro) {   //si negro es de color negro
    negro= blanco;                //con un click el negro cambia a blanco
  } else {                       //con otro click
    blanco=negro;                //blanco cambia a negro ESTO NUNCA OCURRE
  }
}

void keyPressed() {        //ámbito de tipeo del teclado
  if (key == 'z') {        //si se apreta z
    mouseX = width/2;      //la posición del puntero se va a la mitad del canvas en el eje x
  }
}
