## textFont() 

**Descripción:**  Cambiar la tipografia para esciribir en el canvas. Para usar textFont hay que crear o cargar una tipofrafia primero.



#### Syntax:

```
textFont(nombreTipografia)
```



#### Por ejemplo:

```java
PFont fuente; // fuente declarada

void setup() {
  size(500, 500);
  fuente = loadFont("Adam-48.vlw"); // fuente inicializada
}

void draw() {
  background(0);
  textSize(32); // tamaño fuente
  textFont(fuente); // fuente
  text("word", 12, 60); // texto
}
```

