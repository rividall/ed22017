//eduardo semana 02, tarea 00

int ex,ey,rx,ry,lx1,lx2,px,py,gp,pp,ls,sly;  //declarar valores enteros

float cx,cy,crx,cry,sl;                      // declarar decimales

color blanco;                                //declarar color
color negro;
color amarillo;
color rosado;



void setup(){           //estructura basica
  
  size(500,500);
  
  ex = 10;               //inicializar, elipse en x
  ey = 10;               //elipse en y
  cx = 250;              //centro elipse en x
  cy = 250;              //centro elipse en y
  crx = 247;             //centro rectangulo en x
  cry = 247;             //centro rectangulo en y
  rx = 6;                //rectangulo en x
  ry = 6;                //rectangulo en y
  lx1 = 250;             //x1 en la linea
  lx2 = 250;             //x2 en la linea
  px = 125;              //punto en x
  py = 375;              //punto en y
  gp = 1;                //grosor del punto
  pp = 375;              //posicion incicial del punto
  ls = 10;               //grosor de la linea
  sly = 0;               //posicion 0 en y
  sl = 3;                //grosor de la linea
  
  blanco = (#FFFFFF);
  negro = (#000000);
  amarillo = (#FEFF00);
  rosado = (#FF00C4);
  
}
 
void draw(){                       //estructura basica
  
  background(negro);               //color de fondo
  
  stroke(blanco);                            //color de linea
  strokeWeight(7);                           // grosor de linea
  fill(rosado);                              //color de relleno
  quad(125,125,375,375,125,375,375,125);     //quad
  
  noStroke();                               //sin linea
  fill(amarillo);
  ellipse(cx,cy,ex,ey);                     //ellipse
  
  stroke(negro);
  strokeWeight(8);
  noFill();                //sin relleno
  rect(crx,cry,rx,ry);     //rectangulo
  
  stroke(rosado);
  strokeWeight(ls);
  line(lx1,250,lx2,250);    //linea
  
  stroke(negro);
  strokeWeight(gp);
  point(px,py);             //punto
  point(pp,pp);                                  
  
  stroke(rosado);
  strokeWeight(sl);
  line(125,0,125,sly);
  line(375,0,375,sly);
  
  //modificadores
  
  ex += 10;   
  ey += 10;    //expansion de la elipse 
  rx +=4;
  ry +=4;      
  crx -=2;
  cry -=2;     //expansion del rectangulo
  lx1 --;  
  lx2 ++;      //aumento en la posicion de la linea
  px += 5;
  py -= 5;   
  gp += 3;
  pp -= 5;    
  ls ++;      
  sly+= 2;
  sl ++;
  
}