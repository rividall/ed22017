Molecula[] d = new Molecula[125];  // nuevo datatype en forma de array
 boolean z,o; // declaro un boolean z 
 
 void setup() { 
   size(1000, 1000); 
   rectMode(CENTER); 
   z = true;  // declaro que z es verdadero
   o = false;
   for (int i = 0; i < 125; i++) { 
     float mov = random(-4,4); 
     float movy = random(-4,4); 
     d[i] = new Molecula(mov, movy, 20); 
    
   } 
 } 
 
 
 void draw() {  
   background(0); 
   noStroke(); 
   for (int i = 0; i < d.length; i++) { 
    

     d[i].move();
    d[i]. wow(600,600);
     
 }} 