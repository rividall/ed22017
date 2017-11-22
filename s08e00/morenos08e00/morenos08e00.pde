int [] numeros = new int [4]; // new int : crea un espacion en la memoria  ESTE ES CON RANDOM 
color [] colores = new color [4];
int eleccionNumeros;
int cambiodecolor;
void setup () {
  size ( 500, 500);

  numeros [0] = 50 ;
  numeros [1] = 120 ;
  numeros [2] = 200 ;
  numeros [3] = 300 ;
  


  colores [0] = color (255,249,69) ;
  colores [1] = color ( 255,69,69 ) ;
  colores [2] = color (0) ;
  colores [3] = color (255) ;


 
}
void draw () {
  background (255);
  fill  (colores [cambiodecolor]);
  ellipse (200, 300, numeros [eleccionNumeros], numeros [eleccionNumeros]);
}
void keyPressed() {

  cambiodecolor = (int)random(colores.length);
  
  eleccionNumeros = (int) random (numeros.length);
  println(eleccionNumeros);
}