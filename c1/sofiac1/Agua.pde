class Agua {
  // Se inicia la clase "Agua".
  float f, v;
  int maxFrameCount = 200; //Se declara la variable FrameCount con su valor.
  color c, a; // Se declaran las variables para el color.

  Agua() {
    //Se inicia constructor.
    f = (float)frameCount/maxFrameCount; /* Se inicializa el FrameCount, con la
     variable "f". */
  }
  // Fin constructor.

  /* La función "agua" hará que se dibuje una grilla de ellipses que cubrirá el
   canvas, generando un ciclo de movimiento en sentido vertical, dando la sensación de
   son las olas del mar, en donde las ellipses bajan de un tamaño y luego suben más
   pequeñas, a los dos movimientos le agregamos una degradación en tono azul.
   */
  void agua() {
    // esta función debería ser una sola ellipse y la posición modificada en un array dentro de void setup
    // esto es necesario si se quiere trabajar con datos
    for ( int x= -800; x <= 523; x += 25) { // Grilla - separación horizontal.
      for (int y= -800; y <= 523; y += 50) { // Grilla - separación vertical.
        float x2 = map(cos(-v), 0, 1, 1, 135); // Map de posición de X.
        float y2 = map(cos(v), 1, 150, 25, 10); // Map de posición de Y.
        float sz2 = map(cos(-v), 0, 1, 5, 15); // Map para tamaño de ellipse.
        fill(0, 150+(x/6), 500-(y/2)); // Degradación de color para relleno de ellipse.
        noStroke();
        ellipse(x+x2, y-y2, sz2, sz2); //Ellipse
      }
    }
  }
  // Fin función "agua".

  /* La función "burbujas" hará que se dibuja una grilla de ellipses, en este
   caso representando burbujas, que cubrirá el canvas, generando un ciclo de movimiento
   en sentido vertical, dando la sensación de que estas bajan de un tamaño y luego
   se devuelven más pequeñas.
   */
  void burbujas() {
    // Inicio función burbujas y la creación de esta.
    for ( int x= -800; x <= 523; x += 20) {
      for (int y= -800; y <= 523; y += 100) {
        float offSet = 15*x+y+y; /* Se utiliza offSet para cambiar el map a
         continuación. */
        float x2 = map(cos(v-offSet), 0, 1, 135, 100); // Map de posición de X.
        float y2 = map(cos(-v-offSet), 0, 1, 225, 0); // Map de posición de Y.
        float sz2 = map(sin(v), 0, 1, 1, 10); // Map para tamaño de ellipse.
        fill(#2cbbd5);
        noStroke();
        ellipse(x+x2, y-y2, sz2, sz2); //Ellipse
      }
    }
  }
  // Fin función "agua".

  /* La función "movimiento" controla la cantidad de frames, más la creación
   de arcos, a través de sus distintas ecuaciones, además se ve el traslado
   que tendrán los objetos dentro del programa.
   */
  void movimiento() {
    // Inicio función "movimiento" y la creación de esta.
    translate(width/2, height/2); // Traslado de 0,0 hacia el centro
    f = (float)frameCount/maxFrameCount; /*Inicalización cuadros desde que se
     inicia el programa.*/
    v = 8*f; // Velocidad es igual a 8 y se múltiplica por la cantidad de frames.
  }
  // Fin función "movimiento".
}
// Fin de la clase "Agua".
