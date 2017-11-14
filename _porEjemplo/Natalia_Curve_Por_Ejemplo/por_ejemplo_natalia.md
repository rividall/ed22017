“Por ejemplo”

La función curva es una línea que está formada por  cuatro puntos, dos puntos  que unen una línea y otros dos que son los controlados de los puntos anteriores. 

Los puntos (x2, y2, x3, y3) son los puntos que forman la línea,  el punto (x, y) es controlador del punto (x2, y2) y el punto (x4, y4) es el controlador del punto (x3, y3).

Es decir, la forma que uno lo escribe es muy importante.

curve(x, y, x2, y2, x3, y3, x4, y4);


“Por ejemplo”:

curve(100, 200, 100, 100, 100, 200, 100, 200);
//controlador x y x4 en 100 formal línea recta entre punto (x2, y2) y (x3, y3)

curve(500, 200, 100, 100, 100, 200, 500, 200);
// controlador x y x4 mayores a 100 la curva es hacia la izquierda

curve(-500, 200, 100, 100, 100, 200, -500, 200);
// controlador x y x4 menores a 100 la curva es hacia la derecha

En cambio los y e y4 controlan de forma vertical la curva.


Natalia Malsch