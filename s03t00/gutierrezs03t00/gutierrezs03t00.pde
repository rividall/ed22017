float circlex = 300;//poscicion inicial eje x
float circley = 20;//poscicion inicial eje y
float movex = -4;//pixeles que avanza por cada frame en el eje x
float movey = -4;//pixeles que avanza por cada frame en el eje y
int color1 = (#0935DE);//variable de color
int color2 = (#F6FF00);//variable de color
float color4 = (255);//variable de color
void setup() {
  size(700, 700);//tamano canvas
  stroke(0);//color del borde de la elipse
  strokeWeight(7);// grosor del borde de la elipse
}
void draw() {
  background(color4);//color del canvas
  ellipse(circlex, circley, 80, 80);//poscicion inicial y tamano de la elipse
  circlex = circlex + movex;//la poscicion inical de x va desplazandose 4 pixeles por el eje x
  circley = circley + movey;//la poscicion inical de y va desplazandose 4 pixeles por el eje y
  
  if(circlex > 653) {//si la elipse llega ha estar mas de 653 pixeles en el eje x
    circlex = 653;//entonces rebotara
    movex = -movex;//se devolvera
    fill(color1);// y cambiara de color
  }
    if(circley > 653) {//si la elipse llega ha estar mas de 653 pixeles en el eje y
    circley = 653;//entonces rebotara
    movey = -movey;//se devolvera
    fill(color2);// y cambiara de color
    }
    if(circlex < 47) {//si la elipse llega ha estar menos de 47 pixeles en el eje x
      circlex = 47;//entonces rebotara
      movex = -movex;//se devolvera
      fill(255,0,0);// y cambiara de color
    }
    if(circley < 47) {//si la elipse llega ha estar menos de 47 pixeles en el eje y
      circley = 47;//entonces rebotara
      movey = -movey;//se devolvera
      fill(color1);// y cambiara de color
    }
}  
   