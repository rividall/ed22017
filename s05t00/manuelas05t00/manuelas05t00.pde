boolean b; //Declaro el boolean como 'b'
color amarillo; // Declaro el color amarillo
color verde; // Declaro el color verde
color negro; // Declaro el color negro
color blanco; // Declaro el color blanco

void setup() { //Inicio void setup
  size(900, 300); //Tamaño del canvas
  b = true; // boolean verdadero
  verde = #A3BD31; //Codigo color verde
  amarillo = #DCDC1C; //Codigo color amarillo
  negro = #010101; //Codigo color negro
  blanco = #FFFFFF; //Codigo color blanco
} //Cierre void setup

void draw() { //Inicio void draw
  if (b) { //Inicio boolean verdadero
    background(negro); //Color de fondo negro
    donut(450, 150, amarillo, verde, negro, blanco, 50); //Función donut, con valores para variables declaradas en la función
    circulo(150, 150, 100, amarillo, verde, negro, blanco, 10, 3); //Función circulo, con valores para variables declaradas en la función
    argollas(750, 150, 200, amarillo, verde, negro, blanco, 10); //Función argollas, con valores para variables declaradas en la función
  } //Cierre boolean verdadero
  if (!b) { //Inicio boolean falso
    background(blanco); //Color de fondo blanco
    donut(450, 150, verde, amarillo, blanco, negro, 20); //Función donut, con valores para variables declaradas en la función
    circulo(750, 150, 50, verde, amarillo, blanco, negro, 5, 6); //Función circulo, con valores para variables declaradas en la función
    argollas(150, 150, 200, verde, amarillo, blanco, negro, 10); //Función argollas, con valores para variables declaradas en la función
  } //Cierre boolean falso
} //Cierre void draw

void circulo(float centroX, float centroY, float diametro, color color1, color color2, color color3, color color4, float stroke1, float stroke2) { //Inicio función circulo, y declaro variables para posiciones y colores
  stroke(color2); //El color del stroke, sera el declarado para color2
  strokeWeight(stroke1); //El ancho del stroke, sera el declarado para stroke1
  fill(color1); //El relleno de la ellipsee, sera el declarado para color1
  ellipse(centroX, centroY, diametro, diametro); //Ellipse en posición centroX, centroY, diametro, diametro
  noFill(); //Sin relleno
  stroke(color4); //El color del stroke, sera el declarado para color4
  strokeWeight(stroke2); //El ancho del stroke, sera el declarado para stroke2
  ellipse(centroX, centroY, diametro + 55, diametro + 55); //Ellipse con centroX y centroY, y al valor del diametro se le suma 55
  ellipse(centroX, centroY, diametro + 75, diametro + 75); //Ellipse con centroX y centroY, y al valor del diametro se le suma 75
  ellipse(centroX, centroY, diametro + 95, diametro + 95); //Ellipse con centroX y centroY, y al valor del diametro se le suma 95
  ellipse(centroX, centroY, diametro + 115, diametro + 115); //Ellipse con centroX y centroY, y al valor del diametro se le suma 115
  ellipse(centroX, centroY, diametro + 135, diametro + 135); //Ellipse con centroX y centroY, y al valor del diametro se le suma 135 
  ellipse(centroX, centroY, diametro + 155, diametro + 155); //Ellipse con centroX y centroY, y al valor del diametro se le suma 155
} //Cierre función circulo


void donut(float centroX, float centroY, color color1, color color2, color color3, color color4, float n) { //Inicio función donut, y declaro variables para posiciones y colores
  noStroke(); //Sin borde
  fill(color4); //El relleno del cuadrado, sera el declarado para color1
  rect(300, 0, 300, 300); //Cuadrado con posicion 300, 0 y ancho 300

  noFill(); //Ellipse sin relleno 
  stroke(color3); //El color del stroke, sera el declarado para color3
  strokeWeight(2);  //Ancho del stroke
  //Inicio for loop
  for (float i = 1; i < n; i = i + 1) {  //i se declara como 1, y aumenta 1 hasta llegar al valor de n
    ellipse(450, 150, 10*i, 10*i);  //Ellipse en posición 450, 150, con diametro 10 multiplicado por el resultado de i
  } //Cierre for loop

  stroke(color1); //El color del stroke, sera el declarado para color1
  strokeWeight(50); //Ancho del stroke
  noFill(); //Sin relleno 
  ellipse(centroX, centroY, 150, 150); //Ellipse en posición centroX, centroY, y diametro 150
  stroke(color2); //El color del stroke, sera el declarado para color2
  strokeWeight(10); //Ancho del stroke
  noFill(); //Sin relleno 
  ellipse(centroX, centroY, 205, 205); //Ellipse en posición centroX, centroY, y diametro 250
  stroke(color2); //El color del stroke, sera el declarado para color2
  strokeWeight(10); //Ancho del stroke
  noFill(); //Sin relleno 
  ellipse(centroX, centroY, 100, 100); //Ellipse en posición centroX, centroY, y diametro 100
  stroke(color2); //El color del stroke, sera el declarado para color2
} //Cierre función donut

void argollas(float centroX, float centroY, float diametro, color color1, color color2, color color3, color color4, float stroke1) { //Inicio función argollas, y declaro variables para posiciones y colores
  stroke(color2); //El color del stroke, sera el declarado para color2
  strokeWeight(stroke1); //El ancho del stroke, sera el declarado para stroke1
  fill(color1); //El relleno de la ellipsee, sera el declarado para color1
  ellipse(centroX, centroY, diametro, diametro); //Ellipse en posición centroX, centroY, diametro, diametro

  noFill(); //Sin relleno
  stroke(color3); //El color del stroke, sera el declarado para color3
  strokeWeight(3);  //Ancho del Stroke 
  //Inicio for loop
  for (float i = 1; i < 20; i = i + 1) { //i se declara como 1, y aumenta 1 hasta llegar a 20
    ellipse(centroX, centroY, 15*i, 15*i); //Ellipse en posición centroX, centroY, con diametro 15 multiplicado por el resultado de i
  } //Cierre for loop
} //Cierre función argollas

void keyPressed() { //Inicio de keyPressed
  if (key == 'a') //Sí se aprieta 'a'
    b = (!b); //Las funciones de b, cambian por las de !b
} //Cierre keyPressed