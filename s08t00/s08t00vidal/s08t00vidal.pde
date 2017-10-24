// comentarios
int ancho = 50;
int alto = 50;
int posX = 0;
int posY = 0;
int vel = 5;
int velY =6;
boolean col;
color c1 = color(218, 40, 245);
color c2 = color(254, 240, 5);

void setup() {
  size(600, 400);
  background(255);
}

void draw() {
  background(128);
  fondo(100,true);
  player(10, 50, 8);
  ficha(posX, posY, ancho, alto);
  posX = posX+vel;
  posY = posY+velY;


  if (posX>width-ancho && posY > mouseY-90 && posY <mouseY+90 ) {
    vel = vel*-1;
  } else if (posX ==0 && vel == -5) {
    vel = vel*-1;
  }
  if (posY>height-alto) {
    velY = velY*-1;
  } else if (posY ==0 && velY == -6) {
    velY = velY*-1;
  }
} 

void ficha( int posX, int posY, int h, int w) {
  rect(posX, posY, h, w);
  rect(posX+10, posY+10, h-20, w-20);
}

void player(int pos, int size, int peso) {
  if (col) {
    stroke(0);
  } else {
    stroke(255);
  }
  strokeWeight(peso);
  line(width-pos, mouseY-size, width-pos, mouseY+size);
  strokeWeight(1);
}

void fondo(int cant, boolean fig){
  if(fig){
    for(int i=0;i<50;i++){
      for(int j=0;j<50;j++){
        noStroke();
      ellipse(i*cant,j*cant,10,10);
      stroke(1);
      }
    }
  }else {
    for(int i=0;i<50;i++){
      for(int j=0;j<50;j++){
        noStroke();
      rect(i*cant,j*cant,10,10);
      stroke(1);
      }
    }
  }
}

void mousePressed() {

  posX=0;
  posY=0;
  vel=5;
  velY=6;
}

void keyPressed() {
  if (key == 'a') {
    fill(c1);
  } else if (key=='s') {
    fill(c2);
  }

  if (key=='d') {
    col=!col;
  }
}