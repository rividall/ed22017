//#AA4225 rojo
//#058789 verde 

color v;//se declaran variables universales
boolean b, n, m, p;//se declaran variables universales
int x, y, d, g, h;//se declaran variables universales
float u;//se declaran variables universales
color[] r = new color[3];
color eleccionColor;
int[] t = new int[4];
int eleccionT;

void setup() {  
  size(500, 100);//se ajusta tamaño del canvas
  r[0] = #AA4225;//valorizan variables
  r[1] = 255;
  r[2] = 0;
  v = #058789;//valorizan variables
  b = true;//valorizan variables
  n = true;//valorizan variables
  m = true;//valorizan variables
  p = true;//valorizan variables
  y = 0;//valorizan variables
  t[0] = 0;//valorizan variables
  t[1] = 50;
  t[2] = 100;
  t[3] = 200;
  d = 70;//valorizan variables
}


void draw() {
  background(#030303);//color al fondo

  if (b) { //si b es verdadero v es verde
    v = #058789 ;
  }
  if (!b) { //b es falso v es rojo
    v = #AA4225 ;
  }
  if (m) { //si m es verdadero x toma el valor de y
    x = t[0];
  }

  if (!m) { //si m es falso x toma el valor de t
    x = (int)random(1, t.length);
  }
  if (p) { //si p es verdadero u toma el valor de g
    u = d ;
  }

  if (!p) { //si p es falso u toma el valor de y
    u = y ;
  }
  reja(mouseX,mouseY, r, v);//se llama la funcion reja declarando sus valores
  medio(mouseX,mouseY,t[x]);//se llama la funcion medio declarando sus valores
  atomo(mouseX,mouseY, u); //se llama la funcion atomo declarando sus valores
}



void reja(int g, int h,color r[], color v) {//se crea la funcion reja con sus variables
  r[0] = #AA4225;//valorizan variables
  r[1] = 255;
  r[2] = 0;
  strokeWeight(1);//tamaño de la línea
  stroke(r[eleccionColor]);//color de la línea
  line(g + 38, h + 30, g + 126, h + 30);//se dibuja la linea
  line(g+ 34,  h + 51, g + 130, h + 51);//se dibuja la linea
  line(g + 41, h + 73, g + 120, h + 73);//se dibuja la linea

  stroke(v);//color de la línea
  line(g + 49, h + 16, g + 49, h + 86);//se dibuja la linea
  line(g + 57, h + 16, g + 57, h + 86);//se dibuja la linea
  line(g + 63, h + 16, g + 63, h + 86);//se dibuja la linea

  line(g + 98, h + 16, g + 98, h + 86);//se dibuja la linea
  line(g + 108,h + 16, g + 108,h + 86);//se dibuja la linea
  line(g + 115,h + 16, g + 115,h + 86);//se dibuja la linea

  fill(#FFFFFF);//se pinta los ellipses
  noStroke();//sin borde
  ellipse(g + 34, h + 35, 2, 2);//se dibujan los ellipses
  ellipse(g + 67, h + 35, 2, 2);//se dibujan los ellipses
  ellipse(g + 111, h + 35, 2, 2);//se dibujan los ellipses
  ellipse(g + 121, h + 70, 2, 2);//se dibujan los ellipses
  ellipse(g + 90, h + 70, 2, 2);//se dibujan los ellipses
  ellipse(g + 46, h + 70, 2, 2);//se dibujan los ellipses
}

void medio(int g, int h,int x) {//se crea la funcion reja con sus variables
  strokeWeight(1);//grosor de la línea
  stroke(#AA4225);//color de la línea
  noFill();//sin relleno
  ellipse(g + 235,h + 51, 47, 47);//se dibujan los ellipses
  rect(g + 244, h + 36, 31, 31);//se dibujan los cuadrados
  rect(g + 196, h + 36, 31, 31);//se dibujan los cuadrados
  stroke(#058789);//color de la línea
  line(g + 196, h + 36, g +  275, h + 67);//se dibuja la linea
  line(g + 275, h + 36, g +  196, h +  69);//se dibuja la linea
  noFill();//sin relleno
  ellipse(g + 205, h + 38, x, x);//se dibujan los ellipses
  ellipse(g + 267, h + 38, x, x);//se dibujan los ellipses
}

void atomo(int g, int h, float u) {//se crea la funcion reja con sus variables
  strokeWeight(2);//grosor de la línea
  stroke(#058789);//color de la línea
  noFill();//sin relleno
  ellipse(g + 416,h +  51, u, u);//se dibujan los ellipses
  ellipse(g + 416,h +  51, u/1.3, u/1.3);//se dibujan los ellipses
  ellipse(g + 416,h + 51, u/2, u/2);//se dibujan los ellipses
  fill(#AA4225);//relleno de las ellipses
  stroke(#AA4225);//color de la línea
  line(g + 371, h + 16, g + 459, h + 85);// se dibuja la línea
  noStroke();//sin borde
  ellipse(g + 416, h +  51,u/4,u/4);//se dibujan los ellipses
  ellipse(g + 433, h +  51, 4, 4);//se dibujan los ellipses
  ellipse(g + 382, h +  58, 4, 4);//se dibujan los ellipses
  ellipse(g + 407, h +  35, 4, 4);//se dibujan los ellipses
}
void keyPressed() {//funcion de activar con teclado
  if (key == 'q') {// se elije la tecla
    b = !b;// se invierte el boolean
    n = !n;// se invierte el boolean
    m = !m;// se invierte el boolean
    p = !p;// se invierte el boolean
  }

  if (key == 's') {
    eleccionColor++;
  }

  if (eleccionColor > 2) {
    eleccionColor = 0;
  }
  eleccionT++;
  if (eleccionT > 2) {
    eleccionT = 0;
  }
}