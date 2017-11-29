// Array de objetos
Sofia[] objetos;
Table tabla;

void setup() {
  size(500, 500);
  tabla = loadTable("baseDatos.csv", "header");
  int total = tabla.getRowCount();
  objetos = new Sofia[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String fecha = row.getString("A");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int mean = row.getInt("Mean TemperatureC");

    objetos[i] = new Sofia(fecha, maxima, minima);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].prueba();
  }
}