class Molecula { 
// Variables
 float x = 200 , y= 200, vx, vy, mov;
// Constructor
   Molecula (float vx, float vy, float mov) {  // inicializacion de la nueva clase 
     x = random(width);
     y = random(height);
     this.vx = vx * 2;
     this.vy = vy * 2;
     this.mov = mov;

   }
// Métodos
    void todo() {
    wowie_();
    move();
   
  }
  
   void wowie_() {  // si z es verdadero las figuras orbitan el mouse y algunas siguen de largo 
     if(z){   
     fill(x/1, 0, y/40);
     ellipse(x, y, mov, mov);

   noFill();
    stroke(#ffffff);
    strokeWeight(5);
    ellipse(x, y, mov +80, mov +25);
    ellipse(x, y, mov +25, mov +25);

  x = (mouseX - x) / 50 + x;     
  y = (mouseY - y) / 50 + y;
 
   }
   
   if(!z){      // si z es falsolas figuras siguen de largo y rebotan las paredes  
    fill(#ff5555);
     ellipse(x, y, mov, mov);
   
    noFill();
    stroke(255,249,69);
    strokeWeight(5);
    ellipse(x, y, mov +25, mov +25);
   
   }
   
   }


   void move() {  // el movimiento de las figuras
     x += vx;
     y += vy;
     if (x > width || x < 0 || y > height || y < 0 ) {
       vx = -vx;
       vy = -vy;
     }
   }
 
}

void keyPressed(){ // si la tecla 1 se apreta los parametros z se cambian al !z 
if ( key =='1'){
 z = !z; //z pasa a ser falso
 
}}