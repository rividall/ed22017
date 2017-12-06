//variables
boolean potito;
Victor n; //nuevo datatype

void setup(){
  size(500, 500);
  n = new Victor();
  
}

void draw(){
  background(0);
  n.function();
  n.movimiento();
  if(potito){
  n.onda(100, frameCount * 0.1);}
  if(!potito){
    n.depana();
  

}
}
  void keyPressed(){
    
   potito = !potito;
  
  
  }