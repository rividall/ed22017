// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre
// Expresión Digital II - 2017
// Gabriela Navarro Risopatrón
// gabrielae00

Aruba [] clima;
Table tabla;
PFont grande, chico;
int  z, c;

void setup() {
  size(1000, 800);
  background(0);

  //Variables
  c= 1;
  tabla = loadTable("Aruba.csv", "header");

  //Tipografía
  grande= createFont("HelveticaNeue-Bold", 20);
  chico = createFont("HelveticaNeue-Light ", 15);

  clima = new Aruba[tabla.getRowCount()];


  for (int i = 0; i < tabla.getRowCount(); i++) {
    int in = i;
    TableRow fila = tabla.getRow(i);

    //Temperatura
    int maxT = fila.getInt("MaxT");
    int meanT = fila.getInt("MeanT");
    int minT = fila.getInt("MinT");

    //Humedad
    int maxH = fila.getInt("MaxH");
    int meanH = fila.getInt("MeanH");
    int minH = fila.getInt("MinH");

    //Viento
    int maxW = fila.getInt("MaxW");
    int meanW = fila.getInt("MeanW");

    //Nubes
    int nubes = fila.getInt("CloudCover");

    //Precipitación
    float prec = fila.getFloat("Precipitation");

    z = 30;

    clima[i] = new Aruba(in, maxT, meanT, minT, nubes, maxH, meanH, minH, maxW, meanW, prec);
  }
}

void draw() {

  if (c == 1) {
    background(0);
    textFont(chico);
    fill(255);
    text("Año", 30, 45);
    text("Humedad", 30, 60);
    text("Aruba, 2015", 30, 30);
    text("Teclas a, b, c", 500, 20);
  }

  if (c == 2) {
    background(0);
    textFont(chico);
    fill(255);
    text("Semestre", 30, 45);
    text("Temperatura", 30, 60);
    text("Aruba, 2015", 30, 30);
    text("Teclas a, b, c", 500, 20);
  }
  if (c == 3) {
    background(0);
    textFont(chico);
    fill(255);
    text("Mes", 30, 45);
    text("Nubes - Precipitación", 30, 60);
    text("Aruba, 2015", 30, 30);
    text("Teclas a, b, c", 500, 20);
  }
  for (int i = 0; i < clima.length; i++) {
    if (c == 1) {

      clima[i].humedad();
    }
    if (c == 2) {
      clima[i].temperatura();
    }
    if (c == 3) {
      clima[i].nubes();
      clima[i].precipitacion();
    }
  }
}

void keyPressed() {

  if (key == 'a') {
    c = 1;
    z = 51;
  }

  if (key == 'b') {
    c = 2;
    z = 180;
  }

  if (key == 'c') {
    c = 3;
    z = 30;
  }
}