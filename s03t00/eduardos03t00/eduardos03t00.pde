//Universidad del Desarrollo
//Diseño Digital
//06.09.2017
//Eduardo García C.


float px = 50;       //variable px declarada e iniciada
float vx = 2;        //variable vx declarada e iniciada
float py = 150;      //variable py declarada e iniciada
float vy = 2;        //variable vy declarada e iniciada
float sw = 3;        //variable sw declarada e iniciada
float ps = 3;        //variable ps declarada e iniciada


color blanco;        //variables de color declaradas
color negro;
color amarillo;
color rosado;

void setup(){           
  
  size(200,200);         //tamaño del canvas
  
  blanco   = (#FFFFFF);  //variables de color iniciadas
  negro    = (#000000);
  amarillo = (#FEFF00);
  rosado   = (#FF00C4);
 
  stroke(blanco);       //todos los stroke del programa son blancos
  fill(amarillo);       //todos los rellenos del programa son amarillos
   
}

void draw(){
  
  background(100);       //color de fondo gris
  
  strokeWeight(sw);     //grosor de stroke
  fill(rosado);              // solo debes cambiar el valor de la variable
  ellipse(px,py,5,5);   //elipse
  ellipse(px,px,7,7);   //elipse
  ellipse(py,px,9,9);   //elipse
  ellipse(py,py,11,11); //elipse
  
  if (px > width || px < 0){   // si px es mayor al ancho de la pantalla o menor a 0...
    vx *=-1;                   //vx se invierte
    // no ocurre 
    fill(rosado);              //cambia a color rosado
  }
  
  if ( py > height || py < 0){  //si py es mayor al ancho de la pantalla o menor a 0...
    vy *=-1;                   //vy se invierte
    fill(amarillo);            //cambia a color amarillo
  }
  
  if (sw > height || sw < 1){  //si sw es mayor o menor a 1...
    ps *=-1;                   //ps se invierte
  }
  
    
   py -=vy;       //se suma a py el valor invertido de vy
   px +=vx; 
   sw +=ps;
   
}

//fin de programa