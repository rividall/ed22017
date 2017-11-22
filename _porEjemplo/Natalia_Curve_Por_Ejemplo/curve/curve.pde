//Por Ejemplo: curve
size(300, 300);

noFill();
stroke(255);
curve(100, 200, 100, 100, 100, 200, 100, 200);
//controlador x y x4 en 100 formal línea recta entre punto (x2, y2) y (x3, y3)

stroke(0);
curve(500, 200, 100, 100, 100, 200, 500, 200);
// controlador x y x4 mayores a 100 la curva es hacia la izquierda

stroke(255, 50, 33);
curve(-500, 200, 100, 100, 100, 200, -500, 200);
// controlador x y x4 menores a 100 la curva es hacia la derecha






/*curve(x, y, x2, y2, x3, y3,  x4, y4);
Los primeros dos parámetros especifican el punto de control inicial (x, y)
los dos últimos parámetros especifican el punto de control final (x4, y4)
(x2, y2, x3, y3) especifican inicio y final de la curva*/