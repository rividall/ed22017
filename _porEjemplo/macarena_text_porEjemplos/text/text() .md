## Curve() 

**Descripción:**

La función curva es una línea que está formada por cuatro puntos, dos puntos  que unen una línea y otros dos que son los controlados de los puntos anteriores. 



#### Syntax:

```
curve(x, y, x2, y2, x3, y3, x4, y4);
```

```
String s = "The quick brown fox jumped over the lazy dog.";
text(s, 10, 10, 70, 80);
```

#### Por ejemplo:

```
void setup(){
size(500,500); //Canvas de 500 x 500 pixeles

}

void draw() {
  background(255)//Fondo blanco
  
  textSize(32); // tamaño de la letra
  fill(0); // color de la letra
  text("Processing", 160, 40);  // Texto

}
```

