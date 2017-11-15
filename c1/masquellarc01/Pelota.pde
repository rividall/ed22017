 class Pelota {
   //atributos
   // la clase debe tener atributos propios que no sean parte
   // del programa general.

 //constructor
  Pelota() {

  }
  //metodos
  // Se crea pelota con sombra del color
  void pelota1(float i,float g,float b,color r){
  noStroke();
  stroke(0);
  fill(#ffffc0);
  rect(i,g,b,b);
  fill(r);
  ellipse(i,g,b,b);


  }

}
