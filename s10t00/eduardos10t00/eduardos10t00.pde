//Universidad del Desarrollo
//Diseño Digital
//Expresión Digital II

// variables
edo [] cuadrados = new edo[5];   //se declara array

void setup() {
  size(600, 400);    //tamaño del lienzo
  
  for (int i=0; i < cuadrados.length; i++) {   //se inicia array
    cuadrados[i] = new edo();          
  }
}

void draw() {
  background(#313131);        //color de fondo
  //println(mouseX, mouseY); 
  
  
  
  
  for (int i=0; i < cuadrados.length; i++) {
    cuadrados[i].movimiento();  //se inicia la funcion de movimiento
    cuadrados[i].circulo();    //se dibuja la funcion circulo
    cuadrados[i].raton();     //se inicia el keyPressed
  }
}