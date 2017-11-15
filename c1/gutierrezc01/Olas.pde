class Olas{
  float x, y, a, posa, posb;
  float rr=PI/3.0;
  Olas(float s){
  y = s;
  posa = random(-10, 10);
  posb = random(-3, 3);
 // se le da un valor random a ciertas partes del bezier para que cada vez que sea nuevamente
 // dibujado se le de un nuevo valor dando una sensacion de movimiento
  }
  void display(){
    noFill();
    strokeWeight(3);
    bezier(0, cos(x)*200,  mouseX , mouseY,  700, 75,  cos(y)*500, 1000);
    bezier(width, sin(x)*200,  mouseX, mouseY,  width-700, height-75,  sin(y)*500, 0);
    bezier(width, cos(x)*200,  mouseX, mouseY,  width-700, width-75,  sin(y)*500, 0);
    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        rotate(rr);
      // se aplicará rotación al bezier
      }
    }
    if (mousePressed == true) {
      stroke(random(255),random(255),random(255));
    } else {
      stroke(random(255),200);// el segundo valor da opacidad
    }
  }

 void move() {
   x += posa;
   y += posb;
   rr+=3;
    // esta parte dara el movimiento y la rotacion
 }
}
