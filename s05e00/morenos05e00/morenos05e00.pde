
int cambio;
int  r, g, b; //Declarar variables r, g, b
int r2, g2, b2;//Declarar variable r2,g2,b2
int tamano; //Declarar variable tamano
int a,e;   //Declarar variable f
int margen;//Declarar variable de margen

color col1;//Declarar variable de color
color col0;//Declarar variable de color

void setup (){
size (1900,800);
background (0);

}
void draw (){
hola(1700,1000,1700,1000);
 chao (40,8,0,0.0,0,0,0);
porque (485,320,220,400,390,290,315,580);

}

void hola (int x , int y ,float a,float b){

  fill(0);
  for (int i = 40; i < width - 9; i+= a) { //  asigna el valor a a 
  for (int j = margen; j < height- 50; j+= a) {
noStroke();
ellipse (x,y,10,10);
 

  }
}
noStroke();
stroke (100,100,100);
line (x,y,100-x,y);
line (x,y,x,y+100);
line (x,y,x,100-y);
for (int i = 0; i < 800; i = i+10) {
  line(x, i, 80, i); 
   


}

}

void chao (int R ,int N,int m,float k, float t,float x, float y ){


  k = 10*sin(radians(t));
  stroke(100,100,200);
strokeWeight (5);
  for (int j=0; j<N; j++) {

    for (int i=0; i<360; i+=1) {
      if (i%2==0)k=k*-1;
      else k= k;
       x = width/2+(R+j*40)*cos(radians(i+k*j));
       y = height/2+(R+j*40)*sin(radians(i+k*j));
      fill(100,100,200);
      ellipse(x, y, 20, 20);
    }
  }
  t++;
}

void porque(int a, int b, int c , int d , int e ,int f, int g ,int h){
  noStroke();
fill ( 150,200,50);
  bezier(a, b, c, d, e, f, g, h);
  bezier(c, b, a, h, e, f, g, h);
  bezier(1400, 1800,1900, 1400, 1600, 1700, 1800, 1800);
  bezier(c, b, a, h, e, f, g, h);




}