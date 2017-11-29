color color1;
color color2;
float c = 0;

void setup() {
  size(500, 400);
  colorMode(HSB, 100);

  color1 = color(random(100), 100, 100);
  color2 = color(random(100), 100, 30);

  for (int y = 0; y < height; y++) {                // y = top
    color newc = lerpColor(color1, color2, c);      // Para amt, se necesita una variable float entre 0.0 y 1.0
    stroke(newc);                                   // new c = new color entre color1 y color2.
    line(0, y, width, y);
    c += 0.01;
  }
}

void draw() {
}