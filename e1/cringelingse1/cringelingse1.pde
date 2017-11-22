Catalina[] objetos;

Table tabla;

void setup () {
  size(500, 500);
  tabla = loadTable("baseDatos.csv", "header");

  int total= tabla.getRowCount();
  objetos = new Catalina[total];
  
 // objetos = new Catalina[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow fila = tabla.getRow(i);

    String fecha = fila.getString("WAT");
    int maxima = fila.getInt("Max TemperatureC");
    int minima = fila.getInt("Min Temperature");

    objetos[i] = new Catalina(fecha, maxima, minima);
  }
}

  void draw() {
    background(253);
    // Uso de los objetos como siempre
    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].funcion();
    }
  }