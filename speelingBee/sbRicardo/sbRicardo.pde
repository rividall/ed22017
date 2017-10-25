// spelling bee
// ricardo una pelota en diagonal se agranda en la mitad
int x=0;

int tam=20;
void setup(){
  size(200,200);
}

void draw() {
  x++;
  if(x>100){
   tam=40;
  }
  ellipse(x,x,tam,tam);
  
}