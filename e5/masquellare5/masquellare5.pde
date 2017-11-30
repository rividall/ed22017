//CLases
Variable[] objetos;
Mes[] m;
//Variables
boolean e, r;
int visualiza;

Table tabla;

void setup() {

  size(700, 1000);
  background(#E6D8C0);
  // se valorizan los boolean
  e = true;

  r = true;
  visualiza = 0;
  tabla = loadTable("Brussels_Belgium.csv", "header");
  objetos = new Variable[tabla.getRowCount()];
  m = new Mes[tabla.getRowCount()];


  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    float mes = row.getFloat("Mes");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    int humedad = row.getInt("Max Humidity");
    float viento = row.getFloat(" Max Wind SpeedKm/h");
    float lluvia = row.getFloat("Precipitationmm");
    float dirviento = row.getFloat("WindDirDegrees");


    objetos[i] = new Variable(mes, maxima, minima, humedad, viento, lluvia, i);
    m[i] = new Mes(mes, lluvia, i, viento,dirviento);
  }
}


void draw() {

  //background(#E6D8C0);
  textSize(20);
  fill(#8EB0A7);
  text("Leyenda", 550, 60);


  for (int i = 0; i < objetos.length; i++) {

    if (e) {
      objetos[i].singular();
    }
    else if (!e) {
      m[i].mes1();
    } 
  }
}




void keyPressed() {
  if (key == 'e') {
    e = !e;
  }
  if (key == 's') {
    r = (!r);
  }
} 