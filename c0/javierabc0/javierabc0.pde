//Universidad del Desarrollo, Facultad de Diseño, Diseño Digital, 6to semestre, Expresión Digital II
//Javiera Barraza Olivares

int varC1=250;
int varC2=150;
int varCtemp;

int tamA=10;
int tamB=10;
int esq=0;

int hor;
int ver;

boolean str = true;

void setup() {
    size(600,600);
}

void draw() {
    background(#FFFFFF);

  for(hor = 10; hor + 10 <= mouseX; hor += 20){
    for(ver = 10; ver + 10 <= mouseY; ver += 20){
    fill(varCtemp,250-hor/5,255-ver/5);
    rect(hor,ver,tamA,tamB, esq); 
    }
  }
  if (esq != 10){
    esq +=1;
  }
  if (esq == 10){
    esq =0;
  }

}

void keyPressed(){
  if (key == 'c'){
    varCtemp = varC1;
  }
  if (key == 'C'){
    varCtemp = varC2;
  }
  if (key == 't' && tamA > 1){
      tamA -= 1;
      tamB -= 1;
      hor -= 1;
      ver -= 1;
  }
  if (key == 'T' && tamA <= 20){
      tamA += 1;
      tamB += 1;
      hor += 1;
      ver += 1;
  } 
}

void mousePressed(){
  if(str){
       noStroke();
       str=false;
  }
  else{
       stroke(1);
       str=true;
  } 
}