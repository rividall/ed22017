class Natalia {

//atributo
float x, y, vx, vy, tam, diam, a;
color negro, blanco;

//constructor
Natalia(float tam) {
  x = 250;
  y = 250;
  vx = 3;
  vy = 3;
  negro = (#000000);
  blanco = (#FFFFFF);
  this.tam = tam;
}

//metodos
void domov(){
  donut();
  mov();
}

void donut() {
   stroke(negro);
   strokeWeight(3);
   noFill();
   ellipse(x, y, tam, tam);
}

void mov() {
 //x += vx;
 y += vy;

   if (x < 0 || x > 500) {  
    vx *= -1;           
}
 
   if (y < 50 || y > 450) { 
    vy *= -1;            
} 
}

  
void onda(float diam, float a) {
  x = 250 + diam * cos(a);
 }
}