float x, y, a, b, c, d;//se nombran las variables 
float vely, velx;// se nombran las variables
color myColor;//nombra color
PImage img;//declarar imagen

void setup() {
  size(500, 500);// se crea el tamaño del lienzo
  y = 125;//define y
  vely = 4;// se identifica los valores de vely
  x = 125;//define x
  velx = random(3, 6);//se identifica los valores de velx
  myColor = #AA4225;//se define el color para la variable myColor
  a = 125;
  b = 125;
  c = 125;
  d = 125;
  img = loadImage("monogramap.png");//cargar imagen
}

void draw() {
  //background(255); // se declara el color del fondo
  fill(#050505);//pinta rectangulo
  rect(375, 250, width/4, height/4);//dibujan cuadrados

  fill(#050505);//pinta rectangulo
  rect(250, 375, width/4, height/4);//dibuja rectangulo

  fill(#050505);//pinta rectangulo
  rect(125, 375, width/4, height/4);//dibuja rectangulo

  fill(#050505);//pinta rectangulo
  rect(0, 250, width/4, height/4);//dibuja rectangulo

  fill(#050505);//pinta rectangulo
  rect(250, 0, width/4, height/4);//dibuja rectangulo

  fill(#050505);//pinta rectangulo
  rect(375, 125, width/4, height/4);

  fill(#050505);//pinta rectangulo
  rect(0, 125, width/4, height/4);//dibuja rectangulo

  fill(#050505);//pinta rectangulo
  rect(125, 0, width/4, height/4);//dibuja rectangulo


  fill(myColor); //declara el color del eclipse
  noStroke(); //eclipse sin borde
  ellipse(x, y, 5, 5); // se dibuja el eclipse

  fill(myColor);//declara el color del eclipse
  rect(0, 0, a, b);//se dibuja el cuadrado

  fill(myColor);//declara el color del eclipse
  rect(375, 375, c, d);//se dibuja el cuadrado

  fill(myColor);//declara el color del eclipse
  rect(375, 0, a, b);//se dibuja el cuadrado

  fill(myColor);//declara el color del eclipse
  rect(0, 375, a, b);//se dibuja el cuadrado

  image(img, 375, 375);//usar imagen


  if (y > 375|| y < 125) { //si y es mayor a 375 o es menor a 125, la velocidad de y 
    vely *=-1; //se invierte
  } else if (x > 375|| x < 125) {//si x es mayor a 375 o es menor a 125, la velocidad de x 
    velx *= -1;//se invierte
  }
  if (x > 250 && y > 250 ||  y < 250 && x < 250) {// si x es mayor a 250 y y es mayor a 250
    myColor = #058789;// ellipse es verde
  } else if ( y < 250 && x > 250 || x < 250 && y > 250) { // si y es menor a 250 y x es mayor a 250
    myColor =  #AA4225;//ellipse es rojo
  }


  y += vely; // y aumenta su valor
  x += velx;// x aumenta su valor

  a--;//disminuye su valor
  b--;//disminuye su valor
  // si hay código comentado, entonces no va.
  image(img, 375, 375);
}