France[] f; //clase

Table tabla;
boolean v, in, o, p, mar, oct, en, jul;

void setup() {
  size(500, 500);

  in = true;
  v = true;
  o = true;
  p = true;
  mar = false;
  oct = false;
  en = false;
  jul = false;

  // base de datos
  tabla = loadTable("La_Rochelle_France.csv", "header");

  f = new France[tabla.getRowCount()]; 

  for (int i = 0; i < tabla.getRowCount(); i++) {

    TableRow row = tabla.getRow(i);

    int mes = row.getInt("M");
    int dia = row.getInt("D");
    int max = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");
    int rocio = row.getInt("Min DewpointC");
    int viento = row.getInt("Mean Wind SpeedKm/h");

    f[i] = new France(i, mes, dia, max, min, rocio, viento);
    //println(max);
  }
}

void draw() {
  //estela
  noStroke();
  fill(255, 10);
  rect(0, 0, 500, 500);
  //background(255);

  // boolean estación invierno
  if (in) {
    for (int i = 0; i < f.length; i ++) {
      if (i > 0 && i < 92) {
        f[i].invierno();
      }
    }
  }
  if (!in) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }

  // boolean estación primavera
  if (p) {
    for (int i = 0; i < f.length; i ++) {
      if (i > 93 && i < 182) {
        f[i].primavera();
      }
    }
  }
  if (!p) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }

  // boolean estación verano
  if (v) {
    for (int i = 0; i < f.length; i ++) {
      if (i > 183 && i < 274) {
        f[i].verano();
      }
    }
  }
  if (!v) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }

  // boolean estación otoño
  if (o) {
    for (int i = 0; i < f.length; i ++) {
      if (i > 275 && i < 366) {
        f[i].otono();
      }
    }
  }
  if (!o) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }
  if (en) { 
    for (int i = 0; i < f.length; i ++) {
      if (i > 2 && i < 32) {
        f[i].enero();
      }
    }
  }
  if (!en) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }
  
  
  if (mar) { 
    for (int i = 0; i < f.length; i ++) {
      if (i > 61 && i < 91) {
        f[i].marzo();
      }
    }
  }
  if (!mar) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }
  
  
  if (jul) { 
    for (int i = 0; i < f.length; i ++) {
      if (i > 183 && i < 213) {
        f[i].julio();
      }
    }
  }
    if (!jul) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }
  
  
  if (oct) { 
    for (int i = 0; i < f.length; i ++) {
      if (i > 275 && i < 305) {
        f[i].octubre();
      }
    }
  }
    if (!oct) {
    //estela
    noStroke();
    fill(255, 10);
    rect(0, 0, 500, 500);
  }
}



void keyPressed() {
  if (key == 'a') {
    in = (!in);
  }
  if (key == 's') {
    p = (!p);
  }
  if (key == 'd') {
    v = (!v);
  }
  if (key == 'f') {
    o = (!o);
  }
   if (key == 'z') {
    en = (!en);
  }
   if (key == 'x') {
    mar = (!mar);
  }
   if (key == 'c') {
    jul = (!jul);
  }
   if (key == 'v') {
    oct = (!oct);
  }
}