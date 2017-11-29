// Array de objetos
Clase[] objetos;

Table tabla;
int condicion;

void setup() {
  condicion = 0;
  size(1000,500);
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");


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
    int fecha = row.getInt("PET");
    int humedad = row.getInt("MinHumidity");
    int visibilidad = row.getInt("MeanVisibility");
    int  temperatura = row.getInt("MaxTemperatureC");
    int temperatura2 = row.getInt("MinTemperatureC");
    float lluvia = row.getFloat("Precipitationmm");
    int  viento = row.getInt("MeanWindSpeed");
 
    
    // Con esas variables construyo un objeto
  
    objetos[i] = new Clase(fecha, humedad, temperatura, temperatura2, lluvia, visibilidad, viento);
  }
}

void draw() {
  background(220);
  // Uso de los objetos como siempre
   for (int i = 0; i < objetos.length; i +=10) {

     objetos[i].funcion();
     objetos[i].texto();
    
  }
 }