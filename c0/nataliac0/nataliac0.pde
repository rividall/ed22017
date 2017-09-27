// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital.
// Natalia Malsch Coelho
/*
Mi certamen se trata de un fondo que se rellena con la función for,
logrando una textura de dos colores, esta textura también se puede ver una vez
que se hace clic en el mouse que pasa a ser negro.
Al mover el mouse deforma esfera según movimiento en eje x e y.
Por último al apretar "a" y "s" se forman triángulos blancos y negros que
terminan de componer mi fondo.
*/


void setup () {
  size(500, 500); //tamaño canvas
  background(#000000); // fondo negro
  triangle(0, 0, 500, 0, 500, 500); //triángulo divide canvas por la mitad
}
void draw () {
  for (int i = 0; i < 500; i += 10) { //primero marca punto de inicio de primera fila (0), i llega hasta los 500 y la distancia entre cada uno son 10
    stroke(#000000); //lineas color negro
    strokeWeight(0.5); //lineas grosor 0.5
    line(0, i, 500, i); //parte en el punto 0 (eje x) y termine en el 500 (eje x)
  }

  for (int j = 5; j < 495; j += 10) { //primero marca punto de inicio de primera fila (5), i llega hasta los 495 y la distancia entre cada uno son 10
    stroke(#FFFFFF);//lineas color blancas
    strokeWeight(0.5);//grosor de lineas
    line(0, j, 500, j); //parte en el punto 0 (eje x) y termine en el 500 (eje x)
  }
  stroke(#FFFFFF); //pelota que sigue mouse borde blanco
  strokeWeight(4); //grosor borde pelota que sigue mouse
  fill(#000000); //relleno color negro pelta que sigue mouse
  ellipse(width/2, height/2, mouseY, mouseX);// pelota que esta en la mitad del canvas y crece según movimiento de mouse en canvas

}

void mousePressed() {
  background(#000000); //presión del mouse fondo negro
}

void keyPressed () {
  if (key == 'a') { //al apretar "a" aparece triangulos negro en triángulo blanco
    fill(#000000);//triángulo relleno color negro
    strokeWeight(2); // grosor del borde
    stroke(#000000); //color del borde
    // println("tri-negro"); //se esccribe en la consola
    triangle(50, 30, 70, 30, 70, 50);//puntos del triángulo de arriba
    triangle(450, 430, 470, 430, 470, 450);//puntos del triángulo de abajo
  }

  if (key =='s') { //al apretar "s" aparece triangulos blancos en triángulo negro
    fill(#FFFFFF);//relleno color blanco
    strokeWeight(2); // grosor del borde
    stroke(#FFFFFF); //color borde blanco
    // println("tri-blanco"); //se esccribe en la consola
    triangle(30, 50, 50, 70, 30, 70); //puntos del triángulo de arriba
    triangle(430, 450, 450, 470, 430, 470); //puntos del triágulo de abajo
  }
}
