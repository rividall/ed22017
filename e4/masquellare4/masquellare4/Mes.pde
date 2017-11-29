class Mes {
  float mes, lluvia,viento,vientito;
  int i, x, y; 


  Mes(float mes, Float lluvia, int i, float viento) {
    this.mes = mes;
    this.lluvia = lluvia;
    this.i = i;
    this.viento = viento;
    x = 0;
    y = 0;
    vientito = viento;
 
  }
  void mes1() {
       noStroke();
    fill(0);
 
 if (mes == 1) {
      x=100;
      mes = map(i, 0, 30, 100, 500);
      
      ellipse(x,y + mes,10,10);
     
    } else if (mes == 2) {
      x = 120;
      mes = map(i, 31, 31 + 28, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 3) {
      x = 140;
      mes = map(i, 60, 60 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 4) {
      x = 160;
      mes = map(i, 91, 91 + 29, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 5) {
      x = 180;
      mes = map(i, 121, 121 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 6) {
      x = 200;
      mes = map(i, 152, 152 + 29, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 7) {
      x = 220;
      y = 200;
      mes = map(i, 182, 182 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 8) {
      x = 240;
      y= 200;
      mes = map(i, 213, 213 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 9) {
      x = 260;
      y = 200;
      mes = map(i, 244, 244 + 29, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 10) {
      x = 280;
      y = 200;
      mes = map(i, 274, 274 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 11) {
      x = 300;
      y = 200;
      mes = map(i, 305, 305 + 29, 100, 500);
       ellipse(x,y + mes,10,10);
    } else if (mes == 12) {
      x = 320;
      y= 200;
      mes = map(i, 335, 335 + 30, 100, 500);
       ellipse(x,y + mes,10,10);
    }
  
    
}
}