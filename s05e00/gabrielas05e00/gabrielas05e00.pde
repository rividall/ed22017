// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// gabrielas05e00


int x, y;                                                               // Se declara varibales x e y
color turqueza, blanco, verde, negro;                                   // Se declaran las variables de color

// Inicialización del ámbito de configuración
void setup() {

  size(1000, 400);                                                       // Tamaño del canvas es de 400 px x 400px
  turqueza = (#3FC9BC);                                                 // Se le da valor al color turqueza
  blanco = (#FFFFFF);                                                   // Se le da valor al color blanco
  verde = (#9FE57D);                                                    // Se le da valor al color verde
  negro =(#000000);                                                     // Se le da valor al color negro
}
// Fin del ámbito de configuración

// Inicialización ámbito de dibujo
void draw() {
  // background();
  linea(0, 0, turqueza);
}
// Fin del ámbito de dibujo


// Inicialización del ámbit
void linea(int x, int y, color turqueza) {

  // Comienza las lineas horizontales de color verde

  stroke(verde);
  strokeWeight(13);
  line(x, y, 400, 0);

  stroke(verde);
  strokeWeight(13);
  line(x, 26, 400, 26);

  stroke(verde);
  strokeWeight(13);
  line(x, 52, 400, 52);

  stroke(verde);
  strokeWeight(13);
  line(x, 78, 400, 78);

  stroke(verde);
  strokeWeight(13);
  line(x, 104, 400, 104);

  stroke(verde);
  strokeWeight(13);
  line(x, 130, 400, 130);

  stroke(verde);
  strokeWeight(13);
  line(x, 156, 400, 156);

  stroke(verde);
  strokeWeight(13);
  line(x, 182, 400, 182);

  stroke(verde);
  strokeWeight(13);
  line(x, 208, 400, 208);

  stroke(verde);
  strokeWeight(13);
  line(x, 234, 400, 234);

  stroke(verde);
  strokeWeight(13);
  line(x, 260, 400, 260);

  stroke(verde);
  strokeWeight(13);
  line(x, 286, 400, 286);

  stroke(verde);
  strokeWeight(13);
  line(x, 312, 400, 312);

  stroke(verde);
  strokeWeight(13);
  line(x, 338, 400, 338);

  stroke(verde);
  strokeWeight(13);
  line(x, 364, 400, 364);

  stroke(verde);
  strokeWeight(13);
  line(x, 390, 400, 390);

  // Comienza las lineas verticales de color turqueza
  stroke(turqueza);
  strokeWeight(13);
  line(x, y, 0, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(26, y, 26, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(52, y, 52, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(78, y, 78, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(104, y, 104, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(130, y, 130, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(156, y, 156, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(182, y, 182, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(208, y, 208, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(234, y, 234, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(260, y, 260, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(286, y, 286, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(312, y, 312, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(338, y, 338, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(364, y, 364, 400);

  stroke(turqueza);
  strokeWeight(13);
  line(390, y, 390, 400);

  fill(turqueza);
  noStroke();
  ellipse(500, 300, 120, 120);
  fill(verde);
  stroke(negro);
  strokeWeight(3);
  ellipse(500, 300, 90, 90);

  fill(verde);
  noStroke();
  ellipse(500, 120, 120, 120);
  fill(turqueza);
  stroke(negro);
  strokeWeight(3);
  ellipse(500, 120, 90, 90);


  fill(turqueza);
  noStroke();
  triangle(900, 75, 800, 20, 700, 75);
  fill(verde);
  noStroke();
  triangle(900, 120, 800, 65, 700, 120);
  fill(turqueza);
  stroke(negro);
  strokeWeight(1);
  triangle(900, 165, 800, 110, 700, 165);
  fill(verde);
  stroke(negro);
  strokeWeight(1);
  triangle(900, 210, 800, 155, 700, 210);
  
  fill(blanco);
  stroke(verde);
  strokeWeight(2.5);
  rect(760, 212, 80, 80) ;
}

// Fin del ámbito 