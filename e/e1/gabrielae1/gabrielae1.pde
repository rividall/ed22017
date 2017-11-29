Clima [] objeto;

Table tabla;

void setup() {
  size (500, 500);
  tabla = loadTable("baseDatos.csv", "header");

  int total = tabla.getRowCount();
  objeto = new Clima[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String ano = row.getString("A");
    String mes = row.getString("M");
    String dia = row.getString("D");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    
    objeto[i] = new Clima(ano, mes, dia, maxima, minima);
  }
}


void draw() {
  background(250);
  for (int i = 0; i < objeto.length; i ++) {
    objeto[i].intento();
  }
}