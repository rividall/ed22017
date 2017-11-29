class Ano {
  int fecha, t_max, t_mean, t_min, v_mean, p_mm, cc;
  String ev;
  float amt1, amt2;
  float x_t_min, x_t_max, y_t_min, y_t_max, x, x2,y,y2 ;

  

  
  Ano(int fecha, int t_max, int t_mean, int t_min, int v_mean, int p_mm, int cc, String ev){
  
    this.fecha = fecha;
    this.t_max = t_max;
    this.t_mean = t_mean;
    this.t_min = t_min;
    this.v_mean = v_mean;
    this.p_mm = p_mm;
    this.cc = cc;
    this.ev = ev;
}

void ano() {
 

  float t_min2 = map(t_min,-3,14,250,200);
  float t_max2 = map(t_max,6,33,300,400);
  color frio = (#aaaaaa);
  color templado = (#161a1a);
  float t_mean2 = map(t_mean,0,21,0,0.5);  
  color color_final = lerpColor(frio,templado,t_mean2);
  

  stroke(color_final);
  rotate(radians(cos(18.68)));
      
    x_t_min = t_min2 * cos(0);
    x_t_max = t_max2 * cos(0);
    y_t_min = t_min2 * sin(0);
    y_t_max = t_max2 * sin(0);
    line(x_t_min,y_t_min,x_t_max,y_t_max);  
      fill(#4dc0bf);
  ellipse(x_t_min,y_t_min,cc,cc);
    fill(#ff9739);
  ellipse(x_t_max,y_t_max,cc,cc);
}
  }      