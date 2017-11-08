PFont fuente; // fuente declarada

void setup() {
  size(500, 500);
  fuente = loadFont("Adam-48.vlw"); // fuente inicializada
}

void draw() {
  background(0);
  textSize(32); // tamaño fuente
  textFont(fuente); // fuente
  text("word", 12, 60); // texto
}