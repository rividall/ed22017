//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II 
// Catalina Juez

// https://www.youtube.com/watch?v=TQ_WZU5s_VA&t=530s
/* En este ejemplo tendremos una pelota que se encuentra en constnte movimiento por el eje X, 
y que además parte su velocidad en 0 hasta llegar a 15.Y podemos restar o sumar su aceleración 
lo cual causa que este circulo se frene para que luego cambie la dirección en que se mueve.
*/
Cata [] n = new Cata [1];

void setup() {
  size (500, 500);
  for (int i = 0; i< n.length; i ++) {
    n[i] = new Cata();
  }
}

void draw() {
  background(176, 103, 163);
  for (int i = 0; i< n.length; i ++) {
    n[i].circulo();
    n[i].movimiento();
    n[i].repeticion();
    n[i].keyPressed();

  }
}