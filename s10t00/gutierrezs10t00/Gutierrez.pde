class Gutierrez{
  float x, y, z, speedx, speedy;
  
  Gutierrez(float s){//el valor random anterior asignado en el codigo principal es asignado a "s".
 x = s;
 y = s;// "x" e "y" tienen el valor de s
 speedx = random(-10, 10);
 speedy = random(-3, 3);
  }
  void display(){
    fill(255);
    rect(x,y,40,40);
}
 void move(){
   if (x > width || x < 0) {
      speedx*= -1;
    }
    if (y > height || y < 0) {
      speedy*= -1;
    }
    x += speedx;
    y += speedy;
 }
 void display1(){
    rect(x,y,40,40);
    fill(#E33939);
}
 void move1(){
   if (x > width || x < 0) {
      speedx*= -1;
    }
    x += speedx;
 }
 void move2(){
   if (y > height || x < 0) {
      speedy*= -1;
    }
    y += speedy;
 }// cada objeto se aplicara en el codigo principal si es llamado.
}