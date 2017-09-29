int a;
int b;
int c;
int d;
int e;
int f;
void setup(){
  size(700,700);
  background(255);
  }
void draw(){
  serial(a,b);
  inside(c,d);
  c = d ++;
  contorno(e,f);
}
void serial(int x, int y){
 for(x=0; x <=width; x+=20){
   for(y=0; y <=height; y+=20){
     strokeWeight(1);
     stroke(0);
     fill(x,y,0);
     rect(x,y,20,20);
     ellipse(x+10,y+10,5,5);
}
 }
}
void inside(int x, int y){ 
fill(x,y,0);
noStroke();
ellipse(width/2,height/2,300,300);
 }
void contorno( int x, int y){
     noFill();
     strokeWeight(50);
     stroke(0,y,x);
     ellipse(width/2,height/2,300,300);
     
}
   