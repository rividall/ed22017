import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.pdf.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ioleac1 extends PApplet {

// no hay descripci\u00f3n general del programa

 //permitir que el codigo guarde pdf
boolean guardar;//boolean para guardar
int naranjo = color(255, 163, 13);
int blanco = color(255);

//DECLARAR

// Gota miGota;//declarar mi clase
Gota [] miGota = new Gota[10];

public void setup() {
  //canvas de tama\u00f1o 500 x 500
  
  guardar = false;//

  //INICIALIZAR
  for (int i = 0; i < miGota.length; i ++) {
    miGota[i] = new Gota(random(width), random(height));//inicializar mi clase en setup
  }

}

public void draw() {
  // background(0);
  if (guardar) {//codigo para guardar imagen pdf del codigo
    beginRecord(PDF, "c1ioleas.pdf");
    background(0);
  }
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);//Rectangulo negro con opacidad para
  //provocar estela con el movimiento de las formas

  //LLAMAR
  //miOnda.correr();
  for (Gota o : miGota) {
    o.caer();//Llamar para que llame a la clase
  }

  if (guardar) {
    endRecord();
    guardar = false;
  }
}
public void keyPressed() {
  if (key == 'p') {//si se presiona P , se guarda una imagen de pdf
    guardar = !guardar;
  }

  //if (key == 'q') {//cambia color de las ondas a uno random (actualmente no funciona)
   // naranjo = color(random(255), random(255), random(255));
    //blanco = color(random(255), random(255), random(255));
  }
//fin codigo
class Gota {
  //variables para la gota
  float x = 0;
  float y = 0;
  float centro;
  int diametroinicial = 300;
  int diametrofinal = 0;
  int achicar = -1;

  //variables para las ondas
  int xx, xx1, xx2 = 0;
  int yy, yy1, yy2 = 0;
  int speed = +5;
  int nospeed = 0;

  //constructor
  Gota (float _x, float _y) {
    centro = _x;
    y = _y;
  }

  public void caer() {//Funciones en una sola
    gota();//Circulo Relleno (Gota)
    cayendo();//Reduccion Circulo (Gota)
    ondanaranja();//Forma elipse naranja
    ondablanca();//Forma elipse Blanca
    expandirnaranjo();//Expansion elipse naranja
    expandirblanco();//Expansion elipse blanca
  }


  public void cayendo() {//Codigo para hacer que la elipse se reduzca
    diametroinicial = diametroinicial +achicar;
    if (diametroinicial < 0) {
      diametroinicial = diametrofinal;//si el diametro incial es menor que 0, se mantiene
      if (yy1 > 681) {                // se mantiene en 0
        diametroinicial = 301;//cuando la onda blanca sea mayor que 681, la gota vuelve
        //a su diametro original +1 para provocar el loop
      }
      if (diametroinicial > 300) {//si el diametro es mayor de 300, vuelve a llamarse
        diametroinicial = diametroinicial + achicar;  // la funcion para reducirlo
      }
    }
  }
  //funciones
  public void gota() {
    noStroke();//Sin l\u00ednea
    fill(142, 142, 142);//Relleno Gris
    ellipse(centro, centro, diametroinicial* cos(frameCount *0.009f), diametroinicial* cos(frameCount *0.009f));
  }//Elipse en el centro con 300 de diametro el cual se ve afectado por un coseno al
  public void ondanaranja() {    //desplazarse
    stroke(naranjo);//Linea Naranja
    strokeWeight(5);// Grosor de Linea 5
    noFill();//sin relleno
    ellipse(centro, centro, xx, yy);//elipse en el centro con 0,0 de diametro
  }

  public void ondablanca() {
    stroke(blanco);//Linea blanca
    strokeWeight(5);// Grosor de Linea 5
    noFill();//sin relleno
    ellipse(centro, centro, xx1, yy1);//elipse en el centro con 0,0 de diametro
  }

  public void expandirnaranjo() {//Movimiento de la elipse naranja
    if (diametroinicial == 0) {
      xx += speed;
      yy += speed;//si el diametro de la gota llega a 0, la elipse naranja crece
    }
    if (xx > 781 && yy > 781) {
      xx = nospeed;
      yy = nospeed;//si la elipse naranja es mayor a 781, vuelve a 0
    }
  }

  public void expandirblanco() {//movimiento de la elipse Blanca
    if (xx > 100 || xx1 > 0) {
      xx1 = xx1 + speed;
      if (yy > 100 || yy1 > 0) {
        yy1 =  yy1 + speed;//si la elipse naraja es mayor a 100 o la elipse blanca crece
      }                   //si la elipse blanca es mayor a 0, mantiene el crecimiento
    }
    if ( xx1 > 685 && yy1 > 685) {
      yy1 = nospeed;
      xx1 = nospeed;//si la elipse blanca llega a 685 de diametro, esta vuelve a 0
    }
  }
}
//Fin c\u00f3digo
  public void settings() {  size(500, 500);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "ioleac1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
