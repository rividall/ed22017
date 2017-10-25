//variables

Florencia n; //nuevo datatype
boolean hola;

void setup(){
  size(500, 500);
  n = new Florencia();
  
}

void draw(){
  //background(#B2FFE3);
  n.function();
  n.movimiento();
  
  if (hola){
    n.onda(5, frameCount * .05);
  }
  if (!hola){
    n.contra();
  }
}

void keyPressed(){
  if (key == ' '){
      hola = !hola;
  }
 
  
}