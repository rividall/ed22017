//Universidad del desarrollo, Facultad de diseño, Diseño Digital
// ¿Quién hizo esto?
/*Se pide entregar un programa en donde se pueda modificar una grilla 
por medio de input de mouse y el teclado, y que una vez el programa 
no reciba input, este tenga un cambio cíclico. Las opciones de 
modificaciones de la grilla*/
/*grilla de ellipses que agrandan su tamaño y donde la x de la grilla
está modificada por el mouse. Además se verá un fondo creciendo desde la esquina (0,0) más 
3 circulos que imitarán una cara detras de la grilla. Su boca hablará de acuerdo al mouse en 
su eje x. Por último, con las letras a, s, y d; la grilla cambiará de color.*/

// se declaran las variables
float margen;
float t, x, y, z, w, f, g;
float margenx, margeny;
color myColor;
int velx, vely;
void setup() {
  size(500, 500);//crea el canvas
  z =  40; //se valoriza z
  w =  40; // se valoriza w
  margen = x;// se valoriza margen
  myColor = #CB9090; //se asigna un color a la variable
  x = 10; //se valoriza x
  y = 10;//se valoriza y
  noStroke(); //sin línea
}

void draw() {
  background(255); //se asigna un color al fondo

  //noStroke(); //sin línea
  fill(#F5D5D5);//con un color asignado
  rect(0, 0, z, w);//se dibuja un rectángulo

//  //noStroke();//sin línea
  fill(#7C4D4D);//con un color asignado
  ellipse(155, 100, 90, 90);//se dibuja un elipse
  ellipse(350, 100, 90, 90);//se dibuja un elipse
  ellipse(255, 255, mouseY, mouseX);//se dibuja un elipse

  z += 0.9;// se va sumando 0.9 al valor de z
  w += 0.9;// se va sumando 0.9 al valor de w



  //  loop     init, text, update
  for (float i = x; i <= width - mouseX; i += 50) {// for loop con i para x, si a x (10)es menor o igual al ancho menos el valor del mouse (x), a x se le suma el valor 50
    for (float j = y; j < height - margen; j += 50) {//for loop con j para y; si a y(10)es menor o igual al alto menos el valor del mouse (y), a y se le suma el valor 50

      fill(myColor);//con un color asignado
      noStroke();//sin línea
      ellipse(i, j, x, y); //se dibuja un elipse
      x += 0.001;// a x se le suma el valor de 0.001
      y += 0.001;//a y se le suma el valor de 0.001

      if (x > 60) { // si x es mayor a 60, x deja de crecer
        x-= 0.002;
      }
      if (y > 60) { // si x es mayor a 60, x deja de crecer
        y-= 0.002;
      }
    }
  }
}


void keyPressed() {
  if (key == 'a') { //letra a se declara para color negro
    myColor = #000000;
  }
  if (key == 's') {
    myColor = #FCFAFA ;//letra s se declara para color blanco
  }

  if (key == 'd') {// letra d se declara para rosado
    myColor = #CB9090;
  }
}