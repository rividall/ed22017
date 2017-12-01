Table tabla;
String[] rawData;
Clima[] meses;
int avance;
void setup(){
  size(730,730);
   background(0);
  tabla = loadTable("Heraklion_Greece.csv", "header");
  meses = new Clima[tabla.getRowCount()];
  for (int i = 0; i < tabla.getRowCount(); i++) { 
    TableRow row = tabla.getRow(i);
    String fecha = row.getString("EET");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int media = row.getInt("Mean TemperatureC");
    meses[i] = new Clima(fecha,maxima, media, minima, i);
  }
}
void draw() {
  //avance = (int)map(mouseX, 0, width, 0, meses.length);
   
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      background(0);
      for(int j = 0; j < 700; j += 70){
  for(int i = 0; i < meses.length-355; i += 1) {
    meses[i].show1(200, j);
}for(int i =10; i < meses.length-345; i += 1) {
    meses[i].show1(height/2, j);
}
for(int i = 20; i < meses.length-334; i += 1) {
    meses[i].show1(500, j);
}
    }
  }
  }
if (keyPressed) {
    if (key == 'b' || key == 'B') {
        background(0);
      for(int i = 31; i < meses.length-324; i += 1) {
         //meses[i].show1();
      }
      for(int i = 41; i < meses.length-314; i += 1) {
         meses[i].show2();
      }
      for(int i = 51; i < meses.length-306; i += 1) {
         meses[i].show3();
      }
      
    }
}
    if (keyPressed) {
    if (key == 'c' || key == 'C') {
      background(0);
      for(int i = 59; i < meses.length-296; i += 1) {
           //meses[i].show1();
      }
      for(int i = 69; i < meses.length-286; i += 1) {
           meses[i].show2();
      }
      for(int i = 79; i < meses.length-275; i += 1) {
           meses[i].show3();
      }
      
    }
    }
    if (keyPressed) {
    if (key == 'd' || key == 'D') {
       background(0);
      for(int i = 90; i < meses.length-265; i += 1) {
    //meses[i].show1();
      }
    for(int i = 100; i < meses.length-255; i += 1) {
    meses[i].show2();
      }
      for(int i = 110; i < meses.length-245; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'e' || key == 'E') {
       background(0);
      for(int i = 120; i < meses.length-235; i += 1) {
      //meses[i].show1();
      }
      for(int i = 130; i < meses.length-225; i += 1) {
      meses[i].show2();
      }
      for(int i = 140; i < meses.length-214; i += 1) {
      meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'f' || key == 'F') {
       background(0);
      for(int i = 151; i < meses.length-204; i += 1) {
    //meses[i].show1();
      }
      for(int i = 161; i < meses.length-194; i += 1) {
    meses[i].show2();
      }
      for(int i = 171; i < meses.length-184; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'g' || key == 'G') {
       background(0);
      for(int i = 181; i < meses.length-174; i += 1) {
    //meses[i].show1();
      }
      for(int i = 191; i < meses.length-164; i += 1) {
    meses[i].show2();
      }
      for(int i = 201; i < meses.length-153; i += 1) {
    meses[i].show3();
      }
    }
    }
if (keyPressed) {
    if (key == 'H' || key == 'h') {
      background(0);
      for(int i = 212; i < meses.length-143; i += 1) {
    //meses[i].show1();
      }
       for(int i = 222; i < meses.length-133; i += 1) {
    meses[i].show2();
      }
       for(int i = 232; i < meses.length-122; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'I' || key == 'i') {
        background(0);
      for(int i = 243; i < meses.length-112; i += 1) {
    //meses[i].show1();
      }
      for(int i = 253; i < meses.length-102; i += 1) {
    meses[i].show2();
      }
      for(int i = 263; i < meses.length-92; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'J' || key == 'j') {
      background(0);
      for(int i = 273; i < meses.length-82; i += 1) {
    //meses[i].show1();
      }
      for(int i = 283; i < meses.length-72; i += 1) {
    meses[i].show2();
      }
      for(int i = 293; i < meses.length-61; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'K' || key == 'k') {
      background(0);
      for(int i = 304; i < meses.length-51; i += 1) {
    //meses[i].show1();
      }
       for(int i = 314; i < meses.length-41; i += 1) {
    meses[i].show2();
      }
      for(int i = 324; i < meses.length-31; i += 1) {
    meses[i].show3();
      }
    }
    }
    if (keyPressed) {
    if (key == 'L' || key == 'l') {
            background(0);
      for(int i = 334; i < meses.length-21; i += 1) {
    //meses[i].show1();
      }
      for(int i = 344; i < meses.length-11; i += 1) {
    meses[i].show2();
      }
      for(int i = 354; i < meses.length; i += 1) {
    meses[i].show3();
      }
    }
    }
}