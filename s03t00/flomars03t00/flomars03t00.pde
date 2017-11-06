//Universidad del Desarrollo
//Diseño digital
//6 de septiembre, 2017
//Florencia Martínez V.

int x, y; //se declaran las variebles enteras
float velx, vely; // se declaran las variables de velocidad
color blanco, negro, verde, naranjo; // colores

void setup() { //inicio ambito set up
  size (500, 500); //tamaño de canvas
  x = 45; //se inicializa x con su valor
  y = 45; //se inicializa y con su valor
  velx = random(4); //identifico valor de velocidad de x 
  vely = 5; //identifico valor de velocidad de y

  blanco = color(255, 255, 255); //identifico color de la variable "blanco"
  negro = color(0, 0, 0); //identifico color de la variable "negro"
  naranjo = color(255, 132, 0); //identifico color de la variable "naranjo"
  verde = color(118, 255, 215); //identifico color de la variable "verde"
}

void draw() { //comienza a dibujar

  background(142, 142, 142); //defino color de fondo

// dibujo rect con grosor y color de borde y relleno
  stroke(blanco);
  strokeWeight(10);
  fill(verde);
  rect(10, 10, 480, 480); 

// dibujo rect con grosor y color de borde y relleno
  stroke(negro);
  strokeWeight(5);
  fill(naranjo);
  rect(100, 100, 300, 300);

// dibujo ellipse con grosor y color de borde y relleno
  stroke(naranjo);
  strokeWeight(2);
  fill(verde);
  ellipse(x, y, 30, 30);

  x += velx; //defino aumento de valor de x
  y += vely; //defino aumento de valor de y
  
   if (y > 480|| y < 15) {  //condicional, si y es mayor al tamaño del rect grande o si es menor al mismo, se invierte la velocidad
    vely *=-1; 
  }
   else if (x > 480|| x < 20) { //y si x es mayor al tamaño del rect grande o si es menor al mismo, tambien se invierte la velocidad
    velx *= -1;
   }
  if (y > 480|| y < 15|| x > 480|| x < 20){ //condicional, si y y x es mayor al tamaño del rect grande o si son menor al mismo, se cambia el relleno y contorno de la ellipse
    fill(255, 0, 0);
    // si la elipse se mueve siempre, no debes dibujar otra encima.
    ellipse (x, y, 50, 50);
    
  }
  if (y > 480|| y < 15|| x > 480|| x < 20){ //condicional, si y o x es mayor al tamaño del rect grande o si son menor al mismo, se cambia el color del contorno del rect mas grande
 blanco= negro;
 }
  if (y > 90 && x > 90){ //condicional, si y es mayor al tamaño del rect chico y si x es mayor al mismo, cambia de color y contorno la ellipse
    // solo debes cambiar el valor de la variable
    fill(verde);
    stroke(naranjo);
    
  }
   else if ( y < 290|| x < 290){ // si x es menor al tamaño del rect chico o si x es menor al mismo, cambia de color y contorno la ellipse
    // solo debes cambiar el valor de la variable
    fill(naranjo);
    stroke(verde);
    ellipse(x, y, 40, 40);
   }
 } 