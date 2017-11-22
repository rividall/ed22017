boolean t, tt, ttt; // Declarar nuestros boolean.
color morado, dorado, fondo, blanco, negro; // Declarar colores a usar.
PShape bot, triangulo; // Declarar que existen 2 imagenes svg.
int[] tamano = new int[4]; // Crea un espacio en la memoria
int et; // eleccion tamaño
int[] colores = new color[4]; // Crea un espacio en la memoria para los cuatro colores.
int ec1, ec2; // elección color
int tam; // tamaño2


void setup() { 
  size (1280, 640); // Definimos el tamaño del canvas, en este caso un 1290px y 640px
  bot = loadShape("hexagono.svg"); /* llamamos a la imagen svg, que está en la 
   carpeta data.*/

  bot.disableStyle();/* Method que deshabilita el estilo proveniente del svg 
   y ocupa el de processing.*/
  triangulo = loadShape("triangulos.svg"); /* llamamos a la imagen svg, que está en 
   la carpeta data.*/

  triangulo.disableStyle();/* Method que deshabilita el estilo   proveniente del 
   svg y ocupa el de processing.*/
  morado = color(114, 19, 102); // se declara el rgb de morado.
  dorado = color(234, 160, 13); // se declara el rgb de dorado.
  negro = color(0, 0, 0); // se declara el rgb de fondo.
  blanco = color(255); // se declara el rgb de blanco.
  fondo= color(125);
  tam = 50;
  
  tamano[0]= tam/4;
  tamano[1]= tam/2;
  tamano[2]= tam;
  tamano[3]= tam*2;
  
  colores[0]=morado;
  colores[1]=dorado;
  colores[2]=negro;
  colores[3]= blanco;
}
void draw() {
  background(fondo); // ponemos el color de fondo
  strokeWeight(1); // linea de 1 px.
  if (ec1 == ec2){
  ec2 = ec2+1;
  if ( ec2>=4){
    ec2 = 0;
  }
  }
  figura1(100, mouseX, mouseY, colores[ec1], colores[ec2], fondo); /* llama al void de la
 figura1 declarada abajo.*/
  nuclear(50, mouseX+300, mouseY, colores[ec1], colores[ec2]);/* llama al void de nuclear
   declarada abajo.*/
  figura2(150, mouseX-300, mouseY, colores[ec1], colores[ec2], fondo);/* llama al void de la
   figura2 declarada abajo.*/
}
void figura1(float dc, float p1, float p2, color c1, color c2, color fondo) { 
  /* Esta función creará una especie de mandala/ojo, basado en la creación de 
   circulos  girados en un punto medio, con 6 puntos semitransparentes que giren
   dentro de la figura.
   Se le agrega un boolean para que cambie la dirección del giro.*/
  /* dc = diametro circulo.
   p1 = posicion x de la figura. 
   p2 = posicion y de la figura.
   c1 = color 1.
   c2 = color 2.
   c3 = color del fondo. */

  stroke(c2); // el color de las lineas es c2.
  pushMatrix(); // Todo lo que se haga dentro de este esta funcion solo se aplica aqui.
  translate(p1, p2); // Movemos el punto medio a p1 y p2.
  fill(c1); // el color del relleno es c1.
  ellipse(0, 0, dc, dc); /* creamos un circulo central de punto 0,0 (que cambiamos con
translate*/
  fill(fondo); /* Ahora crearemos un circulo con relleno del color del fondo para
  simular un vacío y simular un aro */
  ellipse(0, 0, dc*0.777, dc*0.777); 
  fill(c1); /* crear una "pupila" central */
  ellipse(0, 0, dc*0.333, dc*0.333);
  for (int i = 0; i < 360; i+=10) { /* este for nos ayuda a crear formas y repetirlas
  en una rotación de 10 grados.*/
    float x = sin(radians(i))*dc*0.44; /* formula para conseguir x a partir de los 
    grados en i.*/
    float y = cos(radians(i))*dc*0.44; /* formula para conseguir y a partir de los 
    grados en i.*/
    pushMatrix(); // Abre la matriz 2.
    translate(x, y); // Mueve el centro segun los grados dados por el sin y cos de i.
    noFill(); // Sin relleno.
    ellipse(x, y, dc, dc); /* Crea circulos en centro x,y (dados por sin y cos de i)
de diametro dc*/
    popMatrix(); // Cierra la matriz 2.
  }
  for (int j = 0; j < 360; j+=20) { /* este for nos ayuda a crear formas y repetirlas
  en una rotación de 20 grados.*/
    float q = sin(radians(j))*dc*0.333;/* formula para conseguir q a partir de los 
    grados en j.*/
    float w = cos(radians(j))*dc*0.333;/* formula para conseguir w a partir de los 
    grados en j.*/
    pushMatrix(); // Abre la matriz 3.
    translate(q, w); // Mueve el centro segun los grados dados por el sin y cos de j.
    noFill(); // Sin relleno.
    ellipse(q, w, dc, dc);/* Crea circulos en centro q,w (dados por sin y cos de j)
de diametro dc*/
    popMatrix(); // Cierra la matriz 3.
  }
  if (t) { // Crear un boolean para cambiar la dirección del giro.
    rotate(radians(frameCount)); // Gira segun el frameCount.
    circulosgirando(dc, c1); // Crea el void circulosgirando. declarado mas abajo.
  } 
  if (!t) {
    rotate(radians(frameCount*-1)); // Gira en sentido contrario.
    circulosgirando(dc, c1); // Crea el void circulosgirando. declarado mas abajo.
  }
  popMatrix(); // Cierra la matriz 3.
}
void circulosgirando(float dc, color c1) /* Esto creará 6 circulos separados por 60
grados. */
{
  for (int k = 0; k < 360; k+=60) {/* este for nos ayuda a crear formas y repetirlas
  en una rotación de 60 grados.*/
    float a = sin(radians(k))*dc*0.55;/* formula para conseguir a a partir de los 
    grados en k.*/
    float s = cos(radians(k))*dc*0.55;/* formula para conseguir s a partir de los 
    grados en k.*/
    pushMatrix(); // Abre la matriz 4.
    translate(a, s); // Mueve el centro segun los gradod dados por el sin y cos de k.
    fill(c1, 200); // Cambia el color a c1 con una opcidad 200 de 255.
    ellipse(a, s, dc*0.277, dc*0.277); /* Crea una ellipse de centro a y s con tamaño
    escalado dado por dc*/
    popMatrix(); // Cierra la matriz 4.
  }
}
void figura2( float df, float p1, float p2, color c1, color c2, color c3) { 
  /* Esta función creará un conjunto de hexágonos que unidos harán una composición.
  y cuatro triangulos cortados en la punta girarán en torno a esta.
   Se le agrega un boolean para que cambie la dirección de color*/
  
  /* df = diametro figura.
   p1 = posicion x de la figura. 
   p2 = posicion y de la figura.
   c1 = color 1.
   c2 = color 2.
   c3 = color del fondo. */
   
  translate(p1, p2); // Movemos el punto medio a p1 y p2.
  
  /* Crear los parametros para que el boolean permita el cambio de color.*/
  int cc1 = c1;
  int cc2 = c2;
  if (tt) {
    cc1 = c1;
    cc2 = c2;
  }
  if (!tt) {
    cc1 = c2;
    cc2 = c1;
  }
  
  fill(c1); // relleno color c1.
  noStroke(); // sin línea.
  pushMatrix(); // Abrir matriz 5.
  if (!tt) {
  rotate(radians(frameCount));} /* hacer que gire según los grados dados por el. 
  frameCount. */
   if (tt) {
     rotate(radians(frameCount*-1));}
  fill(cc1); // relleno dado por c1 o c2.
  shape(triangulo, -df*0.5, -df*0.5, df, df); /* dibujamos el svg triangulo 
  de tamaño df.*/
  popMatrix(); // Cerrar matriz 5.
/* Ahora crearemos un circulo con relleno del color del fondo para
  simular un vacío*/
    fill(c3); 
  ellipse(0, 0, df*0.833, df*0.833); /* Crea circulos en centro 0,o (dados por 
  p1 y p2) de diametro porcentual a df*/
  
  fill(cc2); // relleno dado por el contrario de c1 o c2.
  
  /* con el mismo método usado en figura 1, crearemos 6 figuras que creen la 
  composicion*/
  for (int i = 0; i < 360; i+=60) {
    float x = sin(radians(i))*df*0.1166;
    float y = cos(radians(i))*df*0.1166;
    pushMatrix(); 
    translate(x, y);

    //noStroke();
    shape(bot, x-df*0.1666, y-df*0.1666, df*0.333, df*0.333);
    popMatrix();
  }
}
void nuclear( int lado, float x, int y, color a, color b) { 
  /* Esta función creará un símbolo de "Nuclear" con 3 arcos en 60 grados girando
  a su alrededor
  se le agrega un boolean que afecte tanto al color como a la dirección de giro.*/
  
  int cc1 = a;
  int cc2 = b;
  if (ttt) {
    cc1 = a;
    cc2 = b;
    arc(x, y, lado*4, lado*4, radians(frameCount+240), radians((frameCount+lado/2)+240));
    arc(x, y, lado*4, lado*4, radians(frameCount+120), radians((frameCount+lado/2)+120));
    arc(x, y, lado*4, lado*4, radians(frameCount), radians(frameCount+lado/2));
  }
  if (!ttt) {
    cc1 = b;
    cc2 = a;
    arc(x, y, lado*4, lado*4, radians((frameCount*-1)-240), radians(((frameCount-lado/2)+240))*-1);
    arc(x, y, lado*4, lado*4, radians((frameCount*-1)-120), radians(((frameCount-lado/2)+120))*-1);
    arc(x, y, lado*4, lado*4, radians(frameCount*-1), radians((frameCount-lado/2))*-1);
  }
  stroke(cc1);
  fill(cc2);
  ellipse(x, y, lado*3, lado*3);
  fill(cc1);
  triangle(x, y, x-lado, y, x-lado/2, y-lado);
  triangle(x, y, x+lado/2, y-lado, x+lado, y);
  triangle(x, y, x+lado/2, y+lado, x-lado/2, y+lado);
  fill(cc1);
  stroke(cc2);
  strokeWeight(lado/10);
  ellipse(x, y, lado/2, lado/2);
}
void mousePressed() {
  ttt=!ttt;
  tt=!tt;
  t=!t;
}
void keyPressed() {
  et = (int)random(tamano.length);
  ec1 = (int)random(colores.length);
  ec2 = (int)random(colores.length);
}