//Inicio de la clase "OndasNieve"
class Nieve { 
//variables
int Cuantos = 400; // variable entero 400
float[] x = new float[Cuantos]; // nuevo datatype en forma de array
float[] y = new float[Cuantos];
float[] velocidad = new float[Cuantos];
 
// Constructor
Nieve(){
 
  int i = 0;           // le asigno x[i], y[i],velocidad[i] random dentro de parametros controlados
  while (i<Cuantos) {
    x[i] = random(0, width);
    y[i] =random(0, height);
    velocidad[i] = random(1,5);  
    i +=1;
  }
}
// Métodos
void caida() {    // movimiento caida 

background(0);
  
 
 
  int i = 0;
  while (i < Cuantos) {
    fill(#ffffff);
    ellipse(x[i], y[i],velocidad[i],velocidad[i]); // como velocidad , hight , width es random dentro de unos parametros , crea la ilusión de que la nieve esta en perspectiva 
    y[i] += velocidad[i]/1+map(mouseY,0,height,0,10);  // la velocidad es manipulado por el map, es controlado por el mouseY
    if (y[i] > height) {
      y[i] = 0;
    }
    i +=1;
  }
}}