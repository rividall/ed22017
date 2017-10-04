// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to Semestre - Expresión Digital II
// Ignacio Olea
// iolea

/*Grilla con círculos en las 4 esquinas y un cuadrado en el medio los cuales crecen
 proporcionales a la ubicación del mouse en X,donde el lado derecho del canvas es el
 tamaño mínimo de las formas (0), mientras que el izquiero es el tamaño máximo (500),
 estos se encuentran en un fondo de líneas,las cuales cambian de color (blanco o negro)
 dependiendo de la ubicación Y del mouse, donde la mitad superior es para el color blanco
 y la inferior para el color negro.
 Al presionar click, aparecen círculos desde el centro, los cuales se expanden hacia el
 borde del canvas en un continuo Loop.
 */



int x1, x2, x3;
//Se declaran las variantes de color
color blanco, negro, gris, naranjo, azul, verde;

void setup() { //Inicio ámbito de setup
  size(500, 500); //Tamaño del canvas

  x1 = 0;
  x2 = 0;
  blanco = color(255, 255, 255); //Color blanco
  negro = color(0, 0, 0); //Color negro
  gris = color(142, 142, 142); //Color gris
  naranjo = color(255, 163, 13); //Color naranjo
  azul= color(0, 0, 255); //Color azul
}//Fin de setup

void draw() {//Inicio draw
  background(255);//Fondo blanco

  noStroke();//Sin linea
  fill(naranjo, 200);//Color naranjo con 75% aprox de opacidad
  rect(250, 250, mouseX, mouseX);//Rectángulo en el centro que se expande proporcional a mouse en X
  rectMode(CENTER);//Parámetros de X,Y del rectángulo se convierte en centro.

  // noStroke();//Sin linea
  fill(azul, 125);//Color azul con 50% aprox de opacidad
  ellipse(50, 50, mouseX, mouseX);//círculo en la esquina izquiera superior que se
  //expande proporcional a mouse en X
  // noStroke();//Sin linea
  // fill(azul, 125);//Color azul con 50% aprox de opacidad
  ellipse(50, 450, mouseX, mouseX);//círculo en la esquina izquierda inferior que se
  //expande proporcional a mouse en X
  // noStroke();//Sin linea
  // fill(azul, 125);//Color azul con 50% aprox de opacidad
  ellipse(450, 50, mouseX, mouseX);//Círculo en la esquina derecha superior que se
  //expande proporcional a mouse en X
  // noStroke();//Sin linea
  // fill(azul, 125);//Color azul con 50% aprox de opacidad
  ellipse(450, 450, mouseX, mouseX);//Círculo en la esquina derecha inferior que se
  //expande propocional a mouse en X

  stroke(negro);//Línea Negra
  strokeWeight(5);//Grosor de Línea 5
  noFill();//Sin relleno
  ellipse(250, 250, x1, x1);//círculo en centro de canvas

  stroke(negro);//Línea Negra
  strokeWeight(5);//Grosor 5 de línea
  noFill();//Sin Rellleno
  ellipse(250, 250, x2, x2);//círculo en centro de canvas



  //For loop
  strokeWeight(1);//Grosor de línea 1 para loop
  for (int x = 3; x < height; x += 3) {// Líneas a una distancia de 3 puntos entre ellas
    stroke(blanco);   //Color blanco por defecto

    if (mouseY < 250) { //Si el mouse esta en la mitad superior del canvas,
      stroke(blanco);//las lineas son blancas
    }//Fin if líneas blancas
    if (mouseY > 250) {  // Si el mouse esta en la mitad inferior del canvas,
      stroke(negro);   // las líneas se vuelve negra
    }//Fin if lìneas negras
    line(0, x, 500, x);
    // { //Tamaño y posición de las lineas
    // }//Fin line
  }//Fin for loop
}//Fin void draw

void keyPressed() {//Inicio función de teclas
  if (key == 'w') { //Letra declarada, color naranjo cambia a un color aleatorio
    naranjo = color(random(255), random(255), random(255));//al presionar 'w'
  }//Fin función 'w'

  if (key == 'e') {//Letra declarada, color azul cambia a un color aleatorio al presionar
    azul = color(random(255), random(255), random(255), random(63, 255));//'w'
  }//Fin función 'e'
}
void mousePressed() {//inicio mouse pressed
  x1 +=50; //si se hace click, se aumenta x1 en 50 por click


  if (x1 > 500) {//si x1 es mayor a 500, vuelve a su punto de orígen (0,0)
    x1 = 0;
  }

  if (x1 > 250 || x2 > 0) {//si x1 abarca la mitad del canvas, x2 aumenta en 50 por click
    x2 +=50;
  }
  if (x2 > 500) { //Si x2 es mayor a 500, vuekve a su punto de orígen (0,0)
    x2 = 0;
  }//Fin void mouse pressed
}//Fin código
