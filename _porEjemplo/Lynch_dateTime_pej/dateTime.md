Las funciones de dateTime permiten a processing comunicarse con el reloj interno del computador, de manera de hacer utilizables estos datos en nuestro sketch.

Las funciones son year(), month(), hour(), minute() y second(). Tambien existe millis(), pero esta funcion cuenta las milésimas de segundo transcurridas desde el inicio del programa.

En el siguiente ejemplo, se construye un reloj simple utilizando los segundos, minutos, y horas;

```
void draw() {
  background(204);
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  line(s, 0, s, 33);
  line(m, 33, m, 66);
  line(h, 66, h, 100);
}
```

Todas estas funciones sirven para contar tiempo en nuestro sketch, y nos ofrecerian algun grado de control para, por ejemplo, una instalacion que cambien de acuerdo a la estacion del año, calendarios o relojes interactivos, o para guardar datos o imagenes con una estampa de tiempo, como se vera en el ejemplo adjunto.