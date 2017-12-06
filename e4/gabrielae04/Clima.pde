class Aruba {

  int  minT, maxT, meanT, nubes, maxH, meanH, minH, maxW, meanW, in;
  float x, y, prec, circ, an;
  color t, b, n, v, g, r, am, e, h, k;
  String grande;

  Aruba(int in, int minT, int maxT, int meanT, int nubes, int maxH, int meanH, int minH, int maxW, int meanW, float prec) {
    x = 0;
    y = 0;
    rectMode(CENTER);

    this.maxH = maxH;
    this.meanH = meanH;
    this.minH = minH;

    this.minT = minT;
    this.meanT = meanT;
    this.maxT = maxT;

    this.prec = prec;

    this.nubes = nubes;

    this.maxW = maxW;
    this.meanW = meanW;

    this.t = color(63, 201, 188); 
    this.v = color(159, 229, 125); 
    this.b = color(255);
    this.n = color(0);
    this.g = color(225);
    this.r = color(255, 0, 0);
    this.am = color(255, 255, 0);
  }

  void humedad() {
    //for (int i = 0; i < clima.length; i = i++) {
    //  for (int j = 0; j < clima.length; j = j++) {
  }

  void temperatura() {
    float si = map(minT, 23, 28, 0, 1);  
    float sip = map(meanT, 26, 32, 0, 1);  
    float sipo = map(maxT, 29, 35, 0, 1);

    e = lerpColor(t, b, si);
    h = lerpColor(v, g, sip);
    k = lerpColor(r, am, sipo);
  }

  void nubes() {
    float frio = map(nubes, 1, 3, 10, 400);
  }

  void precipitacion() {
    float fuerza = map(prec, 0.0, 12.95, 0, 27.94);
    //   triangle(x1, y1, x2, y2, x3, y3); //formula
  }
}