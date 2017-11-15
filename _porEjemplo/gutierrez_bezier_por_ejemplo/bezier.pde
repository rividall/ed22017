float w,x,y,z;
float movimientox,movimientoy;
void setup(){
size(1020,730);
w=100;
z=720;
}
void draw(){
background(255);
noFill();
strokeWeight(1);
stroke(255, 102, 0);
line(650, 200, w, w);
line(z, z, 150, 650);
line(w,w,z,z);
stroke(0, 0, 0);
bezier(650, 200, w, w, z, z, 150, 650);
strokeWeight(10);
stroke(255,0,0);
point(650,200);
stroke(0,255,0);
point(w,w);
point(z,z);
stroke(255,0,0);
point(150,650);
w++;
z--;
  
// una buena forma de visualizarlo es que mientras mas se separe los puntos
//verdes de los puntos rojos(las anclas) la curva sera mas pronuciada.
}