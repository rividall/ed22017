// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// Elemento que al rebotar cambie de color, espesor de borde y tamañano

int x, y; // declaración de variables de posición enteras x, y
int a, l; // declaración de variables de tamaño enteras a, l
int vx, vy; // declaración de variables de velocidad enteras vx y vy
color amarillo, azul, negro, blanco; // declaración de variables de color
color c; // declaración de variable de color

void setup() { // inicio ámbito de configuración
  size(500, 500); // tamaño del Canvas de 500 px por 500 px
  x = 1; // iniciación variable de posición x
  vx = 3; // iniciación variable de velocidad vx

  y = 250; // iniciación variable de posición x
  vy = 8; // iniciación variable de velocidad vx

  a = 20; // iniciación variable de tamaño a
  l = 20; // iniciación variable de tamaño l

  amarillo = color(#F59F14); // iniciación variable de color
  azul = color(#14BAF5); // iniciación variable de color
  negro = color(#050505); // iniciación variable de color
  blanco = color(#FFFFFF); // iniciación variable de color
  c = color(0); // iniciación variable de color
  stroke(blanco); // las figuras tendrán un borde blanco
} // fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  background(negro); // fondo del canvas de color negro
  
  fill(amarillo); // relleno figura
  triangle(70, 40, 40, 40, 40, 70); // figura triángulo 
  
  fill(azul); // relleno figura
  triangle(430, 460, 460, 460, 460, 430); // figura triángulo 
  
  fill(c); // relleno de la figura 
  ellipse(x, y, a, l); // figura eclipse posicionado en x, y con un ancho a y largo l
  
  if (x > 500 || x < 0) { // si x es mayor a 500 o x es menor a 0 es verdadero
    vx *= -1; // velocidad x multiplicada -1
    c = color(amarillo); // cambia al color amarillo 
    // esta función debió trabajar igual que las variables de color
    strokeWeight(5); // grosor del borde en el eclipse
  } else if (y > 500 || y < 0) { // si y es mayor a 500 o y es menor que 0 es verdadero
    vy *= -1; // velocidad y multiplicada -1
    c = color(azul); // cambia al color azul
    strokeWeight(2); // grosor del borde en el eclipse
    l --; // el tamaño l disminuye de uno en uno
    a --; // el tamaño a disminuye de uno en uno
  } // fin condicional if
  
  fill(c); // relleno de la figura 
  rect(10, 10, a, l); // figura rectángulo 
  
  fill(c); // relleno de la figura 
  rect(10, 50, a, l); // figura rectángulo 1
  
  fill(c); // relleno de la figura 
  rect(50, 10, a, l); // figura rectángulo 2
  
  
  fill(c); // relleno de la figura 
  rect(470, 470, a, l); // figura rectángulo 3
  
  fill(c); // relleno de la figura 
  rect(470, 430, a, l); // figura rectángulo 4
  
  fill(c); // relleno de la figura 
  rect(430, 470, a, l); // figura rectángulo 5
 
  x += vx; // la posición x aumenta en la velocidad vx
  y += vy; // la posición y aumenta en la velocidad vy
  
}// fin ámbito de dibujo