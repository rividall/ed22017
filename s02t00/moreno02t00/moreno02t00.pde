int a,b,c,d,f; //aca estoy declarando un valor de un numero entero.
float e; // aca estoy dando un valor de un numero decimal X.
color wowie = color (b,c,d);  

void setup () {
frameRate(100);
size (1900,600) ;
a = width / 2;  
b = 200;
c = 100 ;
d = 30;
e = 141;
f = 350;

}
void draw () {
background (255,200,100); 
 stroke (a,b,d);
strokeWeight (10);
point (a,e);
 point (e,e);
  point (a/2,e/2);
   point (a/3,e/3);
noFill();
 rect (f,100,20,20);
 f=f+1;
 rect (e,d,20,20);
  rect (f,d,20,20);
   rect (f,f,20,20);
    rect (a,d,20,20);
fill(255);
 noStroke();
  rect (e,f,20,20);
   rect (f/2,d/1,20,20);
stroke (a,b,d);
strokeWeight (10);
   rect (e,b,20,20);
    rect (b,e,20,20);
line (a,b,0,0);
 line (a,b,0,600);
ellipse(a, b, 30, 30);
quad (0,100,50,60,30,20,30,39);
b=b+d;
 
if (b>width-20 || b<20)

d=-d;
e+=1;
b-=5;


}