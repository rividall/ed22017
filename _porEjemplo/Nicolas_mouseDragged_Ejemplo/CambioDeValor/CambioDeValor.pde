int value = (#fb3838);
void setup () {
  size (600,600);
background (0);


}
void draw() {

  fill(value);
  rectMode(CENTER);
  rect(300,300,300,300);
    
}

void mouseDragged() 
{
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}