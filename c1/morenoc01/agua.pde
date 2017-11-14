//Inicio de la clase "Agua"
class Agua {
  //variable
float z = 0; // crear una variable para el ruido z

// Métodos
void mar() {
  noStroke();
  fill(0);
  rect(0, 0, height, width);
  stroke(255, 100);
  strokeWeight(2);

  for (float y = 0; y < height; y = y + 20) {// float y = 0; crea una variable decimal y le asigna un valor de 0
                                               // loop se repite siempre y cuando y <height; es verdad
                                               // y = y + 20 incrementa y al final de cada iteración.
    for (float x = 0; x < width; x = x + 5) { // float x = 0; crea la variable decimal x y le asigna el valor 0
                                                  // loop se repite siempre que x <ancho; es verdad
                                                  // x = x + 1 incrementa la x al final de cada iteración. // interacción
      point(x, y + map(noise(x/250, y/250, z), 0, 1,0, map(mouseY,0,height,0,200))); //se manipula los puntos con el mouse Y.
      }
    }
    z = z + 0.02; // cuando y es 500, el programa avanzará. En este caso, incremento z
  }
}
