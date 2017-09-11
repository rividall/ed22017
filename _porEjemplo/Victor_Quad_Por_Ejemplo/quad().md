# quad()
La función de dibujo **quad()** es una forma de representar figuras de cuatro lados basadas en cuatro vértices unidos por rectas, ésta debe ser representada sabiendo que el primer punto se conectará con el segundo, este con el tercero y por último con el cuarto, por ende, **el orden es indispensable** 

*siempre se conectará (x1,y1) con (x2,y2)*
Esta funcion debe ser escrita con ocho parámetros de la siguiente forma: 
```
quad(x1, y1, x2, y2, x3, y3, x4, y4); 
```

###  Por ejemplo:

```
quad(120, 120, 400, 120, 400, 400, 120, 400);
```
Que formará un rectangulo regular de 280 pixeles de lado.

Aquí el orden, como dijimos, es muy importante, puesto que si esta vez escribimos:

```
quad(120, 120, 400, 400, 400, 120, 120, 400);
```
Se formará una figura completamente distinta, una especie de reloj de arena, puesto unimos los puntos de manera distinta.

Una buena forma para relacionarse con esta función es pensar en ella como la herramienta *Tiralineas* de **Illustrator** ya que su funcionamiento es básado en puntos igualmente y genera elementos sólidos con relleno con una lógica similar.
