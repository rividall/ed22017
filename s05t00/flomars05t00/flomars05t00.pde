//Universidad del Desarrollo
//Facultad de Diseño
//Diseño Digital
//6to semestre
//Expresión Digital II
//Florencia Martínez V.


float x, y, z, a, b, c, d, e, f, x1, x2, x3, x4, x5, x6, x7, x8; //se declaran las variables
color verde; //se declara variable de color verde
color naranjo; //se declara variable de color naranjo
color blanco; //se declara variable de color blanco
color negro; //se declara variable de color negro
color azul; //se declara variable de color azul
color amarillo; //se declara variable de color amarillo
boolean n, m, j, k; //se declara la variable boolean


void setup(){ //Comienza ámbito de setup
  size(1200, 500); //tamaño de canvas
  naranjo = color(#FA7426); //inicialización de la variable color naranjo
  verde = color(#B6FF6A); //inicialización de la variable color verde
  blanco = color(#FFFFFF); //inicialización de la variable color blanco
  negro = color(#000000); //inicialización de la variable color negro
  azul = color(#0044FA); //inicialización de la variable color azul
  amarillo = color(#F9FA00); //inicialización de la variable color amarillo
  x = 250; //inicializacion de la variable x con un valor
  y = 300; //inicializacion de la variable y con un valor
  a = 100; //inicializacion de la variable a con un valor
  b = 400; //inicializacion de la variable b con un valor
  c = 525; //inicializacion de la variable c con un valor
  d = 575; //inicializacion de la variable d con un valor
  e = 625; //inicializacion de la variable e con un valor
  f = 675; //inicializacion de la variable f con un valor
  z = 725; //inicializacion de la variable z con un valor
  x1 = 400; //inicializacion de la variable x1 con un valor
  x2 = 350; //inicializacion de la variable x2 con un valor
  x3 = 100; //inicializacion de la variable x3 con un valor
  x4 = 150; //inicializacion de la variable x4 con un valor
  x5 = 200; //inicializacion de la variable x5 con un valor
  
  n = true; //inicialozacion de la variable n como verdadera
  m = true; //inicialozacion de la variable m como verdadera
  j = true; //inicialozacion de la variable j como verdadera

} //fin ámbito de setup

void draw(){ //inicio ámbito de dibujo
  background(negro); //color de fondo
  circulos(x, y, naranjo, blanco, verde); //funcion 1 
    if (!n) { //si n es falsa...
   circulos(x, y, blanco, naranjo, amarillo); //... la funcion 1 se dibujará con los colores cambiados
}
  lineas(a, b, c, d, e, f, z, verde, blanco); //función 2
    if (!m){ //si m es falsa...
      lineas(a, b, c, d, e, f, z, blanco, azul); //... la funcion se dibujará con los colores cambiados
    }
  triangulos(x1, x2, x3, x4, x5, y, verde, naranjo, blanco); //función 3
    if (!j){ //si j es falsa...
      triangulos(x1, x2, x3, x4, x5, y, blanco, verde, azul); //... la funcion se dibujará con los colores cambiados
    }
 
} //fin ámbito dibujo

void circulos(float x, float y, color naranjo, color blanco, color verde){ //inicio funcion 1
    strokeWeight(4); //grosor de borde de círculo
  stroke(naranjo); //color de borde de círculo
  fill(verde); //color de relleno de círculo
  ellipse(x, x, y, y); //se dibuja el círculo con las propiedades escritas arriba
  strokeWeight(4); //grosor de borde de círculo
  stroke(naranjo); //color de borde de círculo
  fill(negro); //color de relleno de círculo
  ellipse(x, x, 200, 200); //se dibuja el círculo con las propiedades escritas arriba
  stroke(blanco); //color de borde de círculo
  strokeWeight(4); //grosor de borde de círculo
  line(171, 66, 196, 442); //se dibuja una línea
  line(122, 95, 250, 448); //se dibuja una línea
  line(75, 152, 325, 433); //se dibuja una línea
  line(55, 214, 383, 397); //se dibuja una línea
  line(54, 279, 425, 343); //se dibuja una línea
  line(69, 333, 443, 296); //se dibuja una línea
  line(110, 389, 450, 228); //se dibuja una línea
  
  strokeWeight(7); //grosor de borde de círculo
  stroke(naranjo); //color de borde de círculo
  noFill(); //el circulo no tiene relleno
  ellipse(x, x, 400, 400); //se dibuja el círculo con las propiedades escritas arriba


} //fin funcion 1

void lineas(float a, float b, float c, float d, float e, float f, float z, color verde, color blanco){ //inicio funcion 2
  stroke(verde); //color del borde de las lineas siguientes:
  line(500, a, 500, b); //se dibuja una línea
  line(550, a, 550, b); //se dibuja una línea
  line(600, a, 600, b); //se dibuja una línea
  line(650, a, 650, b); //se dibuja una línea
  line(700, a, 700, b); //se dibuja una línea
  line(750, a, 750, b); //se dibuja una línea
  strokeWeight(5); //grosor de los puntos
  stroke(blanco); //color de borde de los puntos 
  point(c, 125); //se dibuja un punto con las caracteristicas anteriores
  point(c, 155); //se dibuja un punto con las caracteristicas anteriores
  point(c, 185); //se dibuja un punto con las caracteristicas anteriores
  point(c, 210); //se dibuja un punto con las caracteristicas anteriores
  point(c, 240); //se dibuja un punto con las caracteristicas anteriores
  point(c, 270); //se dibuja un punto con las caracteristicas anteriores
  point(c, 300); //se dibuja un punto con las caracteristicas anteriores
  point(c, 330); //se dibuja un punto con las caracteristicas anteriores
  point(c, 360); //se dibuja un punto con las caracteristicas anteriores
  point(c, 390); //se dibuja un punto con las caracteristicas anteriores
  strokeWeight(8); //grosor de los puntos
  point(d, 125); //se dibuja un punto con las caracteristicas anteriores
  point(d, 155); //se dibuja un punto con las caracteristicas anteriores
  point(d, 185); //se dibuja un punto con las caracteristicas anteriores
  point(d, 210); //se dibuja un punto con las caracteristicas anteriores
  point(d, 240); //se dibuja un punto con las caracteristicas anteriores
  point(d, 270); //se dibuja un punto con las caracteristicas anteriores
  point(d, 300); //se dibuja un punto con las caracteristicas anteriores
  point(d, 330); //se dibuja un punto con las caracteristicas anteriores
  point(d, 360); //se dibuja un punto con las caracteristicas anteriores
  point(d, 390); //se dibuja un punto con las caracteristicas anteriores
  strokeWeight(5); //grosor de los puntos
  point(e, 125); //se dibuja un punto con las caracteristicas anteriores
  point(e, 155); //se dibuja un punto con las caracteristicas anteriores
  point(e, 185); //se dibuja un punto con las caracteristicas anteriores
  point(e, 210); //se dibuja un punto con las caracteristicas anteriores
  point(e, 240); //se dibuja un punto con las caracteristicas anteriores
  point(e, 270); //se dibuja un punto con las caracteristicas anteriores
  point(e, 300); //se dibuja un punto con las caracteristicas anteriores
  point(e, 330); //se dibuja un punto con las caracteristicas anteriores
  point(e, 360); //se dibuja un punto con las caracteristicas anteriores
  point(e, 390); //se dibuja un punto con las caracteristicas anteriores
   strokeWeight(8); //grosor de los puntos
  point(f, 125); //se dibuja un punto con las caracteristicas anteriores
  point(f, 155); //se dibuja un punto con las caracteristicas anteriores
  point(f, 185); //se dibuja un punto con las caracteristicas anteriores
  point(f, 210); //se dibuja un punto con las caracteristicas anteriores
  point(f, 240); //se dibuja un punto con las caracteristicas anteriores
  point(f, 270); //se dibuja un punto con las caracteristicas anteriores
  point(f, 300); //se dibuja un punto con las caracteristicas anteriores
  point(f, 330); //se dibuja un punto con las caracteristicas anteriores
  point(f, 360); //se dibuja un punto con las caracteristicas anteriores
  point(f, 390); //se dibuja un punto con las caracteristicas anteriores
   strokeWeight(5); //grosor de los puntos
  point(z, 125); //se dibuja un punto con las caracteristicas anteriores
  point(z, 155); //se dibuja un punto con las caracteristicas anteriores
  point(z, 185); //se dibuja un punto con las caracteristicas anteriores
  point(z, 210); //se dibuja un punto con las caracteristicas anteriores
  point(z, 240); //se dibuja un punto con las caracteristicas anteriores
  point(z, 270); //se dibuja un punto con las caracteristicas anteriores
  point(z, 300); //se dibuja un punto con las caracteristicas anteriores
  point(z, 330); //se dibuja un punto con las caracteristicas anteriores
  point(z, 360); //se dibuja un punto con las caracteristicas anteriores
  point(z, 390); //se dibuja un punto con las caracteristicas anteriores

} //fin funcion 2

void triangulos(float x1, float x2, float x3, float x4, float x5, float y, color verde, color naranjo, color blanco){ //inicio funcion 3
  stroke(verde); //color del borde del triangulo
  fill(naranjo); //relleno del borde del triangulo
  triangle(800, 100, 900, 100, 850, y); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(900, 400, 1000, 400, 950, x5); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(1000, 100, 1100, 100, 1050, y); //se dibuja un triangulo con las caracteristicas enteriores
  triangle(1100, 400, 1200, 400, 1150, x5); //se dibuja un triangulo con las caracteristicas enteriores
  stroke(blanco); //color del borde de los puntos
  strokeWeight(7); //grosor del borde de los puntos
  point(850, x1); //se dibuja un punto con las caracteristicas anteriores
  point(850, x2); //se dibuja un punto con las caracteristicas anteriores
  point(950, x3); //se dibuja un punto con las caracteristicas anteriores
  point(950, x4); //se dibuja un punto con las caracteristicas anteriores
  point(1050, x1); //se dibuja un punto con las caracteristicas anteriores
  point(1050, x2); //se dibuja un punto con las caracteristicas anteriores
  point(1150, x3); //se dibuja un punto con las caracteristicas anteriores
  point(1150, x4); //se dibuja un punto con las caracteristicas anteriores
  strokeWeight(3); //grosor de los circulos
  stroke(verde); // color del borde de los circulos
  noFill(); //los circulos no tienen relleno
  ellipse(850, x1, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(850, x2, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(950, x3, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(950, x4, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(1050, x1, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(1050, x2, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(1150, x3, 30, 30); //se dibujan los circulos con las caracteristicas anteriores
  ellipse(1150, x4, 30, 30); //se dibujan los circulos con las caracteristicas anteriores

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
} //fin ámbitode presión de teclas