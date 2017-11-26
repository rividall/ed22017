class Variable {
 
  int maxima, minima,media,maxviento,rocio,humedad,niveldelmar,viento,fecha,x,y,d,a,s,f;
  
  Variable(int fecha, int maxima, int minima, int rocio, int humedad,int viento){
    this.fecha = fecha;
    this.maxima = maxima;
    this.minima = minima;
    this.humedad=humedad;
    this.rocio = rocio;
    this.viento = viento;
    x = 1;
    y = 1;
    d = 1;
    s = 1;
    f = 1;
   
   
  }

  void function(){
  
    rotate(rocio);
 strokeWeight(rocio);
    stroke(#d3c29d);  
 fill(#e6795f, maxima);
rect(150,d+ fecha,d + minima,d + minima);


  }
  
  void movimiento(){
  if (d > width){
    d=1;}
    d += viento/2;
  }
  
  }