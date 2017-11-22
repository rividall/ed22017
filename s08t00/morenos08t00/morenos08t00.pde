// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Nicolas Moreno Tello
//s07 tarea 00

//3 figuras  ( reloj dali , un bulleye ojo y una mandala ) que cambian al apretar la tecla 1

// Se declaran las variables globales-------
int [] numeros = new int [4]; // new int : crea un espacion en la memoria  ESTE ES CON RANDOM 
color [] colores = new color [4];
int eleccionNumeros;
int cambiodecolor;

int cambio; // Declarar variable entero cambio
int  r, g, b; //Declarar variables entero r, g, b
int r2, g2, b2;//Declarar variable entero r2,g2,b2
int tamano; //Declarar variable entero tamano
int a,e;   //Declarar variable entero f
int margen;//Declarar variable entero de margen
float angulo = 0.0; // declaro variable decimal angulo y le asigno 0.0
color col1;//Declarar variable de color
color col0;//Declarar variable de color
int n;  // declaro la variable n un numero entero
float w;  // declaro la variable w un numero decimal 
int num_lineas; //declaro un variable entero num_lineas 
boolean z,o; // declaro un boolean z 
color negro;


void setup (){ //inicio void setup
size (1900,800); // el canvas es de 1900x800 px
background (0); // el background es de color negro
w = width/8; //declaro que w es el width partido en 8
smooth(); // smooth a todo lo que compone el canvas 
z = true;  // declaro que z es verdadero
o = false;


  numeros [0] = 10 ;
  numeros [1] = 15 ;
  numeros [2] = 20 ;
  numeros [3] = 25 ;
  
  colores [0] = color (255,249,69) ;
  colores [1] = color ( 255,69,69 ) ;
  colores [2] = color (0) ;
  colores [3] = color (255) ;
  
  
}
void draw (){//inicio void draw
  
hola(3000,2000,1700,1000);// declaro q hola tenga parametros (3000,2000,1700,1000)
chao (40,8,0,0.0,0,0,0);  // declaro q chao tenga parametros (40,8,0,0.0,0,0,0)
porque (500,400,400,300,500,400,315,580);// declaro q porque tenga parametros (500,400,400,300,500,400,315,580)
mandala (1500);// declaro q mandala tenga parametros (1500)
wow (600,600);// declaro q wow tenga parametros (600,600)
grilla (2, negro); //función grillay valores dados
}



void hola (int x , int y ,float a,float b){  /* inicializo el void hola y establezco q x,y,a,b sea (3000,2000,1700,1000); 
                                                fondo de grilla y ellipse blanco que se ubica al centro*/
 if (z);{//z cambio de parametros con el boton 1 
ellipse (width/2, height/2, 600, 200); //ellipse con x ancho 
 }
 if (!z){ // !z cambio de parametros con el boton 1 
  fill  (colores [cambiodecolor]);// cambio de color amarillo
   ellipse (width/2, height/2, 300, 200);//cambio de tamaño del ellipse 
 }
  

noStroke();// no stroke
stroke (255); //stroke de color blanco

for (int i = 0; i < 800; i = i+13) { // grilla de lineas ( 800 )
  line(x, i, 0, i);  // linea con parametros establecidos 
   


}

}

void chao (int R ,int N,int m,float k, float t,float x, float y ){ // inicializo el void chao y establezco q R,N,m,k,t,x,y sea (40,8,0,0.0,0,0,0);


  k = 10*sin(radians(t));
  stroke(0);
strokeWeight (0);
 noStroke();

  for (int j=0; j<N; j++) {

    for (int i=0; i<360; i+=1) {  /*el siguiente ejemplo usaremos vamos incrementando el los circulos hasta completar los 360º, la coordenada x y el 
                                   seno es para calcular la coordenada y Los valores seno y coseno devuelven
                                   valores entre -1.0 y 1.0, multiplicaremos el resultado por la variable radius (radio)  y añadimos width/2+(R+j*40)
                                   a la x y la y  height/2+(R+j*40) para situar el centro en la posición (100, 100)*/
      
   x = width/2+(R+j*40)*cos(radians(i+k*j)); // 
   y = height/2+(R+j*40)*sin(radians(i+k*j));
      strokeWeight (5);
      if (z){
       fill  (colores [cambiodecolor]);
      ellipse(x, y, numeros [eleccionNumeros], numeros [eleccionNumeros]);
    }
    }
    if(!z){ // lo mismo que arriba pero con el cambio de apretar 1 los circulos se aschican
      k = 10*sin(radians(t));    
  noStroke();



    for (int i=0; i<360; i+=1) {
      
       x = width/2+(R+j*90/3)*cos(radians(i+k*j));
       y = height/2+(R+j*90/3)*sin(radians(i+k*j));
     fill  (colores [cambiodecolor]);
     ellipse(x, y,  numeros [eleccionNumeros], numeros [eleccionNumeros]);}                              // con esto achico los circulos 
    }}}

 



void porque(int a, int b, int c , int d , int e ,int f, int g ,int h){ // arrow formado por mucho bezier con un ellipse al medio 
  if(z){
  noStroke();
fill ( 0);
noStroke();
 ellipse ( 400,380,420,420);
 fill  (colores [cambiodecolor]);
  bezier(a, b, c, d, e, f, g, h);
  bezier(c, b, a, h, e, f, g, h);
  bezier(100, 1800,1900, 1400, 1600, 1700, 1800, 1800);
  bezier(c, b, a, h, e, f, g, h);
  }
    if(!z){ // cambio de parametros del arrow y el ellipse 
  noStroke();
fill  (colores [cambiodecolor]);
 ellipse ( 10000,10080,420,420);
 
 bezier(b, 200, c, 140, e,140, g, h);
  bezier(c, b, a, h, e, f, g, h);
  bezier(100, 1600,1700, 1500, 1700, 1500, 1700, 1500);
  bezier(c, b, a, h, e, f, g, h);
  }
    }
    

void wow(int cirnumero, int gran){  //pelota que se mueve 
  
  if(z){
                                   
  float angle = angulo;

  for(int i = 0; i < 12; i++){ // declaro q i no puede llegar a mayor de 12 ( determino una velocidad )
noStroke();
    ellipse(200 * cos(angulo) + height/2, 
            200 * sin(angulo) + width/5, 
            12, 12);
    angulo += TWO_PI / 700;   /*el siguiente ejemplo usaremos vamos incrementando el las lineas , la coordenada x y el 
                                   seno es para calcular la coordenada y Los valores seno y coseno devuelven
                                   valores PI,multiplicaremos el resultado por la variable radius (radio)  y añadimos 200 * cos(angulo)
                                   a la x y la y  200 * sin(angulo) */
  } 
}

if(!z){
  
  float angle = angulo;

  for(int i = 0; i < 20; i++){
noStroke();
    ellipse(200 * cos(angulo) + height/2, 
            200 * sin(angulo) + width/5, 
            12, 12);
    angulo += TWO_PI / 700;  
  } 
}


}

void mandala  ( int a){    //mandala
{
 if(z){
  /*el siguiente ejemplo usaremos vamos incrementando el las lineas , la coordenada x y el 
                                   seno es para calcular la coordenada y Los valores seno y coseno devuelven
                                   valores PI,multiplicaremos el resultado por la variable radius (radio)  y añadimos width/1.25 + w
                                   a la x y la y  1000/2.5 + w  ( el w , es controlado arriba y este es para controlar el tamaño */
 
  stroke(0);
  
  n = int(map(10,0,10,0,10));
  
  for (float t = 0; t < 6.9; t += 6.9/n)
  {
    float x = width/1.25 + w * cos(t);
    float y = 1000/2.5 + w * sin(t);
    
    for (float t2 = t; t2 < 6.9; t2 += 6.9/n)
    {
    
      float xn = width/1.25  + w * (cos(t2 + 6.9/n));
      float yn =1000/2.5 + w * (sin(t2 + 6.9/n));
      line(x,y,xn,yn);

    }
  }
}

if(!z){
    stroke(0);
  
n = int(map(mouseX,0,width,0,10));  
  
  for (float t = 0; t < 30; t += 30/n) //t se declara como 0, y aumenta 0 hasta llegar a 30
  {
    /*el siguiente ejemplo usaremos vamos incrementando el las lineas , la coordenada x y el 
                                   seno es para calcular la coordenada y Los valores seno y coseno devuelven
                                   valores PI,multiplicaremos el resultado por la variable radius (radio)  y añadimos width/1.25 + w
                                   a la x y la y  1000/2.5 + w  ( el w , es controlado arriba y este es para controlar el tamaño */
    float x = width/1.25 + w * cos(t);
    float y = 1000/2.5 + w * sin(t);
    
    for (float t2 = t; t2 < 30; t2 += 30/n)
    {
    
      float xn = width/1.25  + w * (cos(t2 + 30/n));
      float yn =1000/2.5 + w * (sin(t2 + 30/n));
      line(x,y,xn,yn);
     

    }
  }
}
  }


}




void grilla (int strokeweight, int stroke) { // función grilla
  if (o) { 
    for (int i = numeros[0]; i < numeros[3]*6; i = i + numeros[0]) {  //for loop i es igual a 1, y aumenta en 1 
      for (int j = numeros[0]; j < numeros[2]*3; j = j + numeros[0]) { //for loop j es igual a 1, y aumenta en 1
        stroke(stroke); //color para el stroke de la ellipse
        strokeWeight(strokeweight); //ancho del stroke de la ellipse
        noFill(); //sin relleno
        rect(0, 0, 20*i, 20*j); //valores de la ellipse
      }
    }
  }
}








void keyPressed(){ // si la tecla 1 se apreta los parametros z se cambian al !z 
if ( key =='a'){
 z = !z; //z pasa a ser falso
 cambiodecolor = (int)random(colores.length);
  
  eleccionNumeros = (int) random (numeros.length);
  println(eleccionNumeros);
}

}
void mousePressed() { //apretar el mouse 
  o = (!o); //g pasa a ser verdadero
}