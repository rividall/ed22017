// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Nicolas Moreno Tello
//s10 tarea 00

// ojos que siguen el mouse y al apretar 1 estos dejan de siguir el mouse , explotan y rebotan las paredes 


// variables
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
    
     d[i].todo(); 
   } 
 } 