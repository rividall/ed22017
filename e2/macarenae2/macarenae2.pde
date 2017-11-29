// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// Avance Examen

Iquitos[] iq; //clase

Table tabla;

void setup() {
  size(500, 500);

  // base de datos
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");

  iq = new Iquitos[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {

    TableRow row = tabla.getRow(i);

    int fecha = row.getInt("M");
    int max = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");
    float rain = row.getFloat("Precipitationmm");
    int viento = row.getInt(" Max Wind SpeedKm/h");

    iq[i] = new Iquitos(fecha, max, min, rain, viento);
    //println(max);
  }
}

void draw() {

  //background(255);

  // estela
  noStroke();
  fill(255, 20);
  rect(0, 0, 500, 500);

  // for dibujo
  for (int i = 0; i < iq.length; i ++) {
    iq[i].movimiento();
    iq[i].mov();

    // estaciones
    if (i <= 0 && i > 92) {
      iq[i].verano();
    } else {
      if (i <= 93 && i > 182) {
        iq[i].primavera();
      }
    }
  }
}