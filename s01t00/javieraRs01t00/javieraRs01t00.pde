// nombre de autor 
void setup() { 
  size(500, 500);            // tamaño del canvas es de 500 por 500 pixeles
  background(255, 255, 255); // el fondo del canvas es blanco
}

void draw() {
  noStroke();
  fill(#B7B7B7);
  quad(50, 50, 450, 50, 450, 450, 50, 450); // los ultimos tres parámetros corresponden a un 
  // cuadrilátero sin borde y de fondo gris
  // que cubre casi todo el canvas
  noStroke();
  fill(255, 255, 255);
  rect(100, 100, 300, 300);      // los ultimos tres parámetros corresponden 
  // a un cuadrado sin borde de fondo blanco
  // de 300 por 300 pixeles
  noStroke();
  fill(#B7B7B7);
  quad(150, 150, 350, 150, 350, 350, 150, 350); // los ultimos tres parámetros corresponden a un 
  // cuadrilátero sin borde y de fondo gris
  // un poco mas pequeño que el anterior
  noStroke();
  fill(255, 255, 255);
  rect(200, 200, 100, 100);  // los ultimos tres parámetros corresponden 
  // a un cuadrado sin borde de fondo blanco
  // que es el más pequeño de todos (100 por 100 pixeles)
  for (int i = 0; i <= width; i += 50) {
    for (int h = 0; h <= height; h+= 50) { // estos parámetro indican la posición en los que se ubicarán las líneas con respecto al 
      // canvas (cada 50 px hacia arriba y hacia abajo, por todo el canvas)
      strokeWeight(16);                    // el borde de las líneas que se dibujarán serán de 16 pixeles de ancho
      strokeCap(SQUARE);                   // las uniones de los bordes de las líneas serán rectas/cuadradas 
      stroke(0);                           // el borde será color negro
      line(i-6, h-6, i+6, h+6);            // se dibuja la línea con las características de los parámetros mencionados anteriormente
      // dentro del canvas (cada 50 pix hacia arriba y abajo, por todo el canvas)
      strokeWeight(5);                     // el borde de los círculos será de 5 px de ancho
      stroke(#FFF300);                     // el borde será de color amarillo
      fill(#FFF300);                       // el fondo de los círculos será amarillo
      ellipse(i, h, 5, 5);                 // se dibujan los círculos con los parámetros indicados anteriormente
    }
  }
}