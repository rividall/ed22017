# lerp()

La función **lerp()** es para crear movimiento a lo largo de un camino recto y que esta vaya siguiendo a otro objeto.

```
lerp(start, stop, amt);
```

**start** : float: primer valor, **stop** : float: segundo valor, **amt** : float entre 0.0 y 1.0

Los **start** y **stop** declaran en las variables y luego el parametro **amt** es la velocidad que yo quiero que haya cuando se mueve el objeto

#### Por ejemplo:

En este caso se le dió un valor de 0 a start, 300 a stop y a amt 0.02.

```
float start = 0;
float stop = 300;

void setup() {
  size(500, 500);
}

void draw() {
  background(#000000);
  x = lerp(start, stop, 0.02);
  stroke(255);
  fill(255, 0, 175);
  ellipse(stop, 200, 64, 64); // Ellipse 1
  fill(175, 0, 255 );
  ellipse(start, 200, 64, 64); // Ellipse 2
}

void mousePressed() {
  stop = mouseX;
}
```

Se formarán dos ellipses cuando se utilice mousePressed para "ellipse1", la "ellipse2" lo seguirá y se quedará en esa posición, hasta que se presione nuevamente el mouse en otra coordenada.

