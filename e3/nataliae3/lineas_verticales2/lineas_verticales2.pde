Tem4esta [] t4e;
Llu4esta [] l4e;
Table tabla;

void setup() {
  size(1200, 600);
  noFill ();
  background(#404C55);//gris oscuro de fondo 
  tabla = loadTable("BaseDatosMeses.csv", "header");//cargar archivo con parametros de cabecera

  //inicializar el array con cantidad de filas del archivo
  int total = tabla.getRowCount();
  t4e= new Tem4esta[total];
  l4e= new Llu4esta[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {//contador pasa por todas las filas
    TableRow row = tabla.getRow(i);//creamos un nuevo obj de tipo TableRow 
    //con la info de cada fila

    int fecha = row.getInt("PET");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    int fechal = row.getInt("PET");
    float pre = row.getFloat("WindDirDegrees");

    t4e [i] = new Tem4esta(fecha, maxima, minima);
    l4e [i] = new Llu4esta(fechal, pre);
  }
}

void draw() {
  /*se translada al medio del canvas y las líneas representan las estaciones pero
   se llaman cada dos meses*/
   pushMatrix();
  translate(width/2, height/2);
  for (int i = 1; i < 45; i++) {
    t4e[i].verano();
  }
  for (int i = 46; i < 90; i++) {
    t4e[i].otono();
  }
  for (int i = 91; i < 136; i++) {
    t4e[i].invierno();
  }
  for (int i = 137; i < 181; i++) {
    t4e[i].primavera();
  }
 popMatrix();
  //se translada y llama cada dos meses
 
    for (int i = 1; i < 45; i++) {
    l4e[i].veranol();
  }
  for (int i = 46; i < 90; i++) {
    l4e[i].otonol();
  }
  for (int i = 91; i < 136; i++) {
    l4e[i].inviernol();
  }
  for (int i = 137; i < 181; i++) {
    l4e[i].primaveral();
  }
}