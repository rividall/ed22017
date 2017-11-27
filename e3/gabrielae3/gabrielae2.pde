Gabriela [] clima;

Table tabla;

void setup() {
  size(800, 800);
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");

  int total = tabla.getRowCount();
  clima = new Gabriela[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String dia = row.getString("PET");
    String mes = row.getString("PET");
    String ano = row.getString("PET");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    clima[i] = new Gabriela(dia, mes, ano, maxima, minima);
  }
}

void draw() {
  background(253);
  
  for (int i = 0; i < clima.length; i ++) {
    clima[i].funcion();
    clima[i].funcion1();
  }
}