class Humedad {

  //variables
  float i;
  int mes;
  float dia;
  int maximah; 
  int minimah;
  color a;  
  color c, d, e, f ;
  String txt; String[] meses = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
  PFont font, fhum;
  int m;
  
  
  //constructor
  Humedad(int mes, float dia, int maximah, int minimah, int i) {

    this.i= map(i, 0, 30, 0, HALF_PI);
    this.mes = mes;
    this.dia = dia;
    this.maximah = maximah;
    this.minimah = minimah;
   

    c = color(#00C4D1); 
    d = color(#0A84FA); 
    e = color(#091BD8);
    f = color(#000C8B);
 
    font= loadFont("Champagne&Limousines-48.vlw");
}



  void humedad() {
    
    pushMatrix();

    fill(250);
    textFont(font);
    textAlign(CENTER);
    textSize(40);
    text(meses[m], 350,350);
    
    
    
    popMatrix();
    strokeWeight(2);
    pushMatrix();
    stroke(f);
    rotate(i);
    line(0, 0, minimah*3.5, 0);
    popMatrix();

    strokeWeight(2);
    stroke(c);
    pushMatrix();
    rotate(i);
    line(0, 0, maximah*3.5, 0);
    popMatrix();
  }

}