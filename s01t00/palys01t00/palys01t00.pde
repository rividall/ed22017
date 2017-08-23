//Expresión Digital II - Diseño Digital - UDD - 2017
//Paulina Descouvieres
//s01t00paly

//Colores usados en la composición
  color v = color(111, 197, 166);
  color b = color(226, 226, 225);
  color g = color(91, 91, 91);
  color go = color(50, 51, 51);
  
//Tamaño del canvas
size(600, 600);

//Color del fondo
background(0);

//Cuadrilátero gris
noStroke();
fill(go);
rect(50, 50, 500, 500);

//Cuatriláteros que juntos forman el grande en el centro
noStroke();
fill(v);
quad(150, 150, 300, 0, 600, 300, 450, 450);
fill(g);
quad(0, 300, 150, 150, 450, 450, 300, 600);

//Cuatriláteros que juntos forman el pequeño en el centro
noStroke();
fill(v);
quad(225, 225, 375, 375, 300, 450, 150, 300);
fill(g);
quad(300, 150, 450, 300, 375, 375, 225, 225);

//Cuadrilátero sin relleno que enmarca el cuadrilatero pequeño del centro
strokeWeight(15);
stroke(b);
noFill();
quad(300, 150, 450, 300, 300, 450, 150, 300);

//Elipses en las esquinas
noStroke();
fill(g);
ellipse(525, 75, 125, 125);
fill(v);
ellipse(75, 525, 125, 125);

//Puntos en el centro de las elipses
strokeWeight(25);
stroke(b);
point(525, 75);
point(75, 525);

//Líneas que delinean la parte superior derecha del cuadrilátero grande
strokeWeight(15);
stroke(b);
line(0, 0, 150, 150);
line(150, 150, 300, 0);
line(300, 0, 600, 300);
line(600, 300, 450, 450);
line(450, 450, 600, 600);