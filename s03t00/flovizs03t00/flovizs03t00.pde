//Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
//Miércoles 06, septiembre, 2017
//Florencia Vizcaya
//A continuación se dinuja una esfera de 30 de radio en movimiento a través del canvas, con el fin de que rebote en los cuatro lados del canvas asignado y cambie de color y tamaño cada vez que rebote. 


int rad = 30;        // se declara el radio de la figura
float posx, posy;    // Se declaran las variables de posición de la figura en x e y   

float velx = 3;  // Se declara el valor de la velocidad de x
float vely = 2.2;  // Se declara el valor de la velocidad de y

int direcx = 3;  // Se declara el valor de dirección de x (izquierda o derecha)
int direcy = 3;  // Se declara el valor de direcci de y (arriba o abajo)

int c; //Se de clara la varable c


void setup() 
{
  size(640, 360); //Se declara el tamaño del canvas (x, y) 
  frameRate(30);  //Declaración de 30 frames por segundo
  
  noStroke(); //Declaración sin borde de la figura 
  ellipseMode(RADIUS); //A base de esto se puede dibujar una elipse a base del radio
  // Set the starting position of the shape
  posx = width/2;  //Aquí se declara la posición en x donde estará la figura en el primer frame
  posy = height/2; //Aquí se declara la posición en y donde estará la figura en el primer frame
  
  c = color(255); //Se le asigna a la variable c como color blanco
}

void draw() 
{
  background(100); //Cambiamos el color del fondo a un gris
                   //El background lo pondemos en void draw para que no quede rastro del movimiento de la figura
  
  fill(c); //Le asignamos el color "c" al relleno de la figura
  ellipse(posx, posy, rad, rad); //Dibujamos una ellipse con pos
  
  posx = posx + ( velx * direcx );  //Se actualiza la posición de la figura para darle movimiento en x
  posy = posy + ( vely * direcy );  //Se actualiza la posición de la figura para darle movimiento en x
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (posx > width-rad || posx < rad) {  //En caso de que la posición x de la esfera sea mayor que 290 o menor que 30..
    direcx *= -1;                        //La dirección de la esfera en x es regresiva
    c = color(random(50, 250), 0, 0);    //El color de la esfera cambia a un color rojo entre 50 y 250
    rad=15;                              //y el radio de la esfera cambia a 15px
  }
   if (posy > height-rad || posy < rad) {  //Si la posición en y de la esfera es mayor que 150 o menor que 30..
    direcy *= -1;                          //La dirección de la esfera en y es regresiva
    c = color(200, 220, 150);              //El color de la esfera cambia a un verde pastel
    rad=20;                                //Y el radio de la esfera cambia a 20px
  }
}