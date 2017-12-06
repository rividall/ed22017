Entero [] e;
Meses [] m;
Table tabla;
boolean v;
PFont fuente, light, negrita;

void setup() {
  size (1280, 760);
  tabla = loadTable("Madagascar.csv", "header");
  fuente = loadFont("BernerBasisschrift1-48.vlw");
  light = loadFont("DIN-Light-48.vlw");
  negrita = loadFont("DIN-Medium-48.vlw");
  e = new Entero[tabla.getRowCount()];
  m = new Meses[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    int maxt = row.getInt("Max TemperatureC");
    int mint = row.getInt("Min TemperatureC");
    int precipitacion = row.getInt("Precipitationmm");
    int maxvis = row.getInt("Max VisibilityKm");
    int minvis = row.getInt("Min VisibilitykM");
    int rocio = row.getInt("Dew PointC");
    int nubes = row.getInt("CloudCover");

    int dia = row.getInt("Dia");
    int mes = row.getInt("Mes");

    e[i] = new Entero(maxt, rocio, mint, precipitacion, i);
    m[i] = new Meses(minvis, maxvis, nubes, dia, mes, i);
  }
}

void draw() {
  background(0);
  textSize(30);
  textFont(fuente);
  text("2015, Antananarivo, Madagascar", 10, 50);

  if (v) {
    textFont(negrita);
    textSize(25);
    text("Visualización meses", 25, 610);
    textFont(light);
    textSize(18);
    text("Amarillo = Máxima visibilidad", 25, 640);
    text("Verde = Mínima visibilidad", 25, 670);
    text("Morado = Nubes", 25, 700);
    for (int i = 0; i < tabla.getRowCount(); i++) {
      m[i].anillos();
    }
  }
  if (!v) {
    textFont(negrita);
    textSize(25);
    text("Visualización 365 días", 25, 580);
    textFont(light);
    textSize(18);
    text("Amarillo = Máxima punto de rocío", 25, 610);
    text("Morado = Máxima temperatura", 25, 640);
    text("Celeste = Máxima humedad", 25, 670);
    text("Rosado = Máxima precipitación", 25, 700);
    translate(width/2, height/2);
    for (int i = 0; i < tabla.getRowCount(); i++) {
      e[i].rocio();
      e[i].maxtem();
      e[i].mintem();
      e[i].lluvia();
    }
  }
}

void keyPressed() {
  if (key == 'v')
    v = (!v);
}