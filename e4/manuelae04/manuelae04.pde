Clima[] c;
Table tabla1;
boolean g, r, enero_, febrero_, marzo_, abril_, mayo_, junio_, julio_, agosto_, septiembre_, octubre_, noviembre_, diciembre_, visibilidad_, humedad_;

void setup() {
  size(900, 700);
  tabla1=loadTable("Agadez_Niger.csv", "header"); //Se sube la base de datos.
  /*Boolean*/
  enero_ = false;
  febrero_ = false;
  marzo_ = false;
  abril_ = false;
  mayo_ = false;
  junio_ = false;
  julio_ = false;
  agosto_ = false;
  septiembre_ = false;
  octubre_ = false;
  noviembre_ = false;
  diciembre_ = false;
  visibilidad_ = true;
  humedad_= false;
  g = false;
  r = false;
  /*Fin boolean*/

  c = new Clima[tabla1.getRowCount()];

  for (int t = 0; t < tabla1.getRowCount(); t++) {
    TableRow row = tabla1.getRow(t);

    /*Se da un nuevo nombre a los datos.*/
    int ano = row.getInt("A");
    int mes = row.getInt("M");
    int dia = row.getInt("D");
    int max = row.getInt("Max TemperatureC");
    int min = row.getInt("Min TemperatureC");
    int viento = row.getInt(" Mean Wind SpeedKm/h");
    int maxV = row.getInt(" Max VisibilityKm");
    int minV = row.getInt(" Min VisibilitykM");
    int meanV = row.getInt(" Mean VisibilityKm");
    int maxH = row.getInt("Max Humidity");
    int minH = row.getInt(" Min Humidity");
    //println(t);
    c[t] = new Clima(ano, mes, dia, max, min, viento, t, maxV, minV, meanV, maxH, minH);
    // println(t);
  }
}


/*Inicio void draw*/
void draw() {
  fill(10, 50); //Relleno con transparencia
  noStroke();
  rect(0, 0, 900, 700);

  if (g) {
    for (int t = 0; t < c.length; t ++) { //Se lee toda la bse de datos.
      c[t].grilla();
    }
  }


  if (humedad_) {
    for (int t = 0; t < c.length; t ++) { //Se lee toda la bse de datos.
      c[t].humedad();
    }
  }
  if (enero_) {
    for (int t = 2; t < 32; t++) { //Enero va desde la fila 1 hasta la 32.
      c[t].enero();
    }
  }
  if (febrero_) {
    for (int t = 33; t < 60; t ++) { //Febrero va desde la fila 33 hasta la 61.
      c[t].febrero();
    }
  }
  if (marzo_) {
    for (int t = 61; t < 91; t ++) { //Marzo va desde la fila 61 hasta la 92.
      c[t].marzo();
    }
  }
  if (abril_) {
    for (int t = 92; t < 121; t ++) { //Abril va desde la fila 92 hasta la 122.
      c[t].abril();
    }
  }
  if (mayo_) {
    for (int t = 122; t < 152; t ++) { //Mayo va desde la fila 122 hasta la 153.
      c[t].mayo();
    }
  }
  if (junio_) {
    for (int t = 153; t < 182; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].junio();
    }
  }
  if (julio_) {
    for (int t = 183; t < 213; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].julio();
    }
  }
  if (agosto_) {
    for (int t = 214; t < 244; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].agosto();
    }
  }
  if (septiembre_) {
    for (int t = 245; t < 274; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].septiembre();
    }
  }
  if (octubre_) {
    for (int t = 275; t < 305; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].octubre();
    }
  }
  if (noviembre_) {
    for (int t = 306; t < 335; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].noviembre();
    }
  }
  if (diciembre_) {
    for (int t = 336; t < 365; t ++) { //Junio va desde la fila 153 hasta la 181.
      c[t].diciembre();
    }
  }
} /*Fin void draw*/

void keyPressed() { 
  /*Al presionar la tecla ' ', el boolean se vuelve verdadero/falso.*/
  if (key == '1') 
    enero_ = (!enero_); 
  if (key == '2') 
    febrero_ = (!febrero_); 
  if (key == '3') 
    marzo_ = (!marzo_); 
  if (key == '4') 
    abril_ = (!abril_); 
  if (key == '5') 
    mayo_ = (!mayo_); 
  if (key == '6') 
    junio_ = (!junio_); 
  if (key == '7') 
    julio_ = (!julio_); 
  if (key == '8') 
    agosto_ = (!agosto_); 
  if (key == '9') 
    septiembre_ = (!septiembre_);
  if (key == '0') 
    octubre_ = (!octubre_); 
  if (key == 'q') 
    noviembre_ = (!noviembre_); 
  if (key == 'w') 
    diciembre_ = (!diciembre_);
  if (key == 'v') 
    g = (!g);
  if (key == 'h') 
    humedad_ = (!humedad_);
}

void mousePressed() { 
  /*Al presionar el mouse, la rotación se vuelve verdadero/falso.*/
  r = (!r);
}