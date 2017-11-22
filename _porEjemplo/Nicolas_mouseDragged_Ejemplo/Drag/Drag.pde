
float x = 250;
float y = 250;
int bs = 20;
boolean wow_a = false;
boolean wow_b = false;

void setup()
{
  size(500,500);
  smooth();
  background(255);
}
 
void draw()
{

 // Si el cursor esta en el ellipse este cambia a color rojo y se esta afuera del ellipse este cambia a un color amarillo
  if (mouseX > x-bs && mouseX < x+bs && 
      mouseY > y-bs && mouseY < y+bs) {
    wow_a = true;  
    if(!wow_b) { 
      stroke(#d75252); 
      fill(#d75252);
    } 
  } else {
    stroke(#efe35e);
    fill(#efe35e);
    wow_a = false;
  }
  // se dibuja el ellipse
   ellipse(x,y,50,50);
  
}
 
void mouseDragged()
{
  // calcula la distancia desde el mouse x, y ubicación a la corriente
   // a la posición actual de la elipse
 
  float d = dist(x, y, mouseX, mouseY);
 
  // si la distancia está dentro del rango, entonces establece la posición x, y
   // a la posición x, y del mouse y actualiza la posición de la elipse en
   //la pantalla
 
  if (d<25){
      x=mouseX;
      y=mouseY;
      background(255);
      ellipse(x,y,50,50);
  }
   wow_b = false;
}  