int [] tamano = new int[3];//declaracion de array de 3 variables
int crecimiento;
color[] colores = new color[3];
int variedades;
void setup(){
size(700,700);
colores[0] = #FA3535;  //valor de primera variable de array
colores[1] = #1F1DDE; 
colores[2] = 0;
tamano[0] = 100;
tamano[1] = 200;
tamano[2] = 300;
}
void draw(){
  background(255);
  fill(colores[variedades]);// el color partira siendo 0 y luego ira variando
  ellipse(width/2,height/2,tamano[crecimiento],tamano[crecimiento]);
}
void keyPressed(){
 variedades=(int)random(colores.length);//la variacion sera aleatoria
 crecimiento=(int)random(tamano.length);
 }