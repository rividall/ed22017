// este codigo existe?
int x = 0;//x sera 0
int y;//y sera declarado pero no definido aun
float c = 700/8;//c sera la octava parte de 700

void setup(){

  size(700, 700);//el canvas sera un cuadrado de 700 pixeles de lado 
background(255, 255, 255);// el canvas sera de color blanco
}

void draw(){
  
  strokeWeight(y);// el grosor de los contornos usados sera un valor variable que tendera  crecer
  stroke(0);//el color del contorno de los cuadrados sera negro
  fill(#0935DE);//el color del relleno de los cuadrados sera azul 
  rect(350, c, 350, 350);// el cuadrado se empezara dibujando desde la mitad del eje x
  //y la octava parte del eje y
  rect(c, 175, 350, 350);// el cuadrado se empezara dibujando desde la octava parte del eje x
  //y la mitad del eje y
  stroke(255, 0, 0);// el color del punto sera rojo)
  point(x,y);//el punto partira en la cordenada 0 de ambos ejes pero se dibujara una y otra
  //vez hacia la direccion positiva de ambos ejes haciendo un efecto parecido al de una proyeccion.
  noStroke();// el circulo no tendra contorno
  fill(#F6FF00);// el circulo sera amarillo
  ellipse(250, 350, y, y);// el circulo crecera en tamano gracias a la funcion de abajo.
   y = x ++;// la funcion hara que y vaya aumentando partiendo desde el valor de x que es 0
    }