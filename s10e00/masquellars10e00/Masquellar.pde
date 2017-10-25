class Masquellar {
  //Atributos
color eleccionColor;
color[] r = new color[3];
int f,x;

  //Constructor
Masquellar() {
f = x;
x = 50;
 
  }
  
  //Metodos

  void reja(int g, int h) {//se crea la funcion reja con sus variables
 strokeWeight(1);//tamaño de la línea
  stroke(#AA4225);//color de la línea
  line(g + 38, h + 30, g + 126, h + 30);//se dibuja la linea
  line(g+ 34,  h + 51, g + 130, h + 51);//se dibuja la linea
  line(g + 41, h + 73, g + 120, h + 73);//se dibuja la linea

  stroke(#058789);//color de la línea
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

void medio(int g, int h) {//se crea la funcion reja con sus variables
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
  void movimiento() {
  if (mouseY > 50){
  x = 100;}
  else {x = 50;
  }
  }
  }