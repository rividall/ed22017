/*Joaquín Domínguez - Expresión digital 2 - 18/10/17*/
boolean t = false; // se declara el nombre del booleano
int grande, chica, eleccionNumeros, cambioColor, c, p; // se declaran las variables
int[] numeros = new int[4]; // se declaran listas de valores
int[] colores = new int[4];

void setup() {  

  size(1280, 500);
  noFill();

  numeros[0] = 0; // Se declaran los valores numericos
  numeros[1] = 50;
  numeros[2] = 100;
  numeros[3] = 150;

  colores[0] = color(255); //Se declaran los colores
  colores[1] = color(#59A260);
  colores[2] = color(#FFD64D);
  colores[3] = color(0);
  
}
void draw() {

  strokeWeight(5);
  c = color((colores[cambioColor]));
  p = numeros[eleccionNumeros];

  if (t) {
    strokeWeight(10);
  }
  background(255);
  uno(230, 187, 68, 250); //Primera Función
  pushMatrix();
  translate(350, 0);//Se mueve la matrix
  dos(250, 250); //Segunda Función
  popMatrix();
  pushMatrix();
  translate(750, 0); //Se mueve la matrix
  tres(250, 250); //Tercera Función
  popMatrix();
}
void uno(int pos, int grande, int chica, int posy) {
  //función 1
  fill(255); 
  ellipse(pos, posy, grande, grande);
  fill(c);
  ellipse(pos, posy - 90, chica+p, chica+p);
  ellipse(pos, posy + 90, chica+p, chica+p);
  ellipse(pos - 90, posy, chica+p, chica+p);
  ellipse(pos + 90, posy, chica+p, chica+p);
  fill(255); 
  rect(pos - 60, posy - 60, 40, 40);
  rect(pos + 20, posy - 60, 40, 40);
  rect(pos + 20, posy + 20, 40, 40);
  rect(pos - 60, posy + 20, 40, 40);
  fill(c);
  arc(pos + 1, posy + 1, 55 + p, 55 + p, 0 + p, QUARTER_PI*2 + p, PIE);
  arc(pos + 1, posy + 1, 55 + p, 55 + p, PI + p, QUARTER_PI*6 + p, PIE);
}
void dos(int pos2, int s) {
  //función 2
  fill(c);
  ellipse(pos2, pos2, s + p, s + p);
  fill(255);
  triangle(pos2, pos2 - 122, pos2 + 105, pos2 + 61, pos2 - 106, pos2 + 61);
  fill(c);
  ellipse(pos2, pos2, s - 129 + p, s - 129 + p);
  fill(255);
  triangle(pos2, pos2 - 58, pos2 + 50, pos2 + 28, pos2 - 50, pos2 + 28);
  fill(c);
  ellipse(pos2, pos2, s - 193+ p, s - 193+ p);
}
void tres(int pos3, int s3) {
  //función 3
  fill(c);
  arc(pos3, pos3, s3, s3, PI+p, PI*2+p, CHORD);
  fill(255);
  arc(pos3, pos3, s3, s3, 0+p, PI+p, CHORD);
  ellipse(pos3, pos3, s3 - 177, s3 - 177);
}

void mousePressed() {
  //si se hace click ocurre esto
  cambioColor ++;
  if (cambioColor > 3) {
    cambioColor = 0;
  }
  //cambioColor = (int)random(colores.length);
}
void keyPressed() {
  //si se presiona la tecla q ocurre esto
  if (key =='q') {
    eleccionNumeros ++;
    if (eleccionNumeros > 3) {
      eleccionNumeros = 0;
    }
  }
  if (key == 'w') {
    // si se presiona la tecla w ocurre esto
    t = !t;
  }
}