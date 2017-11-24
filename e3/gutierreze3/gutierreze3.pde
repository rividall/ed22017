String filename ="BaseDatosIquitos6Meses.csv";
int[] row = {0,1,2,3,17,18,19};
Table tabla;
String[] rawData;
Clima[] meses;
void setup(){
  size(700,700);
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");
  meses = new Clima[tabla.getRowCount()];
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    
int maxima = row.getInt("Max TemperatureC");
int media = row.getInt("Mean TemperatureC");
int minima = row.getInt("Min TemperatureC");
meses[i] = new Clima(maxima, media, minima);


}
}


void draw(){
  for (int i = 0; i < meses.length; i ++) {
    
 
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
  rawData = loadStrings(filename);
for(int j=1; j<rawData.length-150; j++){
     String[] m1 = split(rawData[j], ",");
      meses[i].weather();
      println(m1[0]);
}
}
}

    if (key == 'b' || key == 'B') {
  rawData = loadStrings(filename);
for(int j=1; j<rawData.length-153; j++){
    String[] m2 = split(rawData[j+31], ",");
     meses[i].weather();
      println(m2[0]);
}
}

    if (key == 'c' || key == 'C') {
rawData = loadStrings(filename);
for(int j=1; j<rawData.length-150; j++){
    String[] m3 = split(rawData[j+59], ",");
     meses[i].weather();
      println(m3[0]);
}
}

    if (key == 'd' || key == 'D') {
rawData = loadStrings(filename);
for(int j=1; j<rawData.length-150; j++){
    String[] m4 = split(rawData[j+89], ",");
     meses[i].weather();
     println(m4[0]);
}
}

    if (key == 'e' || key == 'E') {
rawData = loadStrings(filename);
for(int j=1; j<rawData.length-150; j++){
    String[] m5 = split(rawData[j+120], ",");
     meses[i].weather();
     println(m5[0]);
}
}

    if (key == 'f' || key == 'F') {
rawData = loadStrings(filename);
for(int j=1; j<rawData.length-150; j++){
    String[] m6 = split(rawData[j+150], ",");
     meses[i].weather();
     println(m6[0]);// Todavia no logro separar lo que dibujo asi que por el momento
     // trate de hacer esto donde puedo demostrar que lograre visualizar cada uno de los
     // meses por separado.
}
}
}
}