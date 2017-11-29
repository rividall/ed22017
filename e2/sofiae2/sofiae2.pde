/*Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 
 6to semestre - Expresión Digital II - Avance examen - Sofía Oller
 
 El examen consiste en la visualización de datos del clima, específicamente una ciudad
 durante un período de un año. Desde lo más general como la visualización de todo el año
 a través de una variable del dato, hasta lo más particular como cada día con toda la
 información que contiene. 
 
 Para esta semana se pidió entregar un avance de lo que sería nuestro exmanen según
 nuestros referentes mostrados en clases. En este caso se utilizó la base de datos de 6
 meses de la ciudad de Iquitos, Perú. En donde se tomaron las variables de
 "Max TemperatureC" representada de color amarillo, y la cual es una ellipse formada a
 través de puntos y sucede lo mismo para la variable "Min TemperatureC", pero es de color
 blanco, sus tamaños correspondes a sus respectivas variables.En el caso de "Dew PointC"
 de color verde, en donde su tamaño es la variable y "Max Humidity" de color morado.
 Cada variable está multiplicada por tres para que sea pueda visualizar más la distancia
 entre un dato y otro.
 */
Iquitos[] e;

Table tabla;

void setup() {
  size(500, 500);

  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");

  e = new Iquitos[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {

    TableRow row = tabla.getRow(i);

    String fecha = row.getString("PET");
    int max = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");
    int dep = row.getInt("Dew PointC");
    int hum = row.getInt("Max Humidity");

    e[i] = new Iquitos(fecha, max, min, dep, hum);
  }
}

void draw() {
  noStroke();
  fill(77, 77, 76, 20);
  rect(0, 0, 500, 500);
  for (int i = 0; i < e.length; i ++) {
    e[i].vermor();
  }
  for (int i = 0; i < e.length; i ++) {
    e[i].maxima();
  }
  for (int i = 0; i < e.length; i ++) {
    e[i].minima();
  }
}