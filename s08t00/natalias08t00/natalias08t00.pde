// entregar lo mismo de tareas anteriores no es hacer una nueva tarea
// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Natalia Malsch Coelho
// conjunto de funciones

//Declarar conceptos que serán utilizados en las funciones

color verde, burdeo, blanco, negro;
boolean a;
boolean b;
boolean aa;
boolean bb;


int [] numeros = new int [5];
color [] colores = new color [3];

int eleccionNumeros;//array de numeros
int eleccionColores;//array de color

int p, q;
float fl;

void setup() {
  size(900, 500);//tamaño canvas
  //background(255);//color fondo blanco

  fl = 0.5;//para definir y utilizarlo para el grosor de líneas
   
  colores[0] = (#751212);//burdeo
  colores[1] = (#D7F283);//verde
  colores[2] = (#FFFFFF);//blanco

  numeros[0] = 40;
  numeros[1] = 80;
  numeros[2] = 120;
  numeros[3] = 160;
  numeros[4] = 200;

  println(eleccionNumeros);
  println(eleccionColores);

  a = true;
  b = true;
  aa = true;
  bb = true;
 
}

void draw() {
  background(000);//fondo negro
   /* este for es para las líneas horizontales*/
  for (int j=0; j<500; j +=10) { //primero marca punto de inicio de primera fila (0), 
    //i llega hasta 500 eje y e la distancia entre cada uno son 10
    stroke(colores[2]);//líneas color blancas
    strokeWeight(fl);//grosor de líneas 
    line (0, j, 900, j); //parte en el punto 0 (eje x) y termine en el 900 (eje x)
  }

  if (a) {// si a es lo mismo que verdadero
    flor(colores[1]);//la flor es color verde
  }
  else {//pero si a es falso
    flor(colores[0]);//la flor pasa a ser color burdeo
  }


  if (b) {// si b es lo mismo que verdadero
    cuadrado(colores[0]);//el cuadrado es color burdeo
  }
  else {//pero si b es falso
    cuadrado(colores[2]);//el cuadrado pasa a ser color blanco
  }
  
  if (aa) {// si aa es lo mismo que verdadero
    circulo(colores[1]);//el círculo es color verde
  }
  else {//pero si aa es falso
    circulo(colores[2]);//el círculo pasa a ser color blanco
  }
  
  if (bb) {
    elli(colores[eleccionColores], numeros[eleccionNumeros], numeros[eleccionNumeros]);
  }
  else {
    elli(colores[eleccionColores], numeros[eleccionNumeros], numeros[eleccionNumeros]);
  }
} 

void mousePressed() { //al hacer clic se ven las líneas verticales en el triángulo
  //este for es para las líneas verticales
for (int i = 0; i < 900; i += 10) { //primero marca punto de inicio de primera fila (0), i llega hasta los 500 y la distancia entre cada uno son 10
      stroke(#000000); //lineas color negro
      strokeWeight(fl); //lineas grosor 0.5
      line (i, 0, i, 500); //parte en el punto 0 (eje x) y termine en el 500 (eje x)
}
}

/*en está función se ve una circulo que cambia de color y tamaño de forma ramdom*/
void elli(color colores, int ancho, int alto) {
  fill(colores);
  noStroke();
  ellipse(130, 350, ancho, alto);
}

/*en esta función se muetran diversos cuadrados que debido al map cambia el grosor
del borde, estas aparecen y desaparecen al apretar una tecla y también tiene un
triángulo blanco de fondo*/
void cuadrado(color burdeo) {
  q = (int)map(mouseY, 0, width, 1, 5);
  fill(255);
  noStroke();
  triangle(0, 0, 450, 500, 900, 0);
  noFill();
  stroke(burdeo);
  strokeWeight(q);
  rect(350, 50, 200, 200);
  rect(380, 80, 140, 140);
  rect(400, 100, 100, 100);
  rect(415, 115, 70, 70);
  rect(425, 125, 50, 50);
  rect(433, 133, 35, 35);
  rect(439, 139, 23, 23);
}

/*en esta función se muetran diversos circulos que debido al map cambia el grosor
del borde, estas aparecen y desaparecen al apretar una tecla*/
void circulo(color verde) {
  q = (int)map(mouseY, 0, width, 1, 5);
  noFill(); 
  stroke(verde); 
  strokeWeight(q);
  ellipse(450, 150, 200, 200);
  ellipse(450, 150, 140, 140);
  ellipse(450, 150, 100, 100);
  ellipse(450, 150, 70, 70);
  ellipse(450, 150, 50, 50);
  ellipse(450, 150, 34, 34);
  ellipse(450, 150, 22, 22);
}

/*en esta función vemos una combinación de ellipses que forman una flor,
al mismo tiempo esta cambia de color y debido al map las líneas del borde estas
cambian de tamaño*/
void flor(color colores) {
  p = (int)map(mouseX, 0, width, 1, 15);
  noFill();
  stroke(colores);
  strokeWeight(p);
  ellipse(708, 365, 100, 100);
  ellipse(788, 305, 100, 100);
  ellipse(800, 403, 100, 100);
  ellipse(822, 343, 100, 100);
  ellipse(728, 314, 100, 100);
  ellipse(750, 410, 100, 100);
  
  
}

void keyPressed() {
  if (key == 'c')//si presiono c
    a = (!a);//verdadero pasa a falso, cambio de color

  if (key == 'x')//si presiono x
    b = (!b);//verdadero pasa a falso, aparece y desaparece cuadrado

  if (key == 'z')//si presiono z
    aa = (!aa);//verdadero pasa a falso, aparece y desaparece circulo

  if (key =='c') {//cambia de forma random el color y tamaño
    eleccionColores = (int)random(colores.length);
    eleccionNumeros = (int)random(numeros.length);
  }
}