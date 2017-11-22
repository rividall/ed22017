class Cuerpo {

  float v, x, y, tm, velx, vely, a, tx, ty, maxh, meanh, minh, humx, humn, humean, mean, wndspm, wndspx;
  float amt, wind, wndsm, wndsx;
  color azul, rojo, verde, blanco, celeste, p, celeste2, morado2;
  String dia;
  int index, i;
  float mtx, mtmn, mtn, mhx, mhmn, mhn, mw, mw2, wndx;


  Cuerpo(int index, String dia, float maxt, float meant, float mint, float humx, float humean, float humn, float wind, float wndspm, float wndspx, int i) {
    
    this.dia = dia; 
    this.tx = maxt;
    this.ty = meant;
    this.tm = mint;
    this.maxh = humx;
    this.meanh = humean;
    this.minh = humn;
    this.wind = wind;
    this.index = index;
    this.wndsm = wndspm;
    this.wndsx = wndspx; 
    velx = 1; 
    vely = 1; 

 
    this.celeste = color(100, 149, 237);
    this.azul = color(25, 25, 112);
    this.rojo = color(252, 68, 39);
    this.verde = color(146, 224, 63);
    this.blanco = color(255, 255, 255); 
  }

  
  void tempx() {

    pushMatrix();
    translate (10,320);

    mtn = map(tm, 20, -40, 10, 50);
    float col = map(tx, -35, 25, 0, 1);
    p = lerpColor(blanco, azul, col);
    fill(p);
    noStroke();
    ellipse(x, y, mtn, mtn);
    popMatrix();

  }
 
  void tempn() {

    pushMatrix();
       translate (10,320);
    mtx = map(tx, 28, -36, 10, 50);
    float col = map(ty, -35, 25, 0, 1);
    p = lerpColor(verde, celeste, col);
    fill(p);
    noStroke();
    ellipse(x, y,mtx, mtx);
    popMatrix();
  }
 
  void meant() {
      
    pushMatrix();
     translate (30,650);
    mtmn = map(ty, 25, -37, 10, 50);
    float col = map(ty, -35, 25, 0, .9);
    p = lerpColor(azul, rojo, col);
    fill(p);
    noStroke();
    rect(x + 10, y +10, mtmn * .18, mtmn *3 ); 
    popMatrix();
  }


  void dias(int paso) {

    for (int i = 0; i < c.length; i++) {
      if (index >= i * paso && index < i * paso + paso) {
        float factor = map(paso, 7, 182, .1, .001);
        float factor1 = map(paso, 7, 182, .9, .9);
        float factor2 = map(paso, 7, 182, .1, .001);
        float factor3 = map(paso, 7, 182, .9, .9);

        float x1 = map(index % paso, 0, paso-1, width * factor2, width * factor3);
        x = x1;

        float y1 = map((i), 0, 365/paso, height * factor, height * factor1);
        y = y1;
      }
    }
  }

  
  }