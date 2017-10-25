//#AA4225 rojo
//#058789 verde 
class Punto {
//Atributos
float x,y, t,u;



//Constructor
Punto(){
 x = random(0,2);
 y = random(0,2);
 t= random(2,4);
 u= random(2,4);


}

//Metodos
void puntitorojo(){
 fill(#AA4225);
 noStroke();
 ellipse(x,y,20,20);}
 
 void puntitoverde(){
 fill(#058789);
 noStroke();
 ellipse(t,u,20,20);}
 
void movimientorojo(){ 
  
  x+=4;
  y+=2;
  
if (x>800){
  x=0;}
if (y>800){
  y=0;}
}
  
  void movimientoverde(){ 
  
  t+=7;
  u+=9;
  
if (t>800){
  t=0;}
if (u>800){
  u=0;}

  }
}