# arc()

**Descripción:** Dibuja un arco en el lienzo. Los arcos se dibujan alrededor de una ellipse definida por los parametros a, b, c y d. Se utilizan los parametros inicio y fin para determinar los angulos (En radians) en los que se dibujará el arco.

Al mismo tiempo se puede elegir el tipo de terminación para el arco con los parametros *OPEN, CHORD y PIE*, estos parametros son llamados "modo".



#### Syntax:

`arc(a, b, c, d, inicio, fin);`

`arc(a, b, c, d, inicio, fin, modo);`



#### Por ejemplo:

```
void setup(){

size(500,500); //Canvas de 500 x 500 pixeles

background(255)//Fondo blanco

}

void draw(){

arc(250, 250, 100, 100, 0, PI + QUARTER_PI); //Un arco que comienza en el ángulo 0 y termina en un cuarto de PI.

}
```



