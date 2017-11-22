### **lerpColor**

**lerpColor** calcula uno o más colores entre dos colores en un incremento específico.

 El parámetro o variable es la cantidad que se debe interponer/introducir
 entre los dos valores en el cual 0.0 es igual al primer punto o parámetro,
 0.1 está situado bastante cerca del primer punto, 0.5 es la mitad,
 y así hasta llegar a 1.0

 El parámetro o calor de amt es la cantidad que se interpola entre
 los dos valores.
 Si se tiene un valor menor a 0 se efectuará como 0 al igual que los
 valores mayores a 1, se limitarán solo a 1.

 *Es un comportamiento diferente a lerp(); pero al mismo tiempo*
 necesario ya que cierto número fuera de rango, mostrarían colores
 *extraños o inesperados.*


 Parámetros a utilizar:
 color1 - int - Valor de color 1 - Interpolar desde este color.
 color2 - int - Valor de color 2 - Interpola hasta este color - Interpolar a este color.
 cantidad (amt: amount)- float - Es un numero cualquiera entre 0.0 y 1.0.

 `lerpColor(c2, c2, amt);`

```
color color1;
color color2;
float c = 0;

void setup() {
  size(500, 400);
  colorMode(HSB, 100);

  color1 = color(random(100), 100, 100);
  color2 = color(random(100), 100, 30);
  }
```

c1 = color(r, g, b);
c2 = color(r, g, b);
random(100) = random, se elige uno entre 100 colores.
c1 = color(random(100), 100, 100); b = más claro.
c2 = color(random(100), 100, 30);  b = más oscuro.
 

for loop que vaya desde arriba del canvas hacia la base del canvas.                                                                  Para amt, se necesita una variable float entre 0.0 y 1.0                                                                                            new c = new color entre color1 y color2.

    for (int y = 0; y < height; y++){
    	color newc = lerpColor(color1, color2, c);
    	stroke(newc);
    	line(0, y, width, y);
    	c += 0.01;
    }


#### map();

Se utiliza map para que se seleccione y reasigne un numero de un rango a otro

```
color color1;
color color2;

void setup() {
  size(500, 400);
  colorMode(HSB, 100);

  color1 = color(random(100), 100, 100);
  color2 = color(random(100), 100, 30);

  }

void draw() {
	for(int y = 0; y < height; y++) {
		float c = map(y, 0, height, 0, 1);
		color newc = lerpColor(color1, color2, c);
		stroke(newc);
		line(0, y, width, y);

}
}
```

