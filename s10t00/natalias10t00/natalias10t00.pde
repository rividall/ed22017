//variable
Natalia [] n= new Natalia[50];

void setup() {
  size(500,500);
  
for(int i= 0; i< n.length; i++){
n[i]= new Natalia(random(20));
}
}

void draw(){
//lado derecho
fill(#FFFFFF);//color rect blanco
noStroke();
rect(0, 0, 250, 500);

fill(#000000);//color curculo negro
noStroke();
ellipse(130, 130, 90, 90);

//lado izquerdo
fill(#000000);//color rect negro
rect(250, 0, 250, 500);

fill(#FFFFFF);//color triangulo blanco
noStroke();
triangle(380, 300, 460, 380, 300, 380);

for(int i= 0; i< n.length; i++){
  n[i].yang();
  n[i].yin();
}
}