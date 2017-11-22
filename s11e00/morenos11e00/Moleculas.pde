class Molecula { 
// Variables
float amt =1;
float angulo = 0.0; // declaro variable decimal angulo y le asigno 0.0
 float x = 200 , y= 200, vx, vy, mov;
// Constructor
   Molecula (float vx, float vy, float mov) {  // inicializacion de la nueva clase 
     x = random(width);
     y = random(height);
     this.vx = 0;
     this.vy = 5;
     this.mov = mov;

   }
// Métodos

   
void wow(int cirnumero, int gran){ 
  
  if(z){
                                   
  float angle = angulo;

  for(int i = 0; i < 12; i++){
noStroke();
    ellipse(200 * cos(angulo) + height/2, 
            200 * sin(angulo) + width/5, 
            12, 12);
    angulo += TWO_PI / 700;   
  } 
}

if(!z){
             ellipse(x, y, mov, mov);                      
  float angle = angulo;

  for(int i = 0; i < 12; i++){
noStroke();



    ellipse(mov *mov *cos(angulo) +height/2,
            y, 
           12,12);
    angulo +=  100;   
  }
}

}

   void move() { 
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