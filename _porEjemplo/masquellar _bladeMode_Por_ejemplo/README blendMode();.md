blendMode();

Syntaxis: blendMode(MODE);

Descripción: forma en que se combinan  los pixeles  de color de distintas figuras. Existen distintas formas de hacer la mezcla:

BLEND: la que viene por defecto, Interpolacion lineal de los colores C= A*factor +B.

ADD: se suman los valores  con una pantalla blanca, (A*factor +B,255).

SUBTRACT: se suman los valores  con una pantalla negra, (A*factor +B,0).

DARKEST: sólo el color más oscuro se sobrepone, C = min(A*factor, B).

LIGHTEST: sólo el color más claro se sobrepone, C = min(A*factor, B).

DIFFERENCE: resta los colores de la imagen subyacente.

EXCLUSION: Parecido a DIFFERENCE, pero menos extremo.

MULTIPLY: se multiplican los colores, el resultado siempre va a hacer más oscuro.

SCREEN: lo opuesto a MULTIPLY, usa los valores inversos del color.

REPLACE: los pixeles se remplazan por otro valor, no ocupa la transparencia.