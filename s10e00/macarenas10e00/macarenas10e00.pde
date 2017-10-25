// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// s10 ejercicio 00
//Macarena m;
Macarena[] m = new Macarena[40];

void setup() {
  size(500, 500);
  //m = new Macarena();
  for (int i = 0; i < m.length; i ++) {
    m[i] = new Macarena();
  }
}

void draw() {
  background(#050505);
  //m.reloj();
  for (int i = 0; i < m.length; i ++) {
    m[i].reloj();
    m[i].movimiento();
  }
}