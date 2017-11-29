Entero [] e;
Meses [] m;
Table tabla;
boolean v;

void setup() {
  size (1280, 760);
  tabla = loadTable("Madagascar.csv", "header");
  e = new Entero[tabla.getRowCount()];
  m = new Meses[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    int maxt = row.getInt("Max TemperatureC");
    int mint = row.getInt("Min TemperatureC");
    int humedad = row.getInt("Max Humidity");
    int precipitacion = row.getInt("Precipitationmm");
    int vis = row.getInt("Min VisibilitykM");
    int rocio = row.getInt("Dew PointC");

    int dia = row.getInt("Dia");
    int mes = row.getInt("Mes");

    e[i] = new Entero(maxt, rocio, humedad, precipitacion, i);
    m[i] = new Meses(maxt, mint, vis, dia, mes, i);
  }
}

void draw() {
  background(0);
  if (v) {
    for (int i = 0; i < tabla.getRowCount(); i++) {
      m[i].anillos();
    }
  }
  if (!v) {
    translate(width/2, height/2);
    for (int i = 0; i < tabla.getRowCount(); i++) {
      e[i].rocio();
      e[i].temperatura();
      e[i].humedad();
      e[i].lluvia();
    }
  }
}

void keyPressed() {
  if (key == 'v')
    v = (!v);
}