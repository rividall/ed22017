/* Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - 
 Expresión Digital II - Sofía Oller Vidal - Por ejemplo - lerp() */

// Lo que está en comentario es un lerp pero con vibrador.
float x = 0;
float s = 300;
//float smoothSensor = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(#000000);

  //float sensor = mouseX + random(-15, 15);
  //smoothSensor = lerp(smoothSensor, sensor, 0.02);
  x = lerp(x, s, 0.02);

  stroke(255);
  fill(#E866F7);
  //ellipse(smoothSensor, 200, 64, 64);
  ellipse(s, 200, 64, 64);
  fill(#73DDFC);
  ellipse(x, 200, 64, 64);
  //ellipse(sensor, 200, 64, 64);
}
void mousePressed() {
  s = mouseX;
  //smoothSensor = mouseX;
}