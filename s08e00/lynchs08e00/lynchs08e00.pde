int[]x = new int[3];
int[]y = new int[3];
int[]tam = new int[5];
int[]colors = new color[5];
int colorSel;
int intSel;
int ySel;
int tamSel;
void setup() {
  size(400, 400);
  colors[0] = #FF00F0;
  colors[1] = #00EAFF;
  colors[2] = #FCFF00;
  colors[3] = #000000;
  colors[4] = #FF00F0;
  x[0] = 50;
  x[1] = 250;
  x[2] = 50;

  y[0] = 50;
  y[1] = 250;
  y[2] = 50;

  tam[0] = 40;
  tam[1] = 60;
  tam[2] = 80;
  tam[3] = 100;
  tam[4] = 120;
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(7);
  fill(colors[colorSel]);
  rect(x[intSel], y[ySel], tam[tamSel], tam[tamSel]);
}

void keyPressed() {
    if (intSel>1) {
    intSel=0;
    ySel++;
  }
    if (ySel>1) {
    ySel=0;

  }
  
  if (colorSel>3) {
    colorSel = 0;
  }
    intSel++;
  colorSel++;
  
  
  tamSel= (int)random(tam.length);
}