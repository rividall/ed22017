
Enero[] e;

Table tabla;

void setup() {
  size(500, 500);
  
  tabla = loadTable("baseDatos.csv", "header");

  e = new Enero[tabla.getRowCount()]; 

  
  for (int i = 0; i < tabla.getRowCount(); i++) {
 
    TableRow row = tabla.getRow(i);

    String fecha = row.getString("D");
    int max = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");
    
    e[i] = new Enero(fecha, max, min);
  }
}

void draw() {
  background(255);
  
   for (int i = 0; i < e.length; i ++) {
     e[i].dia();
  }
}