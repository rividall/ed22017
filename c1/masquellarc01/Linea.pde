class Linea {
  //atributos
  float x, y, a, b;

  //constructor
  Linea() {
    x = 20;
    y = 20;
    a = 50;
    b = 50;
  }
  //métodos
//Patrón de líneas horizontales y verticales
  void lineav(float x, float y, color m) {
    /*for (float i = x; i < 189; i += 4){
     //for(float j = y; j < 265; j += 5){
     x = (int)map(mouseX, 0,width,0,100);
     for (int i =0;i<x; i+= 1) {
     float nuevoi = map(i,0,x-1,width,0);
     l.lineav(0);*/

    stroke(m);
    strokeWeight(1); 
    line(x + 330, y + 51, x + 330, y + 400);
    
  }
   void lineah(float a, float b, color m) {
    stroke(m);
    strokeWeight(1);
    //line(a + 523.43, b + 464.43, a + 0.43, b + 464.43);
    line(a - 90, b + 2, a+190, b+ 2);
   
   }
     }