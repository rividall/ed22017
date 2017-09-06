int x1, x2,x3,x4,x5,x6,x7,x8;
float y1,y2,y3;
color blanco;
color negro;
color gris;
color naranjo;

void setup(){
size (500,500);

x1 = 00;//rect1
x2 = 500;
x3 = 100;
x4 = 200;
x5 = 200;
x6= 250;
x7 = 250;




y1 = 100.5;
y2 = 400.5;
y3 = 0.1;

blanco = color(255,255,255);
negro = color(0,0,0);
gris = color(142,142,142);
naranjo= color(255,163,13);

}

void draw() {
  
background (blanco);

noStroke();
fill (naranjo);
rect (10, 10, 50, 50);

noStroke();
fill (naranjo);
rect (400, 400, 400 , 400);

stroke(gris);
strokeWeight(15);
noFill();
rect(0, 0,x2,x2);

stroke(gris);
strokeWeight(15);
noFill();
rect(x1,x1,500,500);

stroke(negro);
strokeWeight(10);
noFill();
rect(x4 ,x5 ,x3 ,x3);

noStroke();
fill(gris);
ellipse(100, 400, 100, 100);

stroke(blanco);
noFill();
ellipse (100,400, y1, y1);

noStroke();
fill(gris);
ellipse(400, 100, 100, 100);

stroke(blanco);
noFill();
ellipse (400,100, y1, y1);

strokeWeight(50);
stroke(naranjo);
point(x6,x6);

strokeWeight(50);
stroke(naranjo);
point(x7, x7);



x1 ++;
x2 --;
x3 +=2;
x4 --;
x5 --;
x6 --;
x7 ++;
y1 --;






}