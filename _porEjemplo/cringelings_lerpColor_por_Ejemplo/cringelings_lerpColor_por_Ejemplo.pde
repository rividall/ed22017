// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II
// cringelings - lerpcolor

/*
 lerpColor calcula uno o más colores entre dos coloresen un incremento específico.
 El parámetro o variable es la cantidad que se debe interponer/introducir
 entre los dos valores en el cual 0.0 es igual al primer punto o parámetro,
 0.1 está situado bastante cerca del primer punto, 0.5 es la mitad,
 y así hasta llegar a 1.0 */

/*
 El parámetro o calor de amt es la cantidad que se interpola entre
 los dos valores en el cual 0.0 es c1, c2 es 1.0 y 0.5 es la mitad.
 Si se tiene un valor menor a 0 se efectuará como 0 al igual que los
 valores mayores a 1, se limitarán solo a 1
 */

/*
 Es un comportamiento diferente a lerp(); pero al mismo tiempo
 necesario ya que cierto número fuera de rango, mostrarían colores
 extraños o inesperados.
 */


/*
 Parámetros a utilizar:
 c1 - int - Valor de color 1 - Interpolar desde este color.
 c2 - int - Valor de color 2 - Interpola hasta este color - Interpolar a este color.
 cantidad (amt: amount)- float - Es un numero cualquiera entre 0.0 y 1.0.
 
 Sintaxis:
 lerpColor(c2, c2, amt);
 */

/*
 colorMode(); Cambia la forma en que el procesamiento interpreta los datos de color.
 Color HSB: Define colores en función de las tres propiedades del color:
 Matiz.
 Luminosidad.
 Saturación.
 Color RGB: Modelo de color basado en la síntesis aditiva. Sus siglas en inglés son:
 R: Red.
 G: Green.
 B: Blue.
 */

color c1;
color c2;
float n = 0;

void setup() {
  size(500, 400);
  colorMode(HSB, 100);

  c1 = color(random(100), 100, 100);
  c2 = color(random(100), 100, 30);

  /* 
   Para ejemplo inicial
   fill(c1);
   rect(0, 0, width, 20);
   
   fill(c2);
   rect(0, height-20, width, 20);
   */

  /*  
   c1 = color(r, g, b);
   c2 = color(r, g, b);
   random(100) = random, se elige uno entre 100 colores.
   Diferentes colores random o pueden ser el mismo color pero uno más oscuro.
   c1 = color(random(100), 100, 100); b = más claro.
   c2 = color(random(100), 100, 30);  b = más oscuro.
   */


  //for loop Que vaya desde arriba del canvas hacia la base del canvas.
  for (int y = 0; y < height; y++) {        // y = top
    color newc = lerpColor(c1, c2, n);      // Para amt, se necesita una variable float entre 0.0 y 1.0
    stroke(newc);                           // new c = new color entre c1 y c1.
    line(0, y, width, y);
    n += 0.01;
  }
}

void draw() {
}


/* Al verse extraño, medio cortado, se le agrega un map, el cual hace que se vea una desgradación más conforme y lineal
 Otro Programa Processing cringelings_lerpColor_por_Ejemplo1)
 */