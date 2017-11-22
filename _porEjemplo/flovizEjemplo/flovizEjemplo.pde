//Universidad del Desarrollo
//Facultad de Diseño
//Expresión Digital II
//Ejercicio Por Ejemplo
//Miércoles 8, noviembre, 2017
//Florencia Vizcaya Benítez

int condicion;

void setup(){
  condicion = 0;
  size(500,500);
  smooth();
}

void draw(){
  background(200);
  noFill();
  strokeWeight(20);
  ellipse(250,250,100,100);
  ellipse(250,250,50,50);
  point(250,250);
  
  switch(condicion){
    case 0:
      stroke(#C61E1E);
    break;
    case 1:
      stroke(#1EC6C2);
    break;
    case 2:
      stroke(#32B787);
    break;
    default:
      stroke(#B7AA32);
    break;
  }
  if(mouseX<250 && mouseY<250){
    condicion = 0; 
  }
  if(mouseX>250 && mouseY<250){
    condicion = 1; 
  }
  if(mouseX<250 && mouseY>250){
    condicion = 2; 
  }
  if(mouseX>250 && mouseY>250){
    condicion = 8; 
  }
}