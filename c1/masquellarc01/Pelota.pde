 class Pelota {
   //atributos
 
 
 //constructor
  Pelota() {
  
  }
  //metodos
  // Se crea pelota con sombra del color
  void pelota1(float i,float g,float b,color r){
  noStroke();
  fill(#ffffc0);
  rect(i,g,b,b);
  fill(r);
  ellipse(i,g,b,b);
  
 
  }

}