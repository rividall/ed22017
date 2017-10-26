import processing.pdf.*;


Punto miPunto;
boolean guardar;

void setup() {
    size (500, 500);
    smooth();
    miPunto = new Punto();
    guardar = false;
}

void draw() {
  //background(0);
  if(guardar){
    beginRecord(PDF, "ioleas11e00.pdf");
    background(0);
  }
  fill(0,50);noStroke();rect(0,0,width,height);
  miPunto.correr();
  
  if(guardar){
    endRecord();
    guardar = false;
  }
  }
  
  void keyPressed(){
    if (key == 'p'){
      guardar = !guardar;
    }

  
  
  
  
  
}
  