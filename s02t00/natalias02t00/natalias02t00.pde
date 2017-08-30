int x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13,x14, x15,x16,x17, x18,x19, y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18,y19;
color blanco;
color negro;
color burdeo;
color verde;

void setup() {
  size(400,400);  //tamaño
  
  x = 100;
  x1 = 150;
  x2 = 200;
  x3 = 250;
  x4 = 300;
  x5 = 350;
  x6 = 100;
  x7 = 150;
  x8 = 200;
  x9 = 250;
  x10 = 300;
  x11 = 350;
  x12 = 50;
  x13 = 50;
  x14 = 50;
  x15 = 50;
  
  x16 = 370;
  x17 = 370;
  x18 = 370;
  x19 = 370;
  
  y = 50;
  y1 = 50;
  y2 = 50;
  y3 = 50;
  y4 = 50;
  y5 = 50;
  y6 = 350;
  y7 = 350;
  y8 = 350;
  y9 = 350;
  y10 = 350;
  y11 = 350;
  y12 = 100;
  y13 = 150;
  y14 = 250;
  y15 = 300;
  
  y16 = 100;
  y17 = 150;
  y18 = 250;
  y19 = 300;
  
  blanco = color(#FFFFFF);
  negro = color(#000000);
  burdeo = color(#751212);
  verde =color(#D7F283);
}


void draw(){ 
 background (negro);
 line (0, 0, 400, 400);
 line (400, 0, 0, 400);
 line (0, 200, 400, 200);
  line (200, 0, 200, 400);
 fill (blanco);
 noStroke();
 
 rect (150, 150, 100, 100); // rect 1
 fill (blanco); 
 noStroke ();
 

 stroke (verde);
 
 point (x, y); // punto 1 -arriba
 fill (verde);

point (x1, y1); // punto 2 -arriba
strokeWeight (3);
point (x2, y2); // punto 3 -arriba
point (x3, y3); // punto 4 -arriba
point (x4, y4); // punto 5 -arriba
 
point (x6, y6); // punto 1 -abajo
point (x7, y7); // punto 2 -abajo
point (x8, y8); // punto 3 -abajo
point (x9, y9); // punto 4 -abajo
point (x10, y10); // punto 5 -abajo
 
point (x12, y12); // punto 1 -der
point (x13, y13); // punto 2 -der
point (x14, y14); // punto 3 -der
point (x14, y15); // punto 4 -der

point (x16, y16); // punto 1 -iz
point (x17, y17); // punto 2 -iz
point (x18, y18); // punto 3 -iz
point (x19, y19); // punto 4 -iz
 
 


 fill(burdeo);
 ellipse (200, 200, 40, 40);

 fill(verde);
 quad (30, 350, 50, 370, 30, 370, 50, 350); //quad abajo derecha
 quad (50, 50, 70, 50, 50, 70, 70, 70); //quad arriba derecha
 quad (330, 50, 350, 50, 330, 70, 350, 70); //quad arriba izquerda
 quad (350, 350, 370, 370, 350, 370, 370, 350); //quad abajo izquerda
 
//modificadores

y +=2;
y1 +=2;
y2 +=2;
y3 +=2;
y4 +=2;
y5 +=2;

y6 +=-2;
y7 +=-2;
y8 +=-2;
y9 +=-2;
y10 +=-2;
y11 +=-2;

x12 +=2;
x13 +=2;
x14 +=2;
x15 +=2;

x16 +=-2;
x17 +=-2;
x18 +=-2;
x19 +=-2;

 
}