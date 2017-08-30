int x1, x2, x3, x4, x5, x6, x7, x8;
float y, y1, y2;
color blanco;
color negro;
color naranjo;
color verde;

void setup(){
size (500,500);

x1 = 15;
x2 = 20;
x3 = 50;
x4 = 250;
x5 = 450;
x6 = 35;
x7 = 465;
x8 = 20;
y = 200.5;
y1 = 300.5;
y2 = 0.1;

blanco = color(255,255,255);
negro = color(0,0,0);
naranjo = color(255,132,0);
verde = color(118,255,215);

}

void draw() {

background (blanco);

//rect
noStroke();
fill(negro);
rect(5, 5, 490, 490);

//rect2
noStroke();
fill(blanco);
rect(10, 10, 480,480);

//rect3
noStroke();
fill(negro);
rect(x1, x1, 470, 470);

//rect4
noStroke();
fill(blanco);
rect(x2, x2, 460,460);


//ellipse 3
stroke(naranjo);
strokeWeight(5);
fill(verde);
ellipse(x4,x4,x3,x3);

//circulo 
stroke(negro);
strokeWeight(2);
fill(blanco);
ellipse(250,250,x8,x8);

//circulo 
stroke(naranjo);
strokeWeight(2);
fill(verde);
ellipse(250,250, y2, y2);

//linea
stroke(naranjo);
strokeWeight(5);
line(x3, 450, x3, 50);

//linea 2
stroke(naranjo);
strokeWeight(5);
line(x5, 50, x5, 450);

//linea 3 
stroke(verde);
strokeWeight(5);
line(50, x3, 450, x3);

//linea 4 
stroke(verde);
strokeWeight(5);
line(50, x5, 450, x5);



//ellipse
stroke(verde);
strokeWeight(4);
noFill();
ellipse(x4,x4,y1,y1);

//ellipse 2
stroke(naranjo);
strokeWeight(4);
noFill();
ellipse(x4,x4,y,y);


//point
strokeWeight(20);
stroke(naranjo);
point(x6,35);

//point2
strokeWeight(20);
stroke(naranjo);
point(x7, 465);

//punto inmovil
strokeWeight(5);
stroke(naranjo);
point(250,250);

//modificadores
x1 ++;
x2 --;
x3 ++;
x5 --;
x6 ++;
x7 --;
x8 ++;
y ++;
y1 -= 2;
y2 ++;

}