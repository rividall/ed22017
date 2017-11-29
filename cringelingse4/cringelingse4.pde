Catalina[] rocio;
Table tabla;

void setup () {
  fullScreen();
  tabla = loadTable("baseDatos.csv", "header");
  rocio = new Catalina[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String a = row.getString("year");
    String m = row.getString("mes");
    String d = row.getString("dia");
    int maxima = row.getInt("Max PuntoRocio");
    int mean = row.getInt("Mean PuntoRocio");
    int minima = row.getInt("Min PuntoRocio");
    rocio[i] = new Catalina(a, m, d, maxima, mean, minima);
  }
}

void draw() {
  background(30);
  for (int i = 0; i < rocio.length; i ++) {
    rocio[i].tetxomes();
    rocio[i].circulogeneral();
    rocio[i].primavera();
    rocio[i].verano();
    rocio[i].invierno();
    rocio[i].otono();
  }
}