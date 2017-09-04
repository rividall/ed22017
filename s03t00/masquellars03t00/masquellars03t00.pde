float x, y;//se nombran las variables 
float vely, velx;// se nombran las variables
color myColor;

  void setup() {
  size(500, 500);// se crea el tamaño del lienzo
  y=125;
  vely = 4;// se identifica lo valores de velx
  x = 125;
  velx = random(3,6);
  myColor = #AA4225;
}

void draw() {
  //background(255); // se declara el color del fondo
  fill(#050505);
  rect(375,250,width/4,height/4);
  
   fill(#050505);
  rect(250,375,width/4,height/4);
  
   fill(#050505);
  rect(125,375,width/4,height/4);
  
  fill(#050505);
  rect(0,250,width/4,height/4);
  
  fill(#050505);
  rect(250,0,width/4,height/4);
  
  fill(#050505);
  rect(375,125,width/4,height/4);
  
    fill(#050505);
  rect(0,125,width/4,height/4);
  
    fill(#050505);
  rect(125,0,width/4,height/4);
  

  fill(myColor); //declara el color del eclipse
  noStroke(); //eclipse sin borde
  ellipse(x, y, 10, 10); // se dibuja el eclipse
  
  
  if (y > 375|| y < 125) { //si x es mayor a al ancho o es menos a 0, la velocidad de x 
    vely *=-1; //se invierte
  }
   else if (x > 375|| x < 125) {
    velx *= -1;

   }
    if (x > 250 && y > 250 ||  y < 250 && x < 250) {
      myColor = #058789;//verde
  }
   else if( y < 250 && x > 250 || x < 250 && y > 250){ 
   myColor =  #AA4225;//rojo
 }


  y += vely; // x aumenta su valor
  x += velx;
}