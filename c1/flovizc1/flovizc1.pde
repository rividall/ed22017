/*
Universidad del Desarrollo
 Facultad de Diseño
 Expresión Digital II 
 Certamen II
 Miércoles 8, noviembre, 2017
 */

//En el código a continuación, se inicializa la clase 'Flo' con dos variables tipo array, 
//con el fin de crear un movimiento que represente dos ADN en el canvas, a base de distintas ondas;
//Uno que vaya de izquierda a derecha y otro de derecha a izquierda
//Al oprimir la tecla 'n' se cambia el stroke de las ondas de los ADN a un random de colores.


//Declaración de clase y variables.
Flo [] n = new Flo[4];
Flo [] m = new Flo[4];
import processing.pdf.*;
boolean guardarpdf; 

//Inicialialización de las variables declaradas anteriormente.
void setup() {
  //Se crea el canvas con un tamaño de 1000px por ancho y 823px de largo.
  size(1000, 823);
  //background(#343434);
  //Se suaviza el background del canvas para que el movimiento genere una especie de estela.
  smooth();
  //guardar pdf es falso hasta que se le indique.
  guardarpdf = false;

  //Se inicializa la clase con la variable 'n'.
  for (int i = 0; i < n.length; i++) {
    n[i] = new Flo();
  }
  //Se inicializa la clase con la variable 'm'
  for (int i = 0; i < m.length; i++) {
    m[i] = new Flo();
  }
}

//Inicialización ámbito de dibujo
void draw() {
  //Al momento de guardar el archivo, se inicia el proceso.
  // esto nunca ocurre
  if (guardarpdf) {
    beginRecord(PDF, "ADN.pdf");
  }
  //Se crea por cada frame un rectángulo del tamaño del canvas con fondo nefro y sin bordes.
  fill(0, 5);
  noStroke();
  rect(0, 0, width, height);
  
  //For Loop de clase variable n y keyPressed.
  for (int i=0; i < n.length; i++) {
    n[i].ADN();
    n[i].keyPressed();  

  }
  //For Loop de clase variable m y keyPressed.
  for (int i = 0; i < m.length; i++) {
    m[i].ADN2();
    m[i].keyPressed();
  }

  //Se termina el guardado del archivo como pdf y vuelve a ser falso.
  // esto nunca ocurre
  if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
  //Si se hace click con el mouse, se guarda el archivo como tiff.

  if (mousePressed == true){

    save("ADN.tiff");

}
}