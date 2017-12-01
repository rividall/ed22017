class Visibilidad {

  //variables
  float i;
  int mes;
  float dia;
  int maximav; 
  int minimav;




  //constructor
  Visibilidad(int mes, float dia, int maximav, int minimav, int i) {
    this.i= map(i, 0, 364, radians(90), radians(180));
    this.mes = mes;
    this.dia = dia;
    this.maximav = maximav;
    this.minimav = minimav;
  }


  void visibilidad() {

    pushMatrix();
    strokeWeight(0.8);
    stroke(#76FF00);
    rotate(i);
    line(0, maximav*11, 0, 0 );
    popMatrix();


    pushMatrix();
    strokeWeight(1);
    stroke(#006430);
    rotate(i);
    line(0, minimav*11, 0, 0);
    popMatrix();
  }
}