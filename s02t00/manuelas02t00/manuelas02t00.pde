int x, x1, x2, x3, x4, y, y1, y2, y3, y4;
color negro; 
color blanco;
color amarillo;
color verde;

void setup() {
  size(500,500);
  x = 250;
  x1 = 250;
  x2 = 250;
  x3 = 250;
  x4 =250;
  y = 250;
  y1 = 250;
  y2 = 250;
  y3 = 250;
  y4 = 250;
  negro = color (0,0,0); 
  blanco = color (255,255,255);
  verde = color (163,189,49);
  amarillo = color (220,220,28);
  
}

void draw() {
  background (amarillo);
  noStroke ();
  fill (negro);
  rect (30,30,440,440);
  stroke (amarillo);
  strokeWeight (10);
  point (x, 64);
  point (x, 98);
  point (x, 132);
  point (x, 166);
  point (64, y);
  point (98, y);
  point (132, y);
  point (166, y);
  point (x, 436);
  point (x, 402);
  point (x, 368);
  point (x, 334);
  point (436, y);
  point (402, y);
  point (368, y);
  point (334, y);
  point (x1, 64);
  point (x1, 98);
  point (x1, 132);
  point (x1, 166);
  point (64, y1);
  point (98, y1);
  point (132, y1);
  point (166, y1);
  point (x2, 436);
  point (x2, 402);
  point (x2, 368);
  point (x2, 334);
  point (436, y2);
  point (402, y2);
  point (368, y2);
  point (334, y2);
  point (x3, 64);
  point (x3, 98);
  point (x3, 132);
  point (x3, 166);
  point (64, y3);
  point (98, y3);
  point (132, y3);
  point (166, y3);
  point (x4, 436);
  point (x4, 402);
  point (x4, 368);
  point (x4, 334);
  point (436, y4);
  point (402, y4);
  point (368, y4);
  point (334, y4);
  stroke (blanco);
  strokeWeight (10);
  line (0,500,500,0);
  line (0,0,500,500);
  stroke (negro);
  strokeWeight (15);
  fill (verde);
  ellipse (250,250,100,100);
  stroke (negro);
  strokeWeight (25);
  noFill ();
  quad (250,30,30,250,250,470,470,250);
  
  
  //modificadores
 x1 +=-2;
 x2  +=2;
 x3 +=-1;
 x4 +=1;
 y1  +=2;
 y2  +=-2;
 y3 +=1;
 y4 +=-1;
  
}