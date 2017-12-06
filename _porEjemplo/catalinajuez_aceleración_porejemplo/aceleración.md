{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red53\green53\blue53;}
\margl1440\margr1440\vieww14800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ACELERACI\'d3N:\
Antes de empezar a aplicar aceleraci\'f3n en el condigo tenemos que tener clara la definici\'f3n de aceleraci\'f3n, para lo cual primero debemos recordar que la velocidad corresponde la distancia recorrida en un tiempo determinado (distancia/ tiempo), mientras que la aceleraci\'f3n es la variaci\'f3n de la velocidad en un tiempo determinado ( dV/  dt).\
\
\
\
\
### por_ejemplo00\
\
if (x > width || x < 0) \{ \
    velx = +2;  // Ac\'e1 lo que hac\'edamos era hacer una velocidad constante donde avanzaba siempre +2\
    \}\
\
\
if (x > width || x < 0) \{ \
    velx = velx * -1.05; // En vez de hacer la velocidad constante, multiplicamos esta para que  esta velocidad se acelere con el tiempo\
    \}\
\
//El \'fanico problema con acelerarlo de esta forma es que no tenemos un limite de velocidad por lo que existir\'e1 un momento donde no podremos verla pelota debido a la velocidad que alcanzo \
\
\
\
\
### por_ejemplo01\
\
// Este ejemplo es una adaptaci\'f3n del c\'f3digo \'93por_ejemplo00 \'93 que fue adaptado a vectores y se le agrego un limite de velocidad\
/* Vectores : \cf2 El vector se caracteriza por tener una longitud y direcci\'f3n, por lo cual puede ser considerada como un elemento dentro de un espacio vectorial. Existen algunas magnitudes f\'edsicas que pueden ser vectoriales, como es la velocidad donde se necesita indicar una direcci\'f3n (hacia donde va) y la fuerza que act\'faa sobre este objeto. Tambi\'e9n podemos definirla como la diferencia (distancia), entre dos puntos */\
// https://processing.org:8443/tutorials/pvector/\
\
// condigo \cf0 por_ejemplo00\
float x, y, velx, vely; \
\
\cf2 // condigo \cf0 por_ejemplo01\
PVector pos;\
PVector vel;\
PVector acel;\
float limiteVel;\
\
// En el caso de usar vectores ya no usamos float,para definir posici\'f3n y velocidad, sino que usamos PVector aunque usaremos un float para definir el limite que tendr\'e1 de velocidad.\
\
\
\cf2 // condigo \cf0 por_ejemplo00\
  x = 1; \
  y = 1; \
  velx = 4; \
  vely = 4;\
\
\cf2 // condigo \cf0 por_ejemplo01\
  pos = new PVector(250, 250);\
  vel = new PVector(4, 4);\
  limiteVel = 15;\
\
// Los vectores son definidos como \'93nombre\'94 = new PVector(valor x, valor y);\
\
\
\cf2 // condigo \cf0 por_ejemplo00\
  x += velx; \
  y += vely;\
\
\cf2 // condigo \cf0 por_ejemplo01\
  pos.add(vel);\
  vel.limit(limiteVel);\
\
// En vez de sumar la variable de posici\'f3n mas la variable de velocidad como lo hac\'edamos antes, ahora las sumamos poniendo vector posici\'f3n. add(vector Velocidad);  Osea cambiamos \'93+=\'93 por \'93.add\'94 para sumar ( si buscamos en \cf2 https://processing.org:8443/tutorials/pvector/\cf0  encontraremos explicada de mejor forma como funciona la suma de vectores)\
// Adem\'e1s al poner \'93.limit\'94 decimos que el vector tendr\'e1 un limite en su valor siendo as\'ed \'93Nombre Vector.limit(valor limite a poner)\'94.\
\
\
\cf2 // condigo \cf0 por_ejemplo00\
if (x > width || x < 0) \{ \
    velx = velx * -1.05; \
    fill(miColor); \
  \}\
  if (y > height || y < 0) \{ \
    vely = vely * -1.05; \
    fill(miColor1); \
  \}\
\
\cf2 // condigo \cf0 por_ejemplo01\
 if (pos.x > width || pos.x < 0) \{ \
    vel.x = vel.x * -1.05; \
    fill(miColor); \
  \}\
  if (pos.y > height || pos.y < 0) \{ \
    vel.y = vel.y * -1.05; \
    fill(miColor1);\
  \}\
// La \'fanica diferencia es que donde antes pon\'edamos nuestro float a int solamente con su nombre, ahora ponemos el nombre del vector.x o.y \
\
\
\
\
### por_ejemplo02\
\
/* En este ejemplo tendremos una pelota que se encuentra en constante movimiento por el eje X, \
y que adem\'e1s parte su velocidad en 0 hasta llegar a 15.Y podemos restar o sumar su aceleraci\'f3n \
lo cual causa que este circulo se frene para que luego cambie la direcci\'f3n en que se mueve.\
*/\
\
\
  PVector pos; // Creamos nuestros vectores\
  PVector vel;\
  PVector acel;\
  float limiteVel;\
// Ahora aparte de definir nuestros vectores de velocidad y posici\'f3n, tambi\'e9n creamos uno para nuestra aceleraci\'f3n.\
\
\
    vel.add(acel); // Sumamos la aceleraci\'f3n a nuestra velocidad\
    pos.add(vel); // Sumamos la velocidad a la posici\'f3n\
    vel.limit(limiteVel); // Definimos una velocidad limite\
\
\
    if (key == 'x') \{   // Si apretas \'93x\'94  al vector \'93acel\'94 se le resta 1.\
      acel.x = -0.5; // Cambiamos nuestra aceleraci\'f3n a  negativo\
    \}\
    if (key == 'y') \{   // Si apretas \'93x\'94  al vector \'93acel\'94 se le suma 1.\
      acel.x = +0.5; // Volvemos a poner nuestra aceleraci\'f3n como positivo\
    \}\
// El cambio de aceleraci\'f3n produce que la velocidad en que se encuentra la esfera disminuya hasta que empiece a moverse en sentido contrario.\
\
\
\
\
### por_ejemplo03\
/* En este c\'f3digo tenemos una pelota que sigue la ubicaci\'f3n del mouse con aceleraci\'f3n \
*/\
\
    PVector mouse = new PVector(mouseX,mouseY);\
    mouse.sub(location);\
\
// El vector mouse se le resta el vector location.\
\
   mouse.setMag(0.2);\
   acceleration = mouse;\
// La magnitud o longitud del mouse es 0.2\
// El valor de la aceleraci\'f3n es igual al mouse.} 