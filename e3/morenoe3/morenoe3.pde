
Cuerpo[] c;
Table tabular;
PFont titulo, bajada, instruc;
int cambio = 0;
int fila, index, i;
int u = 30;

int iteracion;


void setup() {
  size(700, 1200);
  background (0,0,0);

  tabular = loadTable("dataBase.csv", "header");
  c = new Cuerpo[tabular.getRowCount()]; 
  iteracion = 1;

  
  for (int i = 0; i < tabular.getRowCount(); i++) {
    TableRow fila = tabular.getRow(i); 
    int index = i; 

  
    String day = fila.getString("WAT");
    int maxt = fila.getInt("Max TemperatureC");
    int meant = fila.getInt("Mean TemperatureC");   
    int mint = fila.getInt("Min TemperatureC");
    int humx = fila.getInt("Max Humidity");
    int humean = fila.getInt(" Mean Humidity");
    int humn = fila.getInt(" Min Humidity");
    int wind = fila.getInt("WindDirDegrees");
    int wndspm = fila.getInt(" Mean Wind SpeedKm/h");
    int wndspx = fila.getInt(" Max Wind SpeedKm/h");

    
    c[i] = new Cuerpo(index, day, maxt, meant, mint, humx, humean, humn, wind, wndspm, wndspx, i);
  }
} 
void draw() {
   
  
  

    for (int i = 0; i < c.length; i++) {
      if (iteracion == 1) {
        c[i].dias(u);
        c[i].tempx();
      }

      if (iteracion == 2) {
        c[i].dias(u);
        c[i].tempn();
      }

      if (iteracion == 3) {
        c[i].dias(u);
        c[i].meant();
      }
     
    }
  }

void keyPressed() {
  if (key == 'q') {
    iteracion = 1;
    u = 30;
  }
  if (key == '2') {
    iteracion = 2;
    u = 52;
  }
  if (key == '3') {
    iteracion = 3;
    u = 182;
  }
}