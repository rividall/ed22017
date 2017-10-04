//#AA4225 rojo
//#058789 verde 

color r, v;//se declaran variables universales
boolean b, n, m,p;//se declaran variables universales
int x,y,t,g;//se declaran variables universales
float u;//se declaran variables universales
void setup() {  
  size(500, 100);//se ajusta tamaño del canvas
  r = #AA4225;//valorizan variables
  v = #058789;//valorizan variables
  b = true;//valorizan variables
  n = true;//valorizan variables
  m = true;//valorizan variables
  p = true;//valorizan variables
  y = 0;//valorizan variables
  t = 45;//valorizan variables
  g = 70;//valorizan variables
}


void draw() {
  background(#030303);//color al fondo
  
  if (b) { //si b es verdadero v es verde
    v = #058789 ;
  }
  if (!b) { //b es falso v es rojo
    v = #AA4225 ;
  }

    if (n) { //si n es verdaero r es rojo
      r = #AA4225 ;
    }
    
    if (!n) { //si n es falso r es verde
      r = #058789 ;
    }
  
  if (m) { //si m es verdadero x toma el valor de y
      x = y ;
    }
    
    if (!m) { //si m es falso x toma el valor de t
      x = t ;
    }
    
    if (p) { //si p es verdadero u toma el valor de g
      u = g ;
    }
    
    if (!p) { //si p es falso u toma el valor de y
      u = y ;
    }
  reja (r, v);//se llama la funcion reja declarando sus valores
  medio(x);//se llama la funcion medio declarando sus valores
  atomo(u); //se llama la funcion atomo declarando sus valores
}



void reja(color r, color v) {//se crea la funcion reja con sus variables

  strokeWeight(1);//tamaño de la línea
  stroke(r);//color de la línea
  line(38, 30, 126, 30);//se dibuja la linea
  line(34, 51, 130, 51);//se dibuja la linea
  line(41, 73, 120, 73);//se dibuja la linea

  stroke(v);//color de la línea
  line(49, 16, 49, 86);//se dibuja la linea
  line(57, 16, 57, 86);//se dibuja la linea
  line(63, 16, 63, 86);//se dibuja la linea

  line(98, 16, 98, 86);//se dibuja la linea
  line(108, 16, 108, 86);//se dibuja la linea
  line(115, 16, 115, 86);//se dibuja la linea

  fill(#FFFFFF);//se pinta los ellipses
  noStroke();//sin borde
  ellipse(34, 35, 2, 2);//se dibujan los ellipses
  ellipse(67, 35, 2, 2);//se dibujan los ellipses
  ellipse(111, 35, 2, 2);//se dibujan los ellipses
  ellipse(121, 70, 2, 2);//se dibujan los ellipses
  ellipse(90, 70, 2, 2);//se dibujan los ellipses
  ellipse(46, 70, 2, 2);//se dibujan los ellipses
}

void medio(int x) {//se crea la funcion reja con sus variables
  strokeWeight(1);//grosor de la línea
  stroke(#AA4225);//color de la línea
  noFill();//sin relleno
  ellipse(235, 51, 47, 47);//se dibujan los ellipses
  rect(244, 36, 31, 31);//se dibujan los cuadrados
  rect(196, 36, 31, 31);//se dibujan los cuadrados
  stroke(#058789);//color de la línea
  line(196, 36, 275, 67);//se dibuja la linea
  line(275, 36, 196, 69);//se dibuja la linea
  noFill();//sin relleno
  ellipse(205, 38, x, x);//se dibujan los ellipses
  ellipse(267, 38, x, x);//se dibujan los ellipses
}

void atomo(float u) {//se crea la funcion reja con sus variables
  strokeWeight(2);//grosor de la línea
  stroke(#058789);//color de la línea
  noFill();//sin relleno
  ellipse(416, 51, u, u);//se dibujan los ellipses
  ellipse(416, 51, u/1.3, u/1.3);//se dibujan los ellipses
  ellipse(416, 51, u/2, u/2);//se dibujan los ellipses
  fill(#AA4225);//relleno de las ellipses
  stroke(#AA4225);//color de la línea
  line(371, 16, 459, 85);// se dibuja la línea
  noStroke();//sin borde
  ellipse(416, 51, u/4, u/4);//se dibujan los ellipses
  ellipse(433, 51, 4, 4);//se dibujan los ellipses
  ellipse(382, 58, 4, 4);//se dibujan los ellipses
  ellipse(407, 35, 4, 4);//se dibujan los ellipses
}
void keyPressed() {//funcion de activar con teclado
  if (key == 'q') {// se elije la tecla
    b = !b;// se invierte el boolean
    n = !n;// se invierte el boolean
    m = !m;// se invierte el boolean
    p = !p;// se invierte el boolean
     
}

    
      
}
  