int sizing;
int x;
int y;
float h;
boolean e = false;
int [] fake = new int[5];//declaracion de un array de cinco variables de enteros.
color [] stream = new color[2];//declaracion de un array de dos variables de colores.
float[] azar = new float[5];//declaracion de un array de  cinco variables de decimales.
int arround = 8;
char letter; //declaracion de una variable de caracter.
void setup() {
   noCursor();//el mouse no se vera.
   size(700,700);
   x = 30;
   y = 30;
   fake[0] = 0; 
   fake[1] = 1;
   fake[2] = 2;
   fake[3] = 3;
   fake[4] = 4;//declaracion de enteros.
   stream[0] = 255;
   stream[1] =#18EA47;//declaracion de colores.
   azar[0]=12.5;
   azar[1]=25;
   azar[2]=50;
   azar[3]=100;
   azar[4]=200;//declaracion de float.
   background(0);
}
void draw() {
  f2(0,0);
  if (!e){
   letter = 'a';
  }else{
   letter ='b';
}//mientras e sea falso el caracter letter sera a sino sera b.
  switch(letter) {
   case 'a':
   case 'A': 
    f(width/7,height/7);// si el caracter es a se dibujara esta funcion.
   break;
   case 'b':
   case 'B': 
   f1(width/7,height/7);  //si el caracter es b se dibujara esta otra funcion.
   break;
  }
}

void keyPressed() {
    {
      if (key == 'a' || key == 'A')
        sizing=fake[0];
    }
    {
      if (key == 's' || key == 'S')
        sizing=fake[1];
    }
    {
      if (key == 'd' || key == 'D')
        sizing=fake[2];
    }
    {
      if (key == 'f' || key == 'F')
        sizing=fake[3];
    }
    {
      if (key == 'g' || key == 'G')
        sizing=fake[4];
    }//del boton al g del teclado se ira aumentando el tamano de la figura.
      if (key == '1')
    {
         e=true;
    }
    if (key == '2')
    {
         e=false;
    }//boton 1 y 2 determinan si e es verdadero o falso respectivamente.
    
}
  
 
void mousePressed() {
  if (e){
    background(0);
  }
  else{
    background(0);
  }
}//cada vez que se presione el mouse el fondo volvera a dibujarse dando la impresion de que se borro lo ya dibujado.

void f(int x,int y)
{
    pushMatrix();
    float  mx = map(mouseX, 0, width, 150, 550);
    float  my = map(mouseY, 0, height, 150, 550);//las variables mouseX y mouseY y solo se moveran entre el rango de 150 y 550 del canvaz.
    for (int i = 100;i <=600 ; i+=x){
     for (int j= 100;j <=600; j+=x){
     stroke(#18EA47);
     strokeWeight(1);
     line(i,j,mx,my);// se dibujaran lineas entre el pixel 100 y 600 con un inicio definido pero target modificable mendiante mouseX y mouseY.
     }
   }
  translate(mx, my);
  for (int i = 0; i < arround; i++) {
    rotate(radians(360/float(arround)));
    fill(stream[0]);
    ellipse(x,y,azar[sizing],azar[sizing]); // se dibujaran 8 circunferencias en una forma de circunferencia y seran movibles por mouseX y mouseY.
  }
  popMatrix();
   
}

void f1(int x, int y){
 {
 // float  mx = map(mouseX, 0, width, 0, 100);
  //float  my = map(mouseY, 0, height, 0, 100);
 // ellipse(i,j,mx,my);
     pushMatrix();
     rectMode(CENTER);
     float  mx = map(mouseX, 0, width, 150, 550);
     float  my = map(mouseY, 0, height, 150, 550);//las variables mouseX y mouseY solo se moveran entre los pixeles 150 y 550 del canvas.
     for (int i = 100;i <=600 ; i+=x){
       for (int j= 100;j <=600; j+=x){
     stroke(#18EA47);
     strokeWeight(1);
     line(i,j,mx,my);//se dibujaran lineas entre el pixel 100 y 600 con inicio estatico, pero target modificable por moiseX y mouseY.
      }
   }
  translate(mx, my);
   for (int i = 0; i < arround; i++) {
    rectMode(CENTER);
    rotate(radians(360/float(arround)));
    fill(stream[1]);
    rect(x,y,azar[sizing],azar[sizing]);//se dibujaran 8 cuadrados (desde el centro) ordenados en forma de circulo que seran movibles por mouseX y mouseY.
  }
     popMatrix();
   
}

}
void f2(int x, int y){
  pushMatrix();
  rectMode(CENTER);
  noFill();
  strokeWeight(8);
  rect(width/2,height/2,700,700);
  popMatrix();// se dibujara un cuadrado sin relleno cuyo borde servira de margen en la pantalla.
}