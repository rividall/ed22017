boolean b; 
color[] colores = new color [4];

void setup() { 
  size(900, 300); 
  b = true;
  colores[0] = #A3BD31;
  colores[1] = #DEDC1C;
  colores[2] = #FFFFFF;
  colores[3] = #000000;
} 

void draw() {
  if (b) { 
    background(colores[3]); 
    donut(mouseX + 300, mouseY, colores[0], colores[1], colores[3], colores[2], 50); 
    circulo(mouseX, mouseY, 100, colores[0], colores[1], colores[3], colores[2], 10, 3); 
    argollas(mouseX + 600, mouseY, 200, colores[0], colores[1], colores[3], colores[2], 10);
  } 
  if (!b) { 
    background(colores[2]); 
    donut(mouseX, mouseY, colores[1], colores[0], colores[2], colores[3], 20); 
    circulo(mouseX + 300, mouseY, 50, colores[1], colores[0], colores[2], colores[3], 5, 6); 
    argollas(mouseX - 300, mouseY, 200, colores[1], colores[0], colores[2], colores[3], 10);
  }
} 


void circulo(float centroX, float centroY, float diametro, color color1, color color2, color color3, color color4, float stroke1, float stroke2) { 
  stroke(color2);
  strokeWeight(stroke1); 
  fill(color1); 
  ellipse(centroX, centroY, diametro, diametro); 
  noFill();
  stroke(color4); 
  strokeWeight(stroke2); 
  ellipse(centroX, centroY, diametro + 55, diametro + 55); 
  ellipse(centroX, centroY, diametro + 75, diametro + 75); 
  ellipse(centroX, centroY, diametro + 95, diametro + 95); 
  ellipse(centroX, centroY, diametro + 115, diametro + 115); 
  ellipse(centroX, centroY, diametro + 135, diametro + 135); 
  ellipse(centroX, centroY, diametro + 155, diametro + 155);
} 


void donut(float centroX, float centroY, color color1, color color2, color color3, color color4, float n) { 
  noStroke();
  fill(color4); 
  rect(300, 0, 300, 300); 

  noFill();  
  stroke(color3); 
  strokeWeight(2); 

  for (float i = 1; i < n; i = i + 1) { 
    ellipse(centroX, centroY, 10*i, 10*i);
  } 

  stroke(color1); 
  strokeWeight(50); 
  noFill(); 
  ellipse(centroX, centroY, 150, 150); 
  stroke(color2); 
  strokeWeight(10); 
  noFill(); 
  ellipse(centroX, centroY, 205, 205); 
  stroke(color2); 
  strokeWeight(10);
  noFill();  
  ellipse(centroX, centroY, 100, 100); 
  stroke(color2);
} 

void argollas(float centroX, float centroY, float diametro, color color1, color color2, color color3, color color4, float stroke1) { 
  stroke(color2); 
  strokeWeight(stroke1); 
  fill(color1); 
  ellipse(centroX, centroY, diametro, diametro); 

  noFill(); 
  stroke(color3); 
  strokeWeight(3);   

  for (float i = 1; i < 20; i = i + 1) { 
    ellipse(centroX, centroY, 15*i, 15*i);
  }
}

void keyPressed() { 
  if (key == 'a') 
    b = (!b); 
}