// Nicolás Troncoso
// ED2UDD
// Demo línea recta hecha de puntos modificables
float x;

void setup () {
  size(800, 450);
	x = 1;
	// blendMode(SUBTRACT); // BLEND ADD SUBTRACT DARKEST LIGHTEST DIFFERENCE EXCLUSION MULTIPLY SCREEN REPLACE
}

void draw() {
	background(255);
	// beginShape();
	for (int j = 0; j < height; j += 220) {
		for (int i = 0; i < width; i += 15) {
		  // curveVertex(i, j + 10 * sin(i + x));
			noStroke();
			fill(0);

		  ellipse(i, j + 20 * sin(i + x), 5, 5);
			x+=.00005;
		}
	}
	// endShape();
}
