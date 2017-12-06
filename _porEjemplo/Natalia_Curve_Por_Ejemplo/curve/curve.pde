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