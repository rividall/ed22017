// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Natalia Malsch Coelho
// 3 funciones diferentes que se modifican por color y grosor de línea

color verde, burdeo, blanco;
boolean a;//para flor
boolean b;//para cuadrados
boolean aa;//para círculos
boolean bb;//para diamante
float number = 1;//entero para modificar grosor
float chng = 1;//el cambio será por 1

void setup() {
  size(900, 500);//tamaño canvas
  background(255);//color fondo blanco
  fill(000);//relleno triángulos negro
  
  burdeo = color(#751212);//define tono de color
  verde = color(#D7F283);//define tono de color
  blanco = color(#FFFFFF);//define tono de color
  
  a = true;
  b = true;
  aa = true;
  bb = true;
  
  triangle(0, 0, 450, 500, 0, 500);//triángulo de fondo negro
  triangle(900, 0, 900, 500, 450, 500);//triángulo de fondo negro
}

void diamante(color burdeo) {
  stroke(burdeo); //color líena burdeo
  strokeWeight(number); //grosor líena cambia al presionar mouse
  quad(136, 252, 186,302, 136, 352, 86,302);//cordenadas forman quad
  quad(190, 307, 240,356, 190, 407, 140,356);//cordenadas forman quad
  quad(136, 361, 186, 411, 136, 461, 86,411);//cordenadas forman quad
  quad(82, 306, 131,356, 82, 406, 31,356);//cordenadas forman quad
  
}

void cuadrado(color burdeo) {
  noFill();//sin relleno
  stroke(burdeo);// color líena burdeo
  strokeWeight(2);//grosor línea
  rect(350, 50, 200, 200);//posición y tamaño cuadrado
  rect(380, 80, 140, 140);//posición y tamaño cuadrado
  rect(400, 100, 100, 100);//posición y tamaño cuadrado
  rect(415, 115, 70, 70);//posición y tamaño cuadrado
  rect(425, 125, 50, 50);//posición y tamaño cuadrado
  rect(433, 133, 35, 35);//posición y tamaño cuadrado
  rect(439, 139, 23, 23);//posición y tamaño cuadrado
}

void circulo(color verde) {
  noFill(); //sin relleno figura
  stroke(verde); // color líena verde
  strokeWeight(2);// grosor líea
  ellipse(450, 150, 200, 200);//posición y tamaño elipse
  ellipse(450, 150, 140, 140);//posición y tamaño elipse
  ellipse(450, 150, 100, 100);//posición y tamaño elipse
  ellipse(450, 150, 70, 70);//posición y tamaño elipse
  ellipse(450, 150, 50, 50);//posición y tamaño elipse
  ellipse(450, 150, 34, 34);//posición y tamaño elipse
  ellipse(450, 150, 22, 22);//posición y tamaño elipse
}

void flor(color verde) {
  noFill();//sin relleno figura 
  stroke(verde);// color líena verde
  strokeWeight(number);//grosor línea cambia al presionar mouse
  ellipse(708, 365, 100, 100);//posición y tamaño elipse
  ellipse(788, 305, 100, 100);//posición y tamaño elipse
  ellipse(800, 403, 100, 100);//posición y tamaño elipse
  ellipse(822, 343, 100, 100);//posición y tamaño elipse
  ellipse(728, 314, 100, 100);//posición y tamaño elipse
  ellipse(750, 410, 100, 100);//posición y tamaño elipse
}

void draw() {
  if (a) {// si a es lo mismo que verdadero
    flor(verde);//la flor es color verde
  }
  if (!a) {//pero si a es falso
    flor(burdeo);//la flor pasa a ser color burdeo
  }
    
    
  if (b) {// si b es lo mismo que verdadero
    cuadrado(burdeo);//el cuadrado es color burdeo
  }
  if (!b) {//pero si b es falso
    cuadrado(blanco);//el cuadrado pasa a ser color blanco
  }
    
  
   if (aa) {// si aa es lo mismo que verdadero
    circulo(verde);//el círculo es color verde
  }
  if (!aa) {//pero si aa es falso
    circulo(blanco);//el círculo pasa a ser color blanco
  }
  
  
  if (bb) {// si bb es lo mismo que verdadero
    diamante(burdeo);//el diamante es color burdeo
  }
  if (!bb) {//pero si bb es falso
    diamante(verde);//el diamante pasa a ser color verde
  }
  
  println(number);
}

void keyPressed() {
  if(key == 'c')//si presiono c
   a = (!a);//verdadero pasa a falso, cambio de color
   
  if(key == 'x')//si presiono x
   b = (!b);//verdadero pasa a falso, aparece y desaparece cuadrado
   
  if(key == 'z')//si presiono z
   aa = (!aa);//verdadero pasa a falso, aparece y desaparece circulo
   
  if(key == 'c')//si presiono c
  bb = (!bb);//verdadero pasa a falso, cambio de color
}
 void mousePressed() {
   if(number >5 || number <1) {//si el núm. es mayor que 5 o menor 1
     chng = chng*-1;//entonces este se multiplica por -1
   }
   number += chng;//cada vez suma 1 o disminuye 1
 }