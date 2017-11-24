## Curve()

La función curva es una línea que está formada por cuatro puntos, dos puntos  que unen una línea y otros dos que son los controlados de los puntos anteriores. 

#### Syntax:

```
curve(x, y, x2, y2, x3, y3, x4, y4);
```

Los primeros dos parámetros especifican el punto de control inicial (x, y), los dos últimos parámetros especifican el punto de control final (x4, y4), (x2, y2, x3, y3) especifican inicio y final de la curva.

Entonces, los puntos (x2,  y2,  x3,  y3) son los puntos que forman la línea,  el punto (x, y) es controlador del punto   (x2, y2) y el punto (x4, y4) es el controlador del punto (x3, y3). 

Es decir, la forma que uno lo escribe es muy importante.

(Los controladores funcionan como los puntos de control en AI cuando usamos la herramienta pluma y queremos modificar la línea según el controlador).



##### **Por Ejemplo**

//Por Ejemplo: curve
size(300, 300);//tamaño canvas

noFill(); //líneas sin relleno
strokeWeight(3);//líneas grosor 3

stroke(255);//color blanca
curve(100, 200, 100, 100, 100, 200, 100, 200);
//controlador x y x4 en 100 formal línea recta entre punto (x2, y2) y (x3, y3)

stroke(0);//color negro
curve(500, 200, 100, 100, 100, 200, 500, 200);
// controlador x y x4 mayores a 100 la curva es hacia la izquierda

stroke(255, 50, 33);//color rojo
curve(-500, 200, 100, 100, 100, 200, -500, 200);
// controlador x y x4 menores a 100 la curva es hacia la derecha

fill(255);//relleno blanco
stroke(0);//color negro
curve(50, 20, 200, 100, 200, 200, 50, 200);