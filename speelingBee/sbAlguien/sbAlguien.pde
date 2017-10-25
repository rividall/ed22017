// una línea que retrocede y cambia en alguna parte
int x = 200;
int y = 150;
int c = 0;

void setup() {
  background(255, 255, 255);
}
void draw() {
  if (c < height/2) {
    line(x, y, x+10, y);
    x--;
  } else 
  {
    line(x, y, x+10, y);
    y++;
  }
  c++;
}