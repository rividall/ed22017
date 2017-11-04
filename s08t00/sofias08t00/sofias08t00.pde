boolean c; 
int x, y;
float col;
int [] numeros = new int [4];
int eleccionNumeros;
color [] colores = new color [4];

void setup() { 
  size(1200, 400); 
  x = 200; 
  y = 200; 
  c = true; 
  colores[0] = color(#E866F7); //rosado
  colores[1] = color(#73DDFC); // celeste
  colores[2] = color(#050505); // negro
  colores[3] = color(#FFFFFF); // blanco
  numeros[0] = 200;
  numeros[1] = 1000;
  numeros[2] = -200;
  noCursor();
}

void draw() { 
  col = map(mouseX, 0, 600, 0, 255);
  background(col);
  // Boolean 
  if (c) { 
    cruz(numeros[0], numeros[0], colores[3], colores[2], colores[1]); 
    diagonales(numeros[0], numeros[0], colores[0], colores[1], colores[2]); 
    circulos(numeros[0], numeros[0], colores[0], colores[1], colores[3]);
  }
  if (!c) { 
    cruz(numeros[1], numeros[0], colores[0], colores[0], colores[2]); 
    diagonales(numeros[2], numeros[0], colores[3], colores[2], colores[1]); 
    circulos(numeros[2], numeros[0], colores[2], colores[1], colores[2]);
  }
}

void cruz(int x, int y, color b, color n, color c) { 
  noStroke(); 
  fill(c); 
  ellipse(x, y, 300, 300); 
  noStroke(); 
  fill(b); 
  ellipse(x, y, 200, 200); 
  noStroke(); 
  fill(c); 
  ellipse(x, y, 100, 100); 
  // Línea vertical.
  stroke(c); 
  strokeWeight(15); 
  line(x, y -200, x, y +200); 
  // Línea horizontal.
  stroke(c); 
  strokeWeight(15);
  line(x -200, y, x +200, y);
}

void diagonales (int x, int y, color r, color c, color n) { 
  // Línea vertical.
  stroke(c); 
  strokeWeight(15); 
  line(x +400, y -200, x +400, y +200); 
  // Línea horizoantal.
  stroke(c); 
  strokeWeight(15); 
  line(x -200, y, x +650, y); 
  // Línea diagonal derecha - izquierda.
  stroke(c); 
  strokeWeight(15); 
  line(x +600, y -200, x +200, y +200); 
  // Línea diagonal izquierda - derecha.
  stroke(c); 
  strokeWeight(15); 
  line(x +200, y -200, x +600, y +200); 
  // Ellipses.
  noStroke(); 
  fill(r); 
  ellipse(x +400, y, 200, 200);
  noStroke(); 
  fill(n); 
  ellipse(x +400, y, 100, 100); 
  noStroke(); 
  fill(r); 
  ellipse(x +400, y, 50, 50);
}

void circulos(int x, int y, color r, color c, color b) {  
  //Línea horizontal
  stroke(c); 
  strokeWeight(15); 
  line(x +600, y, x +1000, y); 
  //Línea vertical
  stroke(c); 
  strokeWeight(15); 
  line(x +800, y -250, x +800, y +250 ); 
  //Quad
  stroke(b); 
  strokeWeight(15); 
  noFill(); 
  quad(x +650, y -150, x +950, y -150, x +950, y +150, x +650, y +150); 
  //Ellipses
  noStroke(); 
  fill(r); 
  ellipse(x +650, y -150, 100, 100); 
  noStroke(); 
  fill(r);
  ellipse(x +950, y -150, 100, 100); 
  noStroke(); 
  fill(r); 
  ellipse(x +950, y +150, 100, 100); 
  noStroke(); 
  fill(r); 
  ellipse(x +650, y +150, 100, 100); 
  noStroke(); 
  fill(b); 
  ellipse(x +650, y -150, 50, 50); 
  noStroke(); 
  fill(b); 
  ellipse(x +950, y -150, 50, 50); 
  noStroke(); 
  fill(b); 
  ellipse(x +950, y +150, 50, 50); 
  noStroke(); 
  fill(b); 
  ellipse(x +650, y +150, 50, 50); 
  noStroke(); 
  fill(c); 
  ellipse(x +800, y, 200, 200); 
  noStroke();
  fill(b); 
  ellipse(x +800, y, 100, 100);
}

void keyPressed() { // Se da inicio a las variables de teclas.
  if (key == 'c') 
    c = (!c);

  println(eleccionNumeros);
}