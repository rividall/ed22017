int a, tam;
color gr, ce;
boolean b;

void setup() {
  fullScreen();
  background(0);
  gr = color(111, 111, 111);
  ce = color(143, 236, 200);
  a = 50;
  tam = 5;
  b = true;
}

void draw() {
  background(gr);
  grilla();
}

void grilla() {
  for (int i = 0; i <= width; i+=a) {
    for (int j = 0; j <= height; j += a) {
      noStroke();
      fill(ce);
      ellipse(i, j, tam, tam);
      
   if (b) {
    ce = color(143, 236, 200); // celeste
  } else if (!b) {
    ce = color(255, 57, 94); // rosado
  }     
    }
  }
}

void keyPressed() {  
  if (keyCode == UP) {a++;}
  if (keyCode == DOWN) {a--;}
  
  if (keyCode == RIGHT) {tam++;}
  if (keyCode == LEFT) {tam--;}
  
  if (keyCode == CONTROL) {b = !b;}
}