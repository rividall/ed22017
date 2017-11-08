// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// s10 tarea 00

color negro; // declaración de variables de color

Macarena[] m = new Macarena[100];

void setup() { // inicio ámbito de configuración
  size(500, 500);
  noCursor();
  noFill();
  
  negro = color(#050505); // iniciación variable de color

  for (int i = 0; i < m.length; i ++) {
    m[i] = new Macarena();
  }
} // fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  background(negro);

  for (int i = 0; i < m.length; i ++) {
    m[i].todas();
  }
} // fin ámbito de dibujo