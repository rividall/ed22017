boolean b, g; //declaro los boolean
color[] colores = new color [4]; // declaro cuantos colores hay en array
int[] numeros = new int [5]; // declaro cuantos numeros hay en array
int q, w, e, h; //declaro int
float f; //declaro float como f
color blanco, negro; //nombro color como blanco, negro


void setup() { 
  size(900, 300); //tamaño del canvas
  b = true; // boolean verdadero
  g = false;
  f = 0.5; //le doy un valor al float
  blanco = #FFFFFF; //codigo color blanco 
  negro = #000000; //codigo color negro
  colores[0] = #A3BD31; //verde
  colores[1] = #DEDC1C; //amarillo
  colores[2] = #FFFFFF; //blanco
  colores[3] = #000000; //negro
  numeros[0] = 1; //le doy un valor al array de int
  numeros[1] = 2; //le doy un valor al array de int
  numeros[2] = 5; //le doy un valor al array de int
  numeros[3] = 55; //le doy un valor al array de int
  numeros[4] = 100; //le doy un valor al array de int
} 

void draw() {   
  if (b) { //boolean b verdadero
    background(negro); //fondo negro
    donut(numeros[2]*90, numeros[2]*30, colores[0], colores[1], colores[3], colores[2], numeros[2]*3, numeros[2]*2); //función donut y valores dados
    circulo(numeros[2]*30, numeros[2]*30, numeros[4], colores[0], colores[1], colores[2], numeros[2]*2, numeros[0]*3); //función circulo y valores dados
    argollas(numeros[2]*150, numeros[2]*30, numeros[4]*2, colores[0], colores[1], colores[3], numeros[0]+2, numeros[0]*3);//función argollas y valores dados
    lup(2, negro); //función lup y valores dados
  } else { // sino
    background(blanco);  //fondo blanco
    donut(numeros[2]*90, numeros[2]*30, colores[1], colores[0], colores[2], colores[3], numeros[2], numeros[1]); //función donut y valores dados
    circulo(numeros[2]*150, numeros[2]*30, numeros[2]*10, colores[1], colores[0], colores[3], numeros[2]*2, numeros[2]+1); //función circulo y valores dados 
    argollas(numeros[2]*30, numeros[2]*30, numeros[4]*2, colores[1], colores[0], colores[2], numeros[2]+2, numeros[0]*3); //función argollas y valores dados
    lup(2, blanco); //función lup y valores dados
  }
}

void circulo(float centroX, float centroY, float diametro, color color1, color color2, color color3, float stroke1, float stroke2) { //creo la función circulo
  q = (int)map(mouseX, 0, width, numeros[4]-10, f);  // map que se utilizara en la ellipse

  stroke(color2); //color para el stroke de la ellipse
  strokeWeight(stroke1); //ancho del stroke de la ellipse
  fill(color1);  //relleno de la ellipse
  ellipse(centroX, centroY, q, q); //valores de la ellipse

  noFill(); //ellipse sin relleno
  stroke(color3); //color para el stroke de la ellipse
  strokeWeight(stroke2); //ancho del stroke de la ellipse
  ellipse(centroX, centroY, diametro + numeros[3], diametro + numeros[3]); //valores de la ellipse
  ellipse(centroX, centroY, diametro + numeros[3]+20, diametro + numeros[3]+20); //valores de la ellipse
  ellipse(centroX, centroY, diametro + numeros[3]+40, diametro + numeros[3]+40); //valores de la ellipse
  ellipse(centroX, centroY, diametro + numeros[4]+15, diametro + numeros[4]+15); //valores de la ellipse
  ellipse(centroX, centroY, diametro + numeros[4]+35, diametro + numeros[4]+35); //valores de la ellipse
  ellipse(centroX, centroY, diametro + numeros[4]+55, diametro + numeros[4]+55);//valores de la ellipse
} 


void donut(float centroX, float centroY, color color1, color color2, color color3, color color4, float n, float stroke1) { //creo la función donut
  w = (int)map(mouseX, 0, width, numeros[1]*6, numeros[2]*10); // map que se utilizara en el rectangulo

  noStroke(); // sin borde
  fill(color4); // color para el relleno del rectangulo
  rect(numeros[2]*60, 0, numeros[2]*60, numeros[2]*60); //valores para el rectangulo

  noFill(); //sin relleno
  stroke(color3); //color para el stroke del cuadrado
  strokeWeight(numeros[1]); //ancho del stroke del cuadrado

  for (float i = 1; i < n; i = i + 1) { //for loop, i es igual a 1, y se aumenta 1 hasta llegar al valor de n
    strokeWeight(stroke1); //ancho del stroke de la ellipse
    ellipse(centroX, centroY, w*i, w*i); //valores de la ellipse
  } 

  stroke(color1);  //color para el stroke de la ellipse
  strokeWeight(numeros[2]*10); //ancho del stroke de la ellipse
  noFill(); //sin relleno
  ellipse(centroX, centroY, numeros[2]*30, numeros[2]*30); //valores de la ellipse

  stroke(color2); //color para el stroke de la ellipse
  strokeWeight(numeros[2]*2); //ancho del stroke de la ellipse
  noFill();  //sin relleno
  ellipse(centroX, centroY, numeros[2]*41, numeros[2]*41); //valores de la ellipse

  stroke(color2); //color para el stroke de la ellipse
  strokeWeight(numeros[2]*2); //ancho del stroke de la ellipse
  noFill(); //sin relleno
  ellipse(centroX, centroY, numeros[2]*20, numeros[2]*20); //valores de la ellipse
} 

void argollas(float centroX, float centroY, float diametro, color color1, color color2, color color3, float stroke1, float stroke2) { //creo la función argollas
  e = (int)map(mouseX, 0, width, numeros[2]+1, numeros[2]*5); // map que se utilizara en el ancho de las ellipses creadas por el loop

  stroke(color2); //color para el stroke de la ellipse
  strokeWeight(stroke1); //ancho del stroke de la ellipse
  fill(color1); //relleno de la ellipse
  ellipse(centroX, centroY, diametro, diametro); //valores de la ellipse

  noFill(); //sin relleno
  stroke(color3); //color para el stroke de la ellipse
  strokeWeight(stroke2); //ancho del stroke de la ellipse  

  for (float i = 1; i < numeros[2]*4; i = i + 1) { //for loop, i es igual a 1, y se aumenta 1 hasta llegar a 8
    ellipse(centroX, centroY, numeros[2]*3*i, numeros[2]*3*i); //valor de la ellipse
    strokeWeight(e/4); //ancho de la ellipse
  }
}

void lup(int strokeweight, int stroke) { //creo la función lup
  if (g) { //boolean g 
    for (int i = numeros[0]; i < numeros[3]*9; i = i + numeros[0]) {  //for loop, i es igual a 1, y aumenta en 1 hasta llegar a 45
      for (int j = numeros[0]; j < numeros[2]*6; j = j + numeros[0]) { //for loop. j es igual a 1, y aumenta en 1 hasta llegar a 12
        stroke(stroke); //color para el stroke de la ellipse
        strokeWeight(strokeweight); //ancho del stroke de la ellipse
        noFill(); //sin relleno
        rect(0, 0, 20*i, 20*j); //valores de la ellipse
      }
    }
  }
}

void keyPressed() { 
  if (key == 'a') //sí aprieto a
    b = (!b); // b pasa a ser falso
}


void mousePressed() { //sí aprieto el mouse
  g = (!g); //g pasa a ser verdadero
}