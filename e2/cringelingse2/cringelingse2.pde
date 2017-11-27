Objeto[] dias;
Table tabla;

void setup () {
  fullScreen();
  tabla = loadTable("baseDatos.csv", "header");
  dias = new Objeto[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String a = row.getString("año");
    String m = row.getString("mes");
    String d = row.getString("dia");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    dias[i] = new Objeto(a, m, d, maxima, minima);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < dias.length; i ++) {
    dias[i].tetxomes();
    dias[i].circulogeneral();
    dias[i].primavera();
    dias[i].verano();
    dias[i].invierno();
    dias[i].otono();
  }
}