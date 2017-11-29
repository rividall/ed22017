Tem12mes [] t12m;
Llu4esta [] l4e;
Cadames [] cm12;
Table tabla;
boolean a, s, d, q, w, e, r, z, x, c, v;


void setup() {
  size(1200, 650);
  noFill ();
  tabla = loadTable("Prague_Czech_Republic.csv", "header");//cargar archivo con parametros de cabecera


  //inicializar el array con cantidad de filas del archivo
  int total = tabla.getRowCount();
  t12m = new Tem12mes[total];
  l4e = new Llu4esta[total];
  cm12 = new Cadames[total];

  for (int i = 0; i < tabla.getRowCount(); i++) {//contador pasa por todas las filas
    TableRow row = tabla.getRow(i);//creamos un nuevo obj de tipo TableRow 
    //con la info de cada fila

    int mes = row.getInt("mes");
    int maxima = row.getInt("Max Tem");
    int minima = row.getInt("Min Tem");
    int maxhum = row.getInt("Max Hum");
    int minhum = row.getInt("Min Hum");
    float nub = row.getFloat("Nub");
    float pre = row.getFloat("Pre");
    int medhum = row.getInt("Med Hum");
    int viento = row.getInt("viento");

    t12m [i] = new Tem12mes(mes, maxima, minima, i, maxhum, minhum, nub);
    l4e [i] = new Llu4esta(mes, pre, i, medhum);
    cm12 [i] = new Cadames(nub, i, viento);

    a = false;//tem max y min año
    s = false;//hum max y min año
    d = false;//nubes año
    w = false;//invierno circulo
    q = false;//primavera circulo
    e = false;// verano circulo
    r = false;//otoño circulo
    z = false;//otoño enero
    x = false;//otoño febrero
    c = false;//otoño marzo
    v = false;//otoño abril
  }
}

void draw() {
  /*se translada al medio del canvas y las líneas representan las estaciones pero
   se llaman cada dos meses*/
  background(#171717);//gris oscuro de fondo 

  fill(#E0E3E3);
  textSize(40); // tamaño fuente
  text("Prague 2015", 30, 50); // lugar

  pushMatrix();//nuestra el año y sus tem max y min
  if (a) {
    fill(#E0E3E3);
    textSize(32); // tamaño fuente
    text("Año", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Temperatura máxima y mínima: líneas", 950, 550); // lugar

    translate(width/2, height/2);
    for (int i = 1; i < 91; i++) {
      t12m[i].verano();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otono();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].invierno();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].primavera();
    }
  }
  popMatrix();

  pushMatrix();//muestra la hum max y min del año
  if (s) {
    textSize(32); // tamaño fuente
    text("Año", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Humedad máxima y mínima: puntos", 950, 570); // lugar

    translate(width/2, height/2);
    for (int i = 1; i < 91; i++) {
      t12m[i].veranohum();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otonohum();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].inviernohum();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].primaverahum();
    }
  }
  popMatrix();

  pushMatrix();//muestra la hum max y min del año
  if (d) {
    textSize(32); // tamaño fuente
    text("Año", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Nubes promedio: circulos", 950, 590); // lugar
    translate(width/2, height/2);

    for (int i = 1; i < 91; i++) {
      t12m[i].vernub();
    }
    for (int i = 92; i < 182; i++) {
      t12m[i].otonub();
    }
    for (int i = 183; i < 274; i++) {
      t12m[i].invnub();
    }
    for (int i = 275; i < 365; i++) {
      t12m[i].prinub();
    }
  }
  popMatrix();


  pushMatrix();//circulo invierno mestra lluvia y humedad media
  if (q) {
    textSize(32); // tamaño fuente
    text("Estaciones", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Nubes promedio: circulos eje y", 950, 550); // lugar
    text("Humedad media: puntos eje y", 950, 570); // lugar

    translate(750, 150);
    for (int i = 1; i < 91; i++) {
      l4e[i].veranol();
      l4e[i].veranomd();
    }
  }
  popMatrix();

  pushMatrix();//circulo primavera mestra lluvia y humedad media
  if (w) {
    textSize(32); // tamaño fuente
    text("Estaciones", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Nubes promedio: circulos eje y", 950, 550); // lugar
    text("Humedad media: puntos eje y", 950, 570); // lugar

    translate(750, 450);
    for (int i = 92; i < 182; i++) {
      l4e[i].otonol();
      l4e[i].otonomd();
    }
  }
  popMatrix();

  pushMatrix();//circulo verano mestra lluvia y humedad media
  if (e) {
    textSize(32); // tamaño fuente
    text("Estaciones", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Nubes promedio: circulos eje y", 950, 550); // lugar
    text("Humedad media: puntos eje y", 950, 570); // lugar

    translate(450, 450);
    for (int i = 183; i < 274; i++) {
      l4e[i].inviernol();
      l4e[i].inviernomd();
    }
  }
  popMatrix();

  pushMatrix();//circulo otoño mestra lluvia y humedad media
  if (r) {
    textSize(32); // tamaño fuente
    text("Estaciones", 950, 530); // lugar
    textSize(12); // tamaño fuente
    text("Nubes promedio: circulos eje y", 950, 550); // lugar
    text("Humedad media: puntos eje y", 950, 570); // lugar

    translate(450, 150);
    for (int i = 275; i < 365; i++) {
      l4e[i].primaveral();
      l4e[i].primaveramh();
    }
  }
  popMatrix();

  pushMatrix();//enero
  if (z) {
    translate(400, 100);
    for (int i = 1; i < 32; i++) {
      cm12[i].enero();
    }
  }
  popMatrix();

  pushMatrix();//febrero
  if (z) {
    translate(600, 100);
    for (int i = 33; i < 60; i++) {
      cm12[i].febrero();
    }
  }
  popMatrix();

  pushMatrix();//marzo
  if (z) {
    translate(800, 100);
    for (int i = 61; i < 91; i++) {
      cm12[i].marzo();
    }
  }
  popMatrix();

  pushMatrix();//abril
  if (x) {
    translate(400, 250);
    for (int i = 92; i < 121; i++) {
      cm12[i].abril();
    }
  }
  popMatrix();

  pushMatrix();//mayo
  if (x) {
    translate(600, 250);
    for (int i = 122; i < 152; i++) {
      cm12[i].mayo();
    }
  }
  popMatrix();

  pushMatrix();//junio
  if (x) {
    translate(800, 250);
    for (int i = 153; i < 182; i++) {
      cm12[i].junio();
    }
  }
  popMatrix();

  pushMatrix();//julio
  if (c) {
    translate(400, 400);
    for (int i = 183; i < 213; i++) {
      cm12[i].julio();
    }
  }
  popMatrix();

  pushMatrix();//agosto
  if (c) {
    translate(600, 400);
    for (int i = 214; i < 244; i++) {
      cm12[i].agosto();
    }
  }
  popMatrix();

  pushMatrix();//septiembre
  if (c) {
    translate(800, 400);
    for (int i = 245; i < 274; i++) {
      cm12[i].septiembre();
    }
  }
  popMatrix();

  //pushMatrix();//octubre
  //if (v) {
  //  translate(400, 550);
  //for (int i = 275; i < 305; i++) {
  //  cm12[i].octubre();
  //}
  //popMatrix();

  //pushMatrix();//noviembre
  //translate(600, 550);
  //for (int i = 306; i < 335; i++) {
  //  cm12[i].noviembre();
  //}
  //popMatrix();

  //pushMatrix();//diciembre
  //translate(800, 550);
  //for (int i = 336; i < 365; i++) {
  //  cm12[i].diciembre();
  //}
  //popMatrix();
}


void keyPressed() {
  if (key =='a') {//año temperatura
    a = !a;
  }
  if (key =='s') {//año humedad
    s = !s;
  }
  if (key =='d') {//año nubes
    d = !d;
  }
  if (key =='w') {
    w = !w;
  }
  if (key =='q') {
    q = !q;
  }
  if (key =='r') {
    r = !r;
  }
  if (key =='e') {
    e = !e;
  }
  if (key =='z') {
    z = !z;
  }
  if (key =='x') {
    x = !x;
  }
  if (key =='c') {
    c = !c;
  }
  //if (key =='v') {
  //  v = !v;
  //}
}