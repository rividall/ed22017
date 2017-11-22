
Clase[] objetos;

Table tabla;

void setup() {
  size(600,600);
  tabla = loadTable("baseDatos.csv", "header");

  objetos = new Clase[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {

    TableRow row = tabla.getRow(i);


    String fecha = row.getString("D");
    int maxima = row.getInt("Max TemperatureC");
    int media = row.getInt("Mean TemperatureC");
    int minima = row.getInt("Min TemperatureC");
  
    objetos[i] = new Clase(fecha, maxima, media, minima);
  }
}

void draw() {
  background(253);

   for (int i = 0; i < objetos.length; i ++) {
     objetos[i].funcion();
  }
}