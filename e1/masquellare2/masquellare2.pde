
/*ellipse donde su grosor es la cantidad de rocio, su diametro es la temperatura mínima, 
 y su opacidad es la temperatura máxima. Ademas se va moviendo en el eje "y" de acuerdo 
 a la fecha. Ciertas variables  se ven afectadas según por el  viento 
 (diametro y posicion vertical).*/
Variable[] objetos;

Table tabla;

void setup(){
  size(1000,1000);
  background(#e6795f);
  tabla = loadTable("BaseDatosIquitos6Meses.csv","header");
  objetos = new Variable[tabla.getRowCount()];
  
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    
    int fecha = row.getInt("Mes");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int rocio = row.getInt("Dew PointC");
    int humedad = row.getInt("Max Humidity");
    int viento = row.getInt(" Max Wind SpeedKm/h");

  

    objetos[i] = new Variable(fecha, maxima, minima,rocio,humedad,viento);
  }
}

void draw(){
  
  for (int i = 0; i < objetos.length; i++){
    objetos[i].function();
    objetos[i].movimiento();
    
}
}