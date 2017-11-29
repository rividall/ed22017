color color1;
color color2;

void setup() {
  size(500, 400);
  colorMode(HSB, 100);

  color1 = color(random(100), 100, 100);
  color2 = color(random(100), 100, 30);
}

void draw() {
  for (int y = 0; y < height; y++) {
    float c = map(y, 0, height, 0, 1);  // Se utiliza map para que se seleccione y reasigne un numero de un rango a otro
    color newc = lerpColor(color1, color2, c);
    stroke(newc);
    line(0, y, width, y);
  }
}