Gutierrez[] papers = new Gutierrez[100];
Gutierrez[] blood1 = new Gutierrez[50];
Gutierrez[] blood2 = new Gutierrez[50];//asignacion de nombre de objeto para las clases en el codigo principal
// junto con el numero de elementos que sera creado en cada objeto.

void setup() {
  size(700, 700);
  for (int i = 0; i < papers.length; i++){
  papers[i] = new Gutierrez(random(700));
 }
 for (int i = 0; i < blood1.length; i++){
  blood1[i] = new Gutierrez(random(700));
 }
 for (int i = 0; i < blood2.length; i++){
  blood2[i] = new Gutierrez(random(700));//seran creado 100 elementos que se moveran al azar.
 }
 }

void draw(){
  background(0);
   for (int i=0; i < papers.length; i++){
  papers[i].display();
  papers[i].move();
}
for (int i=0; i < blood1.length; i++){
  blood1[i].display1();
  blood1[i].move1();
}
for (int i=0; i < blood2.length; i++){
  blood2[i].display1();
  blood2[i].move2();// seran dibujados 100 objetos con las especificaciones de cada display y move
}
}