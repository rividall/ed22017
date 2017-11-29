Variables[] objetos;

Table tabla;

void setup(){
  size(300,300);
  tabla = loadTable("baseDatos.csv","header");
  objetos = new Variables[tabla.getRowCount()];
  
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    
    String fecha = row.getString("A");
    String dia = row.getString("D");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    objetos[i] = new Variables(fecha, dia, maxima, minima);
  }
}

void draw(){
  background(253);
  for (int i = 0; i < objetos.length; i++){
    objetos[i].function();
  }
}