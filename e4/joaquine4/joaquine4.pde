//Universidad del Desarrollo - Diseño Digital - Expresión Digital II - Joaquín Domínguez - e4
Clase[] hawai;

Table tabla;
int mostrar;
void setup() {
  size(1280, 800);
  tabla = loadTable("Hawai.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  hawai = new Clase[total]; 

  for (int i = 0; i < tabla.getRowCount(); i++) { // inicializar lectura de tabla
    TableRow row = tabla.getRow(i);

    int fecha = i;
    int tmaxima = row.getInt("Max TemperatureC");
    int tminima = row.getInt("Min TemperatureC");
    int tmedia = row.getInt("Mean TemperatureC");

    hawai[i] = new Clase(fecha, tmaxima, tminima, tmedia, i);
    mostrar = 0;
  }
}
void draw() {
  //translate(width/2, height/2);
  background(0);
  // Uso de los objetos como siempre
  for (int i = 0; i < hawai.length; i ++) {
    if (mostrar == 0) {
      hawai[i].ano();
    }
    if (mostrar == 1) {
      hawai[i].estacion();
    }
    if (mostrar == 2) {
      hawai[i].evento();
    }
  }
}
void keyPressed() {
  if (key == 'a') {
    mostrar = 0;
  }
  if (key == 'e') {
    mostrar = 1;
  }
  if (key == 'r') {
    mostrar = 2;
  }
}