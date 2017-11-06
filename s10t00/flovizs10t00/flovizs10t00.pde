Flo [] Pelotas = new Flo[50]; // nuevo datatype :D


void setup() {
  size(600, 600);
  
  for (int i=0; i < Pelotas.length; i++){
   Pelotas[i] = new Flo((int)random(600), (int)random(50)); 
  }
}

void draw() {
  background(51);
  for (int i=0; i < Pelotas.length; i++){
  Pelotas[i].movimiento();
  Pelotas[i].dibujo();
  Pelotas[i].keyPressed();
  
  }
}