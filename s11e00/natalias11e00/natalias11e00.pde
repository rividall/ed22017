//variable 
Natalia n;

void setup() {
size(500,500);
n = new Natalia(10);
}

void draw() {
background(#FFFFFF);
n.domov();
n.onda(10, frameCount * .5);
}