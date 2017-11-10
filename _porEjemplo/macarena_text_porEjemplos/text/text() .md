## text() 

**Descripción:** Para escribir en el lienzo. Se utilizará una fuente predeterminada a menos que se establezca una fuente con la función textFont () y se usará un tamaño predeterminado a menos que se establezca una fuente con textSize (). Cambia el color del texto con la función fill ().



#### Syntax:

```
text("word", 10, 60);
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

