/*Joaquín Domínguez - Expresión Digital II - s10t00*/
Joaquin[]n = new Joaquin [25]; //se llama a un espacio en la memoria para 25 elementos

void setup() {
  size(800, 800); //tamaño del canvas
  frameRate(120); //tasa de cuadros por segundo
  
  for (int i = 0; i < n.length; i++) {
    
    n[i] = new Joaquin(400, 400); // se crean los elementos de la lista
    
  }
}
void draw() {
  background(255);
  for (int i = 0; i < n.length; i++) {
    n[i].pokebola(); // se muestran los elementos de la lista
  }
}