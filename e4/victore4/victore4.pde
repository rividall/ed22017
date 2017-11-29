// Clases
Ano[]  a;

//Variables

Table tabla;
int datos;

void setup(){
    size(1000,1000);
  // Cargar base de datos
  tabla = loadTable("Valdivia_Chile.csv", "header");
  //Inicializar el array con la misma cantidad de filas de la base de datos.
  a = new Ano[tabla.getRowCount()];
  
  /// Contador 
  
  
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow datos = tabla.getRow(i);

    int fecha = i;
    int t_max = datos.getInt("Max TemperatureC");
    int t_mean = datos.getInt("Mean TemperatureC");
    int t_min = datos.getInt("Min TemperatureC");
    int v_mean = datos.getInt(" Mean Wind Speed");
    int p_mm = datos.getInt("Precipitationmm");
    int cc = datos.getInt(" CloudCover");
    String ev = datos.getString(" Events");
    
     a[i] = new Ano(fecha, t_max, t_mean, t_min, v_mean, p_mm, cc, ev);
}
}

void draw(){
  background(#e5e0c3);
  translate(height/2, width/2);
  stroke(0);
rotate(radians(270));
  for (int i = 0; i < tabla.getRowCount(); i++) {
a[i].ano();
  }
}