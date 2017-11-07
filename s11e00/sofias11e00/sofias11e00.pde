/* Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - 
 Expresión Digital II - Sofía Oller Vidal - s11e00 */

Sofia s; //Se declara la clase

void setup() {
  size(500, 500);
  s = new Sofia();
}

void draw() {
  background(#000000);

  s.juntas(); //Se dibujan los métodos declarados en clase Sofia.
  s.ola(10, frameCount * .1); //Se dibuja el movimiento de los métodos.
}