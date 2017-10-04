//
int x, y, d, f; //puntos de partida
float col1, col2;//define colores para cuando se aprete tecla
float tam2;//tamaño a ser modificado al apretar tecla

//blanco = color(#FFFFFF); //define tono del color
//negro = color(#000000); //define tono del color
//burdeo = color(#751212); //define tono del color
//verde = color(#D7F283); //define tono del color

void setup() {
  size(900, 300);//tamaño de canvas
  background (#D7F283); //fondo color verde
  tam2 = 10;//tamaño del circulo que cambia de tamaño
   d = 0;//punto de partida en eje x de la pelota que pinta el fondo
  f = 150;//punto de partida en eje  de la pelota que pinta el fondo
}

void circulos (int x, int y, float tam) { //int x = eje x, int y = eje y, float tam variable tamaño
  fill(col2); //color de las ellipses blanas
  ellipse(x, y, tam, tam); //define elipse, posición y tamaño
}

void diamantes (int x, int y) {
  fill(col1); //color de las ellipses blanas
  quad(x-20, y, x, y-20, x+20, y, x, y+20); //definer quad según valor de x e y definidos en void draw
}
void lin(int d, int f, int cambio) { //argumento lo que esta dentro del () o cambiar por color

  if (cambio ==1) {
    noStroke(); //para no dejar rastro del translado de la ellipse
    ellipse (d, f, 400, 400);//punto de partida y tamaño de ellipse (400)
  }
}
void draw() {
  lin(d, f, 1); //define dirección
  d++;//velocidad de ellipse que pinta

  circulos(150, 150, tam2);//define primera ellipse

  diamantes(450, 50);  //450 valor en x, 50 valor en y
  diamantes(450, 150); //450 valor en x, 150 valor en y
  diamantes(450, 250); //450 valor en x, 250 valor en y

  circulos(650, 50, 60);//define ellipse diagonal
  circulos(750, 150, 60);//define ellipse diagonal
  circulos(850, 250, 60); //define ellipse diagonal
}

void keyPressed () {
  if (key == 'a') { //al apretar "a" cambia de color y se achica primer circulo
    col1 = 255;//cambio de color
    col2 = 0; //cambio de color
    tam2 /= 2;//se achica primer circulo
  }
  if (key == 's') {//al apretar "s" cambia de color y se agranda primer circulo
    col1 = 0;//cambio de color
    col2 =255;//cambio de color
    tam2 *=3;//se agranda primer circulo
  }
}   