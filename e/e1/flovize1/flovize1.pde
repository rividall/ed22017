// Array de objetos
Clase[] objetos;

Table tabla;

void setup() {
  
  size(500,500);
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("baseDatos.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  objetos = new Clase[total]; 

  // lo mismo se puede escribir en una línea de código
  objetos = new Clase[tabla.getRowCount()]; 

  ///   4    /////////////////////////////////////////////////////////////////////////////////////
  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato
  ////////////////////////////////////////////////////////////////////////////////////////////////

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
  // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

  // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor      // La paridad debe ser exacta en caracteres
  // Una variable del constructor - por cada variable del dato (que queramos)
    String fecha = row.getString("A");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    
    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha, maxima, minima);
  }
}

void draw() {
  background(253);
  // Uso de los objetos como siempre
   for (int i = 0; i < objetos.length; i ++) {
     objetos[i].funcion();
  }
}