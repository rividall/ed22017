//Inicio de la clase "Ondas".
class Ondas {
  float vel; //Variables.

  //Constructor
  Ondas() {
  }

  /* La función "fondo", hara que se dibuje un rectangulo del tamaño del canvas,
   con transparencia 50, que sustituira el color del fondo, para que la función
   "lineas" se dibuje con estela.
   */

  void fondo () { //Inicio función "fondo" y la creación de este.
    fill(celeste, 50);
    noStroke();
    rect(0, 0, 800, 523);
  } //Fin función "fondo".

  /*La función "lineas", creará líneas en paralelo, en el alto y bajo del canvas,
   con un movimiento ondulado.
   Este movimiento cambia la altura de la ondulación, y el ancho de las líneas.
   */
  void lineas(float velocidad, float ancho) { /*Inicio función "Lineas", y la creación
   y movimiento de la forma.*/
    // println(vv); //Se imprime el valor de la velocidad.
    noFill();
    stroke(naranjo);
    strokeWeight(ancho);
    for (int i=0; i<100; i++) { /*/i es igual a 0, y aumenta en 1, hasta llegar a 100
     (cantidad de lineas creadas).*/
      float fin = map(sin(vel+i*2), -5, 1, 450, 100); /*Se crea la onda y el
       movimiento de esta.*/
      line(i*10, height, i*10, height-fin); //Líneas inferiores.
      line(i*10, 0, i*10, fin); //Lineas superior.
    }
    vel += velocidad; //A vel, se le suma el valor de velocidad dado en la función.
  } //Fin función "lineas".
} //Termino de la clase.
