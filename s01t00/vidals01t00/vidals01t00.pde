// nombre de autor y descripción, colores
// comentarios
int x = width/5;

size(400,400);
background(250,0,250);
noStroke();
fill(0,255,255);
rect(x/2,x/2,x*4,x*4);
ellipseMode(CENTER);
fill(255,255,0);
ellipse(x*2.5,x*2.5,x*4,x*4);
stroke(4);
stroke(100,10,100);
strokeWeight(20);
line(x*2.5,0,x*2.5,x*5);
strokeWeight(40);
point(x*2.5,x*2.5);
strokeWeight(30);
stroke(150,10,150);
point(x*2.5,x*2.5);