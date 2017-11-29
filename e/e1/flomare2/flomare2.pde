// Array de objetos
Florencia[] lineas;

Table tabla;

void setup() {
  size(500,500);
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("baseDatos.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  lineas = new Florencia[tabla.getRowCount()]; 

  ///   4    /////////////////////////////////////////////////////////////////////////////////////
  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato
  ////////////////////////////////////////////////////////////////////////////////////////////////

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
  // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

  // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor      // La paridad debe ser exacta en caracteres
  // Una variable del constructor - por cada variable del dato (que queramos)
    String fecha = row.getString("PET");
    int maximat = row.getInt("Max TemperatureC");
    int minimat = row.getInt("Min TemperatureC");
    int maximah = row.getInt("Max Humidity");
    int minimah = row.getInt("Min Humidity");
    int maximav = row.getInt("Max VisibilityKm");
    int minimav = row.getInt("Min VisibilityKm");
    int meanw = row.getInt("Mean Wind SpeedKm/h");
    int precipitacion = row.getInt("Precipitationmm");
    
    // Con esas variables construyo un objeto
        lineas[i] = new Florencia(fecha, maximat, minimat, maximah, minimah, maximav, minimav, meanw, precipitacion);

  
  }
}
void draw(){
   background(0);
   for (int i = 0; i < lineas.length; i++){
     lineas[i].function();
   }
}