
//Florencia Martínez V.


float x, y, z, a, b, c, d, e, f, g, x1, y1, x2, y2; //se declaran las variables
color [] colores = new color [6];
/*color verde; 
color naranjo; 
color blanco; 
color negro; 
color azul; 
color amarillo; */
boolean n, m, j; //se declara la variable boolean


void setup(){ //Comienza ámbito de setup
  size(1200, 500); //tamaño de canvas
  
  colores [0] = #FA7426; //naranjo
  colores [1] = #B6FF6A; //verde
  colores [2] = #FFFFFF; //blanco
  colores [3] = #000000; //negro
  colores [4] = #F9FA00; //amarillo
  colores [5] = #0044FA; //azul
  
  /*naranjo = color(#FA7426); //inicialización de la variable color naranjo
  verde = color(#B6FF6A); //inicialización de la variable color verde
  blanco = color(#FFFFFF); //inicialización de la variable color blanco
  negro = color(#000000); //inicialización de la variable color negro
  azul = color(#0044FA); //inicialización de la variable color azul
  amarillo = color(#F9FA00); //inicialización de la variable color amarillo */
 
  x = 250; //inicializacion de la variable x con un valor
  y = 250; //inicializacion de la variable y con un valor
  a = 500; //inicializacion de la variable a con un valor
  b = 100; //inicializacion de la variable b con un valor
  c = 525; //inicializacion de la variable c con un valor
  d = 575; //inicializacion de la variable d con un valor
  e = 625; //inicializacion de la variable e con un valor
  f = 675; //inicializacion de la variable f con un valor
  z = 725;//inicializacion de la variable z con un valor
  g = 125;
  x1 = 800; //inicializacion de la variable x1 con un valor
  y1 = 100; 
  x2 = 850; 
  y2 = 400;
  
  
  n = true; //inicialozacion de la variable n como verdadera
  m = true; //inicialozacion de la variable m como verdadera
  j = true; //inicialozacion de la variable j como verdadera

} //fin ámbito de setup

void draw(){ //inicio ámbito de dibujo
  background(colores [3]); //color de fondo
  circulos(x, y, colores [0], colores [2], colores [1]); //funcion 1 
    if (!n) { //si n es falsa...
   circulos(x, y, colores [2], colores [0], colores [4]); //... la funcion 1 se dibujará con los colores cambiados
}
  lineas(a, b, c, d, e, f, g, z, colores [1], colores [2]); //función 2
    if (!m){ //si m es falsa...
      lineas(a, b, c, d, e, f, g, z, colores [2], colores [5]); //... la funcion se dibujará con los colores cambiados
    }
  triangulos(x1, y1, x2, y2, colores [1], colores [0], colores [2]); //función 3
    if (!j){ //si j es falsa...
      triangulos(x1, y1, x2, y2, colores [2], colores [1], colores [5]); //... la funcion se dibujará con los colores cambiados
    }
 
} //fin ámbito dibujo

void circulos(float x, float y, color naranjo, color blanco, color verde){ //inicio funcion 1
    strokeWeight(4); //grosor de borde de círculo
  stroke(naranjo); //color de borde de círculo
  fill(verde); //color de relleno de círculo
  ellipse(x, y , 300, 300); //se dibuja el círculo con las propiedades escritas arriba
  strokeWeight(4); //grosor de borde de círculo
  stroke(naranjo); //color de borde de círculo
  fill(colores [3]); //color de relleno de círculo
  ellipse(x, y , 200, 200); //se dibuja el círculo con las propiedades escritas arriba
  stroke(blanco); //color de borde de círculo
  strokeWeight(4); //grosor de borde de círculo
  line(x - 79, y - 184, x - 54, y + 192); //se dibuja una línea
  line(x - 128, y - 155, x, y +  198);
  line(x - 175, y - 98, x + 75, y + 183);
  line(x - 195, y - 36, x + 133, y + 147);
  line(x - 196, y + 29, x + 175, y + 93);
  line(x - 181, y + 83, x + 193, y + 46);
  line(x - 140, y + 139, x + 200, y - 22);

  
  /*line(122, 95, 250, 448); //se dibuja una línea
  line(75, 152, 325, 433); //se dibuja una línea
  line(55, 214, 383, 397); //se dibuja una línea
  line(54, 279, 425, 343); //se dibuja una línea
  line(69, 333, 443, 296); //se dibuja una línea
  line(110, 389, 450, 228);//se dibuja una línea*/
  
  strokeWeight(7); //grosor de borde de círculo
  stroke(colores [0]); //color de borde de círculo
  noFill(); //el circulo no tiene relleno
  ellipse(x, y, 400, 400); //se dibuja el círculo con las propiedades escritas arriba


} //fin funcion 1

void lineas(float a, float b, float c, float d, float e, float f, float g, float z, color verde, color blanco){ //inicio funcion 2
  stroke(verde); //color del borde de las lineas siguientes:
  line(a, b, a, b + 300);
  line(a + 50, b, a + 50, b + 300);
  line(a + 100, b, a + 100, b + 300);
  line(a + 150, b, a + 150, b + 300);
  line(a + 200, b, a + 200, b + 300);
  line(a + 250, b, a + 250, b + 300);

  strokeWeight(5); //grosor de los puntos
  stroke(blanco); //color de borde de los puntos 
  point  (c, g);
  point  (c, g + 30);
  point  (c, g + 60);
  point  (c, g + 85);
  point  (c, g + 115);
  point  (c, g + 145);
  point  (c, g + 175);
  point  (c, g + 205);
  point  (c, g + 235);
  point  (c, g + 265);
  

  strokeWeight(8); //grosor de los puntos
  point  (d, g);
  point  (d, g + 30);
  point  (d, g + 60);
  point  (d, g + 85);
  point  (d, g + 115);
  point  (d, g + 145);
  point  (d, g + 175);
  point  (d, g + 205);
  point  (d, g + 235);
  point  (d, g + 265);
 

  strokeWeight(5); //grosor de los puntos
  point  (e, g);
  point  (e, g + 30);
  point  (e, g + 60);
  point  (e, g + 85);
  point  (e, g + 115);
  point  (e, g + 145);
  point  (e, g + 175);
  point  (e, g + 205);
  point  (e, g + 235);
  point  (e, g + 265);
 

   strokeWeight(8); //grosor de los puntos
  point  (f, g);
  point  (f, g + 30);
  point  (f, g + 60);
  point  (f, g + 85);
  point  (f, g + 115);
  point  (f, g + 145);
  point  (f, g + 175);
  point  (f, g + 205);
  point  (f, g + 235);
  point  (f, g + 265);
  

   strokeWeight(5); //grosor de los puntos
  point  (z, g + 0);
  point  (z, g + 30);
  point  (z, g + 60);
  point  (z, g + 85);
  point  (z, g + 115);
  point  (z, g + 145);
  point  (z, g + 175);
  point  (z, g + 205);
  point  (z, g + 235);
  point  (z, g + 265);
 

} //fin funcion 2

void triangulos(float x1, float y1, float x2, float y2, color verde, color naranjo, color blanco){ //inicio funcion 3
  stroke(verde); //color del borde del triangulo
  fill(naranjo); //relleno del borde del triangulo
  triangle(x1, y1, x1 + 100, y1, x1 + 50, y1 + 200); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(x1 + 100, y1 + 300, x1 + 200, y1 + 300, x1 + 150, y1 + 100); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(x1 + 200, y1, x1 + 300, y1, x1 + 250, y1 + 200); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(x1 + 300, y1 + 300, x1 + 400, y1 + 300, x1 + 350, y1 + 100); //se dibuja un triangulo con las caracteristicas enteriores
  stroke(blanco); //color del borde de los puntos
  strokeWeight(7); //grosor del borde de los puntos
  point(x2, y2); //se dibuja un punto con las caracteristicas anteriores
  point(x2, y2 - 50); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 100, y2 - 300); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 100, y2 - 250); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 200, y2); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 200, y2 - 50); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 300, y2 - 300); //se dibuja un punto con las caracteristicas anteriores
  point(x2 + 300, y2 - 250); //se dibuja un punto con las caracteristicas anteriores
  strokeWeight(3); //grosor de los circulos
  stroke(verde); // color del borde de los circulos
  noFill(); //los circulos no tienen relleno
  ellipse(x2, y2, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2, y2 - 50, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 100, y2 - 300, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 100, y2 - 250, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 200, y2, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 200, y2 - 50, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 300, y2 - 300, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(x2 + 300, y2 - 250, 30, 30); //se dibujan los circulos con las caracteristicas anteriores

} //fin funcion 3

void keyPressed(){ //inicio ámbito de presión de teclas
  if (key == 'n') { //si se apreta la tecla n...
    n = (!n); //... entonces la variable n que era verdadera se volverá falsa
  }
  if (key == 'm'){  //si se apreta la tecla m...
    m = (!m); //... entonces la variable m que era verdadera se volverá falsa
  }
  if (key == 'j'){ //si se apreta la tecla j...
    j = (!j); //... entonces la variable j que era verdadera se volverá falsa
  }
  if (key == ' '){
    x = mouseX;
    y= mouseY;
  }
  if (key == 'c'){
    a = mouseX;
    b = mouseY;
    c = mouseX;
    d = mouseX;
    e = mouseX;
    f = mouseX;
    z = mouseX;
    g = mouseY;
  }
  if (key == 'v'){
    x1 = mouseX;
    y1 = mouseY;
    x2 = mouseX;
    y2 = mouseY;
  }
  
} //fin ámbitode presión de teclas