class Natalia {
  float x, y, x2, y2, vx, vy, vx2, vy2, tam;
  color negro, blanco, burdeo, verde;

//constructor
Natalia (float tam){
 x = 130;
 y = 130;
 x2 = 380;
 y2 = 350;
 vx = random(-1,1);
 vy = random(-5,5);
 vx2 = random(-5,5);
 vy2 = random(-1,1);
 negro = (#000000);
 blanco = (#FFFFFF);
 burdeo = (#751212);
 verde = (#D7F283);
 this.tam = tam;

}

//metodos
void yang(){
movyang();
triyang();
}

//movimiento en el eje x es lento(-1,1) y eje y más rápido (-5,5)
void movyang() {
x += vx;
y += vy;

if (x < 0 || x > 500) { // si x es menor que 0 o x es mayor que 500
    vx *= -1;            // entonces la velocidad es -1
}
 
 if (y < 0 || y > 500) { // si y es menor que 0 o y es mayor que 500
    vy *= -1;            // entonces la velocidad es -1
}
}

//yang como triángulo, parte con movimiento vertical
void triyang(){
  stroke(burdeo);
  strokeWeight(8);
  noFill();
  triangle(x, y-4, x+4, y, x-4, y);
}


void yin(){
movyin();
ciryin();
}

//movimiento en el eje x es rápido(-5,5) y eje x más lento (-1,1)
void movyin() {
x2 += vx2;
y2 += vy2;

if (x2 < 0 || x2 > 500) { // si x2 es menor que 0 o x2 es mayor que 500
    vx2 *= -1;            // entonces la velocidad es -1
}
 
 if (y2 < 0 || y2 > 500) { // si y2 es menor que 0 o y2 es mayor que 500
    vy2 *= -1;            // entonces la velocidad es -1
}
}

//yin como donuts diferentes tamaños, parte con movimiento horizontal
void ciryin(){
  stroke(verde);
  strokeWeight(10);
  noFill();
  ellipse(x2, y2, tam, tam);
}
}