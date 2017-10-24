// Expresión Digital II - Diseño Digital - Universidad del Desarrollo 2017
// 06 de Septiembre del 2017
// Catalina Ringeling Selman
// s03t00cringelings

int a, b, velx, vely;             // Variables de Posición y Movimiento.
color azul, verde, ngr;           // Variables de Color.

void setup () {                   // void setup() se efectua al iniciarlo.
  size(500, 500);                 // Tamaño del Canvas. 
  a = 0;                          // Tamaño de la Variable a.
  b = 250;                        // Tamaño de la Variable b.
  velx = 2;                       // Variable de Velocidad.
  vely = 2;                       // Variable de Velocidad
  azul = #70B1D1;                 // azul es una variable de color: azul
  verde = #B3D170;                // verde es una variable de color: verde.
  ngr = 0;                        // ngr es una variable de color: negro.
  frameRate(b);                   // Se estableció la cantidad de Fotogramas por Segundo.
}

void draw() {                    // Se inicia el ámbito de dibujo.
  background(ngr);               // Fondo de color negro (ngr = 0;)
  stroke(azul); // debes cambiar el valor de la variable
  line(a, b, a + 15, b + 15);    // Tamaño y Posición de la Línea
  strokeWeight(15);              // Groso de la Línea
  
  if (a > width || a < 0) {      // Si a es mayor al width del canvas o menos que 0, este es verdadero
    velx *= -1;                  // Se multiplica la velocidad x -1
    stroke(azul);                // Color de Línea Azul.
  }
  
  if (b > height || b < 0){      // Si b es menor al height del canvas o mayor a 0, este es verdadero
    vely *= -1;                  // Se multiplica la velocidad x -1
    stroke(verde);               // Color de Línea Verde.

  }
  a += velx;                     // Se le suma al valor a el valor de la variable velx
  b += vely;                     // Se le suma al valor b el valor de la variable vely

}