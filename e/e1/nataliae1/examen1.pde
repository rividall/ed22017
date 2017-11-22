Diasenero [] de;
Table tabla;

void setup(){
size(200, 200);
background(#000000);
tabla = loadTable("baseDatos.csv", "header");//cargar archivo con parametros de cabecera

//inicializar el array con cantidad de filas del archivo
int total = tabla.getRowCount();
de = new Diasenero[total];

for(int i = 0; i < tabla.getRowCount(); i++){//contador pasa por todas las filas
  TableRow row = tabla.getRow(i);//creamos un nuevo obj de tipo TableRow 
                                   //con la info de cada fila
  
  String fecha = row.getString("A");
  int maxima = row.getInt("Max TemperatureC");
  int minima = row.getInt("Min TemperatureC");
  
  de [i] = new Diasenero(fecha, maxima, minima);
}
}

void draw() {
  background(255);
  // Uso de los objetos como siempre

  for (int i = 0; i < de.length; i ++) {
    de[i].fu();
  }
}
  