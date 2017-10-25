//VARIABLES Falta poner el nombre
Sofia [] s = new Sofia[15];

void setup() {
  size(500, 500);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Sofia(random(20));
  }
}

void draw() {
  background(#000000);
  for (int i = 0; i < s.length; i++) {
    s[i].juntas();
  }
}