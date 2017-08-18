//mi primer commit

//joaquín domínguez

size(500, 500); //Canvas

noStroke();

fill(139, 69, 19);

arc(250, 110, 300, 300, PI, PI*2); //Frente

noStroke();

fill(139, 69, 19);

quad(100, 100, 400, 100, 420, 400, 80, 400); //Mandíbula

fill(230, 20, 20);

noStroke();

rect(150, 300, 200, 50); //Rectángulo labio

noStroke();

fill(230, 20, 20);

ellipse(150, 325, 50, 50); //Elipse labio 1

noStroke();

ellipse(350, 325, 50, 50); //Elipse labio 2

stroke(0, 0, 0);

line(150, 325, 345, 325); //Linea boca

noStroke();

fill(139, 69, 19);

quad(420, 400, 300, 450, 200, 450, 80, 400); //Barbilla

fill(0, 0, 0);

arc(330, 150, 75, 100, QUARTER_PI, QUARTER_PI*7, PIE); //Ojos

arc(180, 150, 75, 100, QUARTER_PI, QUARTER_PI*7, PIE);

point(10, 10); //Puntos en las esquinas

point(490, 10);

point(10, 490);

point(490, 490);