// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital - 6to semestre - Expresión Digital II
// Ricardo Vidal
/*
 El programa muestra cada dia del año con la dirección del viento. Su velocidad máxima se aprecia en la flecha 
 de mayor tamaño. El color de la flecha varia según la temperatura máxima experimentada ese día.
 Girando, aparecen en mayor o menor tamaño elementos que varían de azul a gris dependiendo de la cantidad de
 precipitación ocurrida esa semana.
 */

Table table;
int fila;
int days;
int select = 0;
int semanaDay = 0;
int precipitation;
int pantalla = 0;
int weekS = 0;
int weekO = 7;
int visu = 0;
String[] semana = {"Jueves", "Viernes", "Sábado", "Domingo", "Lunes", "Martes", "Miércoles"};
PFont fuente;
Dia[] dia;
String titulo;


void setup() {
  size(700, 700);
  table = loadTable("Reykjavik_Iceland.csv", "header");
  dia  = new Dia[table.getRowCount()]; 
  days = table.getRowCount();
  fuente = createFont("Baron Neue.otf", 20);
  for (int i = 0; i< table.getRowCount(); i++) {

    TableRow fila = table.getRow(i);
    titulo = fila.getString("GMT");
    int maxT = fila.getInt("maxT");
    int meanT = fila.getInt("meanT");
    int minT = fila.getInt("minT");
    int maxWSpeed = fila.getInt("MWS");
    int meanWSpeed = fila.getInt("meanWS");
    int wDir = fila.getInt("WindDirDegrees");
    float precSum = fila.getInt("precSum");
    precipitation = fila.getInt("Precipitationmm");
    dia[i] = new Dia(precSum, maxWSpeed, meanWSpeed, wDir, precipitation, i, minT, meanT, maxT, i);
  }
}

void draw() {
    textFont(fuente);
  background(10);

  if (pantalla == 0) {
    dia[select].display();
    dia[select].lluvia(50);
        dia[select].datos();
  }

  if (pantalla == 1) {
    for (int i = weekS; i < weekO; i++) {    
      if (visu == 0) {
        dia[i].display();
        dia[i].lluvia((i-weekS)*20);
      }
      if (visu == 1) dia[i].temps();
            dia[weekS].datos();
    }
  }
}


void keyPressed() {

  if (key == CODED) {
    for (int i = 0; i < days; i++) {
      dia[i].transp = 0;
    }
    if (keyCode == UP) tecUp();
    if (keyCode == DOWN) tecDown();
    if (keyCode == LEFT) tecLeft();   
    if (keyCode == RIGHT)  tecRight(); 

    if ( select < 0 ) select = 0;
    if ( select > 364) select = 364;
    if ( weekS < 0 ) weekS = 0;
    if ( weekS > 357 ) weekS = 357;
  }
  if (key == 'a') pantalla = 0;
  if (key == 's') pantalla = 1;
}