beginShape()

El uso de begin shape() y end shape() permite crear formas más complejas. 
beginShape() parte grabando los vértices para una forma y endShape() termina de grabar. 

el valor del parámetro dice que tipo de formas se pueden crear a partir de vertices dados.

Sin un modo específico, la forma puede ser cualquier polígono irregular. 
los parametros disponibles para beginShape() son puntos, lineas, triangulos_fan, triángulos_strip, cuadriláteros y cuadrilateros_strip.

después de llamar a la función beginShape(), una serie de vertex()  deben seguir comandos.
para parar el dibujo dela forma, se llama a endShape(). 
La función vertex()  con dos parámetros específicos en posición 2D y la función vertex() con tres parámetros especieicos para posición 3D.
Cada forma debe ser fuera de linea con el color de grosor y relleno con el relleno de color.

 Ejemplo:

beginShape();

vertex(30, 20);

vertex(85, 20);

vertex(85, 75);

vertex(30, 75);

endShape(CLOSE);

 

beginShape(POINTS);

vertex(30, 20);

vertex(85, 20);

vertex(85, 75);

vertex(30, 75);

endShape();

 

beginShape(LINES);

vertex(30, 20);

vertex(85, 20);

vertex(85, 75);

vertex(30, 75);

endShape();

 

noFill();

beginShape();

vertex(30, 20);

vertex(85, 20);

vertex(85, 75);

vertex(30, 75);

endShape();

 

noFill();

beginShape();

vertex(30, 20);

vertex(85, 20);

vertex(85, 75);

vertex(30, 75);

endShape(CLOSE);

 

beginShape(TRIANGLES);

vertex(30, 75);

vertex(40, 20);

vertex(50, 75);

vertex(60, 20);

vertex(70, 75);

vertex(80, 20);

endShape();

 

beginShape(TRIANGLE_STRIP);

vertex(30, 75);

vertex(40, 20);

vertex(50, 75);

vertex(60, 20);

vertex(70, 75);

vertex(80, 20);

vertex(90, 75);

endShape();

 

beginShape(TRIANGLE_FAN);

vertex(57.5, 50);

vertex(57.5, 15); 

vertex(92, 50); 

vertex(57.5, 85); 

vertex(22, 50); 

vertex(57.5, 15); 

endShape();

 

beginShape(QUADS);

vertex(30, 20);

vertex(30, 75);

vertex(50, 75);

vertex(50, 20);

vertex(65, 20);

vertex(65, 75);

vertex(85, 75);

vertex(85, 20);

endShape();

 

beginShape(QUAD_STRIP); 

vertex(30, 20); 

vertex(30, 75); 

vertex(50, 20);

vertex(50, 75);

vertex(65, 20); 

vertex(65, 75); 

vertex(85, 20);

vertex(85, 75); 

endShape();

 

beginShape();

vertex(20, 20);

vertex(40, 20);

vertex(40, 40);

vertex(60, 40);

vertex(60, 60);

vertex(20, 60);

endShape(CLOSE);

 



endShape()

La transformación como traslación, rotación y escala no nunciona si no se usa beginShape(). 
tambien no es posible de usar otra forma, como el elipse o el rectángulo sin usar beginShape()

El renderer p2d y p3d permite el uso de stroke y fill, para ser alterado en el pervertí basis, pero no el defecto del renderer.

Configuración como strokeWeight(); strokeCap() y strokeJoin() no pueden ser cambiados mientras este adentro de beginShape()/endShape() bloqueado con cualquier renderer.



Ejemplo:

noFill();

beginShape();

vertex(20, 20);

vertex(45, 20);

vertex(45, 80);

endShape(CLOSE);

beginShape();

vertex(50, 20);

vertex(75, 20);

vertex(75, 80);

endShape();