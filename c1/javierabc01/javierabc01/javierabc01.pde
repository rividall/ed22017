//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II -  Certamen 2 -  Javiera Barraza
 
 /*Se pide entregar un programa en donde se pueda modificar el comportamiento de  
 objetos por medio de input de mouse y el teclado, y que una vez el programa no 
 reciba input, este tenga un cambio cíclico. Los comportamientos a diseñar tienen 
 que  ser relacionados al movimiento y ritmo del entorno natural: olas, viento,
 nieve, agua, ondulación, lluvia, vuelo.
 
 Como mínimo el programa debe tener **una clase**

 Además del programa se debe entregar un frame impreso en tamaño tabloide, por lo que la resolución del programa debe ser coherente con el tamaño del impreso, no necesariamente la misma resolución.

 Se tendrá un **[FRAMED*](https://frm.fm/)** para correr los programas y generar una exposición hacia la universidad.

 Se creo una [galería](https://www.designspiration.net/nicotron/c1/) de imagenes referenciales.
 
 */
 
color whi = color(#ffffff);
color bla = color(#000000);
color cel = color (#B7FAFF);
color lil = color (#D9A5FF);
color ros = color(#FEE5FF);
import processing.pdf.*;
boolean guardarpdf, lluvia, dia;
int i;


Nube n1 = new Nube ();
Nube n2 = new Nube ();
Nube n3 = new Nube ();
Copito c1 = new Copito(random(10,height), 40); 
Copito c2 = new Copito(random(10,height), 50); 
Copito c3 = new Copito(random(10,height), 10); 
Copito c4 = new Copito(random(10,height), 80); 
Copito c5 = new Copito(random(10,height), 100); 
Copito c6 = new Copito(random(10,height), 120); 
Copito c7 = new Copito(random(10,height), 200);
Copito c8 = new Copito(random(10,height), 170);
Copito c9 = new Copito(random(10,height), 250); 
Copito c10 = new Copito(random(10,height), 260); 
Copito c11 = new Copito(random(10,height), 290);
Copito c12 = new Copito(random(10,height), 320);
Copito c13 = new Copito(random(10,height), 380); 
Copito c14 = new Copito(random(10,height), 400); 
Copito c15 = new Copito(random(10,height), 440);
Copito c16 = new Copito(random(10,height), 500);
Copito c17 = new Copito(random(10,height), 530);
Copito c18 = new Copito(random(10,height), 590); 
Copito c19 = new Copito(random(10,height), 650); 
Copito c20 = new Copito(random(10,height), 690);
Copito c21 = new Copito(random(10,height), 710);
Copito c22 = new Copito(random(10,height), 740); 
Copito c23 = new Copito(random(10,height), 780); 
Copito c24 = new Copito(random(10,height), 800);
Copito c25 = new Copito(random(10,height), 840);


void setup() { //Se define el tamaño del canvas y el framerate
  size(850, 550); //Tamaño del canvas
  frameRate(30);
}


void draw() { 
  noStroke(); //Se eliminan los bordes

if (guardarpdf) {
    beginRecord(PDF, "javierabc01.pdf");
}

if(dia){ 
background(#19447f);

for(i = 0; i < height; i ++)
{
stroke(#04102b,500-(i*2));
line(0,i,width,i);
}
}
else{
background(#e29842);

for(i = 0; i < height; i ++)
{
stroke(#808080,500-(i*2));
line(0,i,width,i);
}
}

 noStroke();

rect(0, 420, width, height/4);
fill(#ffffff);


n1.update();
n2.update();
n3.update();
c1.update(); 
c2.update();
c3.update();
c4.update();
c5.update(); 
c6.update();
c7.update();
c8.update();
c9.update(); 
c10.update();
c11.update();
c12.update();
c13.update(); 
c14.update();
c15.update();
c16.update();
c18.update(); 
c19.update();
c20.update();
c21.update();
c22.update(); 
c23.update();
c24.update();
c25.update();


if (guardarpdf) {
    endRecord();
    guardarpdf = false;
  }
 
}


void keyPressed() {
  
    if (key == 'p') { //Sí se preciona "p", se guardara un frame como PDF.
    guardarpdf = !guardarpdf;
    }
    
    if (key == 'l') {
      lluvia = !lluvia;
    }
}


void mousePressed() {
 
    dia = !dia;
}