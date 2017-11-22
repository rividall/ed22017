//Expresión Digital 2 
// Nicolás Moreno
//morenos03t00
//4 elipse que cambia de colores al rebotar en los bordes del cavas ,  el borde de la derecha/abajo cambia a un color rojo y cuando golpea arriba 
// y a la izquierda este cambia a amarillo. 2 ellipses estan estaticos verticalmente mientra que los otros dos se mueven en diagonal. ademas de estas
// hay multiple ellipses que estan quietos en el fondo que cambian de color junto con los ellipses.

//variables de diametro
int diametro = 50; // asigna diametro de la pelota 
//variables de distancia.
int xdistancia = diametro/2; // asigna el variable diametro/2 a xdistancia ( es decir la mitad del diametro ). 
int ydistancia = diametro/2; // asigna el variable diametro/2 a ydistancia ( es decir la mitad del diametro ). 

//variables de velocidad
int xvelocidad = 10; // asigno que xvelocidad sea un valor de un numero entero 10.
int yvelocidad = 20; // asigno yvelocidad un valor de un numero entero 20.

//variables de direccion
int ydireccion = 1;// asigno ydireccion un valor de un numero entero 1.
int xdireccion = 1;// asigno xdireccion un valor de un numero entero 1.

int a,b,c,d,e ; // declaro la variable a,b,c,d,e es un datatype int ( numero entero ).

color wowie = color(a,b,c);//  el color wowie es a la variable a,b,c.

void setup() { // 
  size(800, 800);// El tamaño del canvas es de 800px por 800px.
  background(0);// El color del canvas es negro.
  
  //fill(213,190,80); // aca establesco que el color primario de las pelotas es de un color blanco con el comentario
                      //, al momento de quitar el comentario este se pone amarillo y cambia de color cuando este golpee la pared este cambia.
                      
  noStroke();// Le quito el stroke al ellipse.
  a = 199;   //agrego a la variable a un valor de 199.
  b = 80;    // agrego a la variable b un valor de 80. 
  c = 88;    // agrego a la variable c un valor de 88.
  d = 190;   // agrego a la variable d un valor de 190.   
  e = 213;   // agrego a la variable c un valor de 213.
}
void draw() {
  background(0); // El color del canvas es negro.
 
 ellipse(ydistancia, xdistancia, diametro, diametro); //crear un ellipse de un diametro (50) y que comienze su trayectoria en ydistancia y x distancia.
  ellipse(xdistancia, ydistancia, diametro, diametro); //crear un ellipse de un diametro (50) y que comienze su trayectoria en Xdistancia y y distancia. es decir que es inverso 
   ellipse(600,ydistancia, diametro, diametro); // crear un un ellipse con distacia 600 en su X ( tomando en cuenta que el canvas es de 800 ) 
   // como solo tiene ydistancia este solo avanza verticalmente.
    ellipse(a,ydistancia, diametro, diametro);// crear un un ellipse con distacia a (199) en su X ( tomando en cuenta que el canvas es de 800 ) 
   // como solo tiene ydistancia este solo avanza verticalmente.
       

  xdistancia += xvelocidad*xdireccion;    //aca le digo a la xdistancia tiene una xdireccion  y tiene una xvelocidad 
  ydistancia += yvelocidad*ydireccion;   //aca le digo a la xdistancia tiene una ydireccion y tiene una yvelocidad 
   
//por ende le digo a todos los if una velocidad determinado 

  //golpe abajo
  if (ydistancia>height-diametro/2) { // Si el eje Y de la pelota llega a un extremo vertical/abajo del canvas, esta función se cumple.
    ydireccion = -ydireccion;  // decirle que al llegar al height maximo este se altere en negativo para que se de la vuelta.
    fill(a,b,c);  // al rebotar abajo este se convierte en a,b,c por ende este queda en el color rojo.
  }

  //golpe arriba
  if (ydistancia<0+diametro/2) { // Si el eje Y de la pelota llega a un extremo vertical/arriba ( como es 0 ) del canvas, esta función se cumple.
    ydireccion=-ydireccion;      // decirle que al llegar al height maximo este se altere en negativo para que se de la vuelta.
        fill(e,d,b);             // al rebotar abajo este se convierte en e,d,b por ende este queda en el color amarillo.
  }

  //golpe derecha
  if (xdistancia>width-diametro/2) { // Si el eje X de la pelota llega a un extremo horizontal/derecha del canvas, esta función se cumple.
    xdireccion = -xdireccion;        // decirle que al llegar al height maximo este se altere en negativo para que se de la vuelta.
       fill(a,b,c);                  // al rebotar abajo este se convierte en a,b,c por ende este queda en el color rojo.
  }

  //golpe izquieda
  if (xdistancia<0+diametro/2) { // Si el eje X de la pelota llega a un extremo vertical/izquierda ( como es 0 ) del canvas, esta función se cumple.
    xdireccion=-xdireccion;      // decirle que al llegar al height maximo este se altere en negativo para que se de la vuelta.
    fill(e,d,b);                 // al rebotar abajo este se convierte en e,d,b por ende este queda en el color amarillo.
}
  ellipse(a, b, 30, 30);              // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill                     
   ellipse(b, a, 30, 30);             // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
    ellipse(40, 60, 30, 30);          // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
     ellipse(40, 60, 30, 30);         // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
      ellipse(40, 60, 30, 30);        // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
       ellipse(540, 100, 30, 30);     // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
        ellipse(640, 240, 30, 30);    // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
         ellipse(640, 640, 30, 30);   // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  
          ellipse(400, 540, 30, 30);  // ellipses que estan alrededor del canvas que estan afectados por el ultimo fill  




       }