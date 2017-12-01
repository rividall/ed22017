Rocio[] rocio;
//Humedad[] hum;
//Viento[] wind;
Table tabla;

void setup () {
  fullScreen();
  tabla = loadTable("baseDatos.csv", "header");
  rocio = new Rocio[tabla.getRowCount()];
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String a = row.getString("year");
    String d = row.getString("dia");
    int m = row.getInt("mes");
    int maxima = row.getInt("Max PuntoRocio");
    int mean = row.getInt("Mean PuntoRocio");
    int minima = row.getInt("Min PuntoRocio");
    rocio[i] = new Rocio(a, d, m, maxima, mean, minima);
    // rocio[i] = new Rocio(a, m, d, maxima, minima);
  }
}

void draw() {
  background(30);
  for (int i = 0; i < rocio.length; i ++) {
    rocio[i].tetxomes();
    rocio[i].circulogeneral();
    rocio[i].verano();
    rocio[i].otono();
    rocio[i].invierno();
    rocio[i].primavera();
  }
}