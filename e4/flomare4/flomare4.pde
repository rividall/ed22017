// Array de objetos
Temperatura[] temp;
Humedad[] hum;
Visibilidad[] vis;
Viento[] wind;
Precipitation[] precipitation;
boolean p;

Table tabla;

void setup() {
  size(700, 700);
  background(#000000);
  p = false;
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("basedatositalia.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  println(tabla.getRowCount());
  temp = new Temperatura[total];
  hum = new Humedad[total];
  vis = new Visibilidad[total];
  wind = new Viento[total];
  precipitation = new Precipitation[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {

    TableRow row = tabla.getRow(i);


    int mes = row.getInt("mes");
    int dia = row.getInt("dia");
    int maximat = row.getInt("maxt");
    int minimat = row.getInt("mint");
    int maximah = row.getInt("maxh");
    int minimah = row.getInt("minh");
    int maximav = row.getInt("maxv");
    int minimav = row.getInt("minv");
    int meanw = row.getInt("meanw");
    int precip = row.getInt("precipitation");

    // Con esas variables construyo un objeto
    temp[i] = new Temperatura(mes, dia, maximat, minimat, i);
    hum[i] = new Humedad(mes, dia, maximah, minimah, i);
    vis[i] = new Visibilidad(mes, dia, maximav, minimav, i);
    wind[i] = new Viento(mes, dia, meanw, i);
    precipitation[i] = new Precipitation(mes, dia, precip, i);
  

}
}
void draw() {
  background(0);
  
  pushMatrix();
  translate(700, 0);
  for (int i = 0; i < temp.length; i++) {
    temp[i].temperatura();
  }
  popMatrix();
  
  pushMatrix();
  translate(0, 700);
  for (int i = 0; i < vis.length; i++) {
    vis[i].visibilidad();
  }
  popMatrix(); 
 
  pushMatrix();
  translate(0, 0);
  for (int i = 0; i < hum.length; i++) {
    hum[i].humedad();
  }
  if (!p){
    hum[0].humedad();
    }
  popMatrix();
  
  pushMatrix();
  translate(0, 350);
  for (int i = 0; i < wind.length; i++) {
    wind[i].viento();
  }
  popMatrix();
  
  pushMatrix();
  for (int i = 0; i < precipitation.length; i++) {
    precipitation[0].precipitatio();
  }
  if (!p){
    precipitation[364].precipitatio();
    }
  popMatrix();
  
}

void keyPressed(){
  if (key == 'p'){
    p = (!p);
  }
}