// Array de objetos
Clase[] objetos;

Table tabla;

void setup() {
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");
  size(500, 500);

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  objetos = new Clase[total]; 

  // lo mismo se puede escribir en una línea de código
  //objetos = new Clase[tabla.getRowCount()]; 

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
    int tmaxima = row.getInt("Max TemperatureC");
    int tminima = row.getInt("Min TemperatureC");
    int tmedia = row.getInt("Mean TemperatureC");
    int hmedia = row.getInt(" Mean Humidity");

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha, tmaxima, tminima, tmedia,hmedia);
  }
}
void draw() {
  background(255);
  for(int j = 20; j < width - 20; j+= 30){
    
    for (int i = 0; i < 31; i ++) {
    
      objetos[i].enero(j,250);
      
    }
  }
}