int x, x1, x2, x3, y, y1, y2, y3, velx, vely, velx3, vely3; //enteros para rect 1 y 2 y velocidad
color negro, blanco, burdeo, verde, colorpelota2, colorpelota3;  // definir color pelota2

void setup () {
  size(400, 400); //tamaño canvas 400x4000px
  velx = 5; //velocidad x 
  vely = 5; //velocidad y
  velx3 = 5; //velocidad x3 
  vely3 = 5; //velocidad y3

  x = 0; //valor de x rect
  x1 = 200; //valor de x1 rect
  x2 = 05; // valor de x2 ellipse
  x3 = 395; // valor de x3 ellipse
  y = 0; //valor de y rect
  y1 = 200; //valor de y1 rect
  y2 = 100; // valor de y2 ellipse
  y3 = 300; //valor de y3 ellipse

  blanco = color(#FFFFFF); //define tono del color
  negro = color(#000000); //define tono del color
  burdeo = color(#751212); //define tono del color
  verde = color(#D7F283); //define tono del color
  colorpelota2 = #D7F283;  // define color pelota2 verde
  colorpelota3 = #D7F283;  //define color pelota3 verde
}


void draw () {
  background (#000000); //color fondo negro

  noStroke (); //sin contorno rect
  fill (#FFFFFF); //fondo rect color blanco
  rect (x, y, 200, 200); //lugar y tamaño del rectangulo (arriba derecha)

  fill (#FFFFFF); //fondo rect color blanco
  rect (x1, y1, 200, 200); //lugar y tamaño del rectangulo (abajo izquerda)

  fill (#000000); //relleno quad negro
  stroke (#FFFFFF); // contorno color blanco
  strokeWeight (8); // grosor color blanco tamaño 8
  quad (200, 100, 300, 200, 200, 300, 100, 200);


  fill (colorpelota2); // color elipse1
  noStroke (); // sin contorno elipse
  ellipse (x2, y2, 20, 20); //primera ellipse, lugar de inicio, tamaño 20x20

  fill (colorpelota3); // color elipse 2
  noStroke ();//sin contorno
  ellipse (x3, y3, 20, 20); //segunda ellipse, lugar de inicio, tamaño 20x20

  x2 += velx; //moviemiento horizontal x2
  y2 += vely; //movimiento vertical y2     suma de ambos diagonal

  if (x2 < 0 || x2 > 400) { // si x2 es menor que 0 o x2 es mayor que 400
    velx *= -1;            // entonces la velocidad es -1
  }

  if (y2 < 0 || y2 > 400) { // si y2 es menor que 0 o y2 es mayor que 400
    vely *= -1;            // entonces la velocidad es -1
  }

  if (x2 < 0 && y2 < 200 || y2 < 200 && x2 < 200) { // si x2 es menor que 0 y y2 menor que 200 o y2 menor que 200 y x2 menor que 200
    colorpelota2 =  (#751212);                      // colorpelota2 es verde
  } else if (y2 < 200 && x2 > 200 || y2 > 0 && x2 > 200) { //entoces y2 es menor que 200 y x2 es mayor que 200 o y2 es mayor que 0 y x2 mayor que 200
    colorpelota2 = (#D7F283);                       // cambia a color burdeo
  }

  y3 += vely3; //movimiento vertical de x3
  x3 += velx3; // movimiento horizontal de y3  suma de ambos diagonal

  if (x3 > 400 || x3 < 0) {    // si x3 es mayor que 400 o x3 es menor que 0
    velx3 *= -1;              // entonces la velocidad es -1
  }

  if (y3 > 400 || y3 < 0 ) {    // si y2 es menor que 0 o y2 es mayor que 400
    vely3 *= -1;             // entonces la velocidad es -1
  }

  if (x3 < 0 && y3 < 400 || y3 < 200 && x3 < 400) {         //si x3 es menor que 0 y y3 menor que 400 o y3 menor que 200 y x3 menor que 400
    colorpelota3 =  (#751212);                             //colorpelota3 es verde
  } else if (y3 < 200 && x3 > 200 || y3 > 0 && x3 > 200) { //entoces y3 es menor que 200 y x3 es mayor que 200 o y3 es mayor que 0 y x3 mayor que 200
    colorpelota3 = (#D7F283);                              //cambia de color a burdeo
  }
}