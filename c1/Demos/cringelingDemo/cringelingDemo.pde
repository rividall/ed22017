// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II
// cringelings10t00


/*
En un canvas de (500, 500), al correr el programa se verá una ellipse rebotando
aleatoriamente con un random de 2 o más colores azules (lerpColor)(colores[0] = #70B1D1;
colores[1] = #2C8DBC; (si agrego un 3er color, colores[2] = #114B67;) y utilizando
un array (color[] colores = new color [2]; - color[] colores = new color [3];)
*/

/*
Cata: lo que escribí abajo es una función en la clase Catalina que cambia de color random
entre los colores que hiciste colores[0] ó colores[1]
Haré que los colores cambien con el keyPressed para que veas el cambio
*/

Catalina c;
void setup() {
  size(500, 500);
  c = new Catalina();
}


void draw() {
  background(253);
	c.show();
}

void keyPressed() {
  int r = (int)random(2);
  c.eleccionColor(r);
  println(r);
}
