/*
Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 
 6to semestre - Expresión Digital II - 
 
 Sofía Oller Vidal 
 s05t00
 
 Se le pide al alumno diseñar tres funciones con complejidad y control formal y estético,
 incorporando boolean a la interación del programa y funciones.
 Al correr el programa podrán ver a primera vista las tres funciones creadas llamadas, 
 cruz, diagonales y circulos, una al lado de la otra. Las cuales al presionar la tecla 
 "c" cambiaran de color, y de ubicación, siendo de la siguiente la menera. Si la función
 cruz estaba a la izquierda pasa a la derecha, la función diagonales pasa del centro a 
 la izquierda y por último la función circulos pasa de la derecha al centro.
 ------
 */
color rosado, celeste, negro, blanco; // Se declaran los distintos colores a usar.
boolean c; // Se declara la variable boolean.
int x; // Declaración de variable x.
int y; // Declaración de variable y.

void setup() { // Inicialización de configuración
  size(1200, 400); // Inicialización del tamaño al canvas.

  rosado = color (#E866F7); // Inicialización del color rosado.
  celeste = color (#73DDFC); // Inicialización del color celeste.
  negro = color(#050505 ); // Inicialización del color negro.
  blanco = color(#FFFFFF ); // Inicialización del color blanco.

  x = 200; // Inicialización de vairable x con su respectivo valor.
  y = 200; // Inicialización de variable y con su respectivo valor.

  c = true; // Inicialización de variable c con su respectivo valor.
}

void draw() { // Inicialización de área de dibujo.
  background(negro); // Se dibuja el color del fondo para el canvas.
  // Boolean 
  if (c) { // Si c, que es lo mismo que verdadero, se dibujarán las siguientes funciones.
    cruz(200, 200, blanco, negro, celeste); // Se dibuja función cruz.
    diagonales(200, 200, rosado, celeste, negro); // Se dibuja función diagonales.
    circulos(200, 200, rosado, celeste, blanco); // Se dibuja función circulos.
  }
  if (!c) { // Pero si c es falsa, se dibujarán las siguientes funciones.
    cruz(1000, 200, rosado, celeste, negro); // Se dibuja la función cruz.
    diagonales(-200, 200, blanco, negro, celeste); // Se dibuja la función diagonales.
    circulos(-200, 200, negro, celeste, negro); // Se dibuja la función circulos.
  }
}

void cruz(int x, int y, color b, color n, color c) { // Se inicializa la función cruz.
  // Ellipses
  noStroke(); // Se indica que no se requiere del borde.
  fill(c); // Se indica el color de relleno.
  ellipse(x, y, 300, 300); // Se dibuja ellipse.

  noStroke(); // Se indica que no se requiere de la línea.
  fill(b); // Se indica el color de relleno.
  ellipse(x, y, 200, 200); // Se dibuja ellipse.

  noStroke(); // Se indica que no se requiere de la línea.
  fill(c); // Se indica el color de relleno.
  ellipse(x, y, 100, 100); // Se dibuja ellipse.

  // Línea vertical.
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x, y -200, x, y +200); // Se dibuja la línea.

  // Línea horizontal.
  stroke(c); // Se indica el color de la línea. 
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x -200, y, x +200, y); // Se dibuja la línea.
}

void diagonales (int x, int y, color r, color c, color n) { // Se inicializa función 
                                                            // diagonales.
  // Línea vertical.
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x +400, y -200, x +400, y +200); // Se dibuja la línea.

  // Línea horizoantal.
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x -200, y, x +650, y); // Se dibuja la línea.

  // Línea diagonal derecha - izquierda.
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x +600, y -200, x +200, y +200); // Se dibuja la línea.

  // Línea diagonal izquierda - derecha.
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x +200, y -200, x +600, y +200); // Se dibuja la línea.

  // Ellipses.
  noStroke(); // Se indica que no se requiere el borde de la ellipse
  fill(r); // Se indica el color de la ellipse.
  ellipse(x +400, y, 200, 200); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere el borde de la ellipse
  fill(n); // Se indica el color de la ellipse.
  ellipse(x +400, y, 100, 100); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere el borde de la ellipse
  fill(r); // Se indica el color de la ellipse.
  ellipse(x +400, y, 50, 50); // Se dibuja la ellipse.
}

void circulos(int x, int y, color r, color c, color b) {  // Se inicializa la función 
                                                         //circulos.
  //Línea horizontal
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x +650, y, x +950, y); // Se dibuja la línea.

  //Línea vertical
  stroke(c); // Se indica el color de la línea.
  strokeWeight(15); // Se indica el tamaño de la línea.
  line(x +800, y -150, x +800, y +150 ); // Se dibuja la línea.

  //Quad
  stroke(b); // Se indica el color del borde.
  strokeWeight(15); // Se indica el tamaño del borde.
  noFill(); // Se indica que en este caso no se necesita relleno.
  quad(x +650, y -150, x +950, y -150, x +950, y +150, x +650, y +150); // Se dibuja el 
                                                                        //quad.

  //Ellipses
  noStroke(); // Se indica que no se requiere del borde.
  fill(r); // Se indica el color de relleno.
  ellipse(x +650, y -150, 100, 100); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(r); // Se indica el color de relleno.
  ellipse(x +950, y -150, 100, 100); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(r); // Se indica el color de relleno.
  ellipse(x +950, y +150, 100, 100); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(r); // Se indica el color de relleno.
  ellipse(x +650, y +150, 100, 100); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(b); // Se indica el color de relleno.
  ellipse(x +650, y -150, 50, 50); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(b); // Se indica el color de relleno.
  ellipse(x +950, y -150, 50, 50); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(b); // Se indica el color de relleno.
  ellipse(x +950, y +150, 50, 50); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(b); // Se indica el color de relleno.
  ellipse(x +650, y +150, 50, 50); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(c); // Se indica el color de relleno.
  ellipse(x +800, y, 200, 200); // Se dibuja la ellipse.

  noStroke(); // Se indica que no se requiere del borde.
  fill(b); // Se indica el color de relleno.
  ellipse(x +800, y, 100, 100); // Se dibuja la ellipse.
}

void keyPressed() { // Se da inicio a las variables de teclas.
  if (key == 'c') // Si la tecla es igual a la que se presiona, se cambiarán las 
                  //funciones
    c = (!c);
}