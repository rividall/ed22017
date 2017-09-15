/*
Clase con los valores de las funciones que dibujan los elementos en la grilla.
 En ésta se muestran los elementos, colores, velocidad de movimiento y ángulo de rotación.
 */

class Dot {
  float x, y, tx, ty, vx, vy, angulo;                             //Declaración de variables.
  Dot (float x, float y, float vx, float vy, float angulo) {      //Inicialización de variables.
    this.x = x;                                                   
    this.y = y;
    this.vx = vx * 0.1;
    this.vy = vy * 0.1;
    this.angulo = angulo;
  }

  void displayLine() {
    pushMatrix();                                                 //Función que guarda los cambios.
    translate(x, y);                                              //Traslado de los elementos en la grilla.
    rotate(angulo);                                               //Ángulo de rotación.
    strokeWeight(l);                                              //Grosor de las líneas.
    stroke(c1);                                                   //Color de las líneas.
    line(0, 0, -angulo, 0);                                       //Líneas.
    popMatrix();                                                  //Función que restablece cambios.
  }

  void moveLine() {
    angulo += 0.2;                                                //Velocidad del ángulo de rotación de las líneas.
  }

  void display() {
    pushMatrix();                                                 //Función que guarda los cambios.
    noStroke();                                                   //Elípses sin bordes.
    fill(c2);                                                     //Relleno de las elípses.
    ellipse(x, y, s, s);                                          //Elípses.
    popMatrix();                                                  //Función que restablece cambios. 
  }
  
  void move() {
    pushMatrix();                                                 //Función que guarda los cambios.
    x += vx;                                                      //Velocidad de movimiento en el eje X.
    y += vy;                                                      //Velocidad de movimiento en el eje Y.
    popMatrix();                                                  //Función que restablece cambios.
  }
}