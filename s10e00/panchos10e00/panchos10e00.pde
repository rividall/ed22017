Pancho pancho;

void setup() 
{
  size(600, 600);
  smooth();
  pancho = new Pancho(400, 400);
}

void draw() { 
  background(0);
  pancho.run();
  pancho.run();
} 