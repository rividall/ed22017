int x;
int y;
float m;
char letter;

int c1 = color(200, 220, 150, 30);
int c2 = color(51, 30);
boolean a; 

int[]numeros = new int [3];
color[]colores = new color [4];
float[]decimales = new float [3];

int eleccionNumeros;
int eleccionColores;
int eleccionDecimales;

void setup() {
  size(800, 800);

  m = map(mouseX, 0, 101, 0, width);
  
  
  numeros[0] = 800;
  numeros[1] = 600;
  numeros[2] = 1000;


  colores[0] = color(230, 150, 0);
  colores[1] = color(255, 80, 90, 30);
  colores[2] = color(204, 153, 0);
  colores[3] = color(255, 30);

  decimales[0] = m/2;
  decimales[1] = m/4;
  decimales[2] = m*2;
  
  println(eleccionNumeros);
  println(eleccionColores);
  println(eleccionDecimales);
}

void draw() {
  noCursor();
  background(50);
  
  lineas();
  pera();
  
  if (a == true) {
  esferitas(x, y);
  
  }
}

void esferitas(int a, int b) {
  for (int i = 8; i <= 200; i = i+20) {
    for (int j = 8; j <= 400; j = j+20) {
      a = i+2;
      b = j+2;

      stroke(c1);
      strokeWeight(6);
      ellipse(a, b, 10, 10);
    }
  }
  for (int i = 208; i <= 400; i = i+20) {
    for (int j = 8; j <= 400; j = j+20) {
      a = i+2;
      b = j+2;

      stroke(0);
      strokeWeight(4);
      ellipse(a, b, 10, 10);
    }
  }
}

void esfera() {
  for (int i = 10; i < 750; i += 20) {
    if (i < 200) {
      stroke(color(colores[eleccionColores]));
      strokeWeight(4);
      point(i, 100);
      
    } else if (i > 200 && i < 400) {
      strokeWeight(10);
      point(i, 200);
      
    } else if (i > 400 && i < 550) {
      strokeWeight(16);
      point(i, 300);
      
    } else if (i > 550 && i < 700) {
      strokeWeight(22);
      point(i, 400);
      
    } else {
      strokeWeight(28);
      point(i+150, 590);
      break;
    }
  }
} 

void lineas() {
  //lineas
  for (int i = 400; i < 800; i += 5) {
    if (i < 600) {
      stroke(c1);
      strokeWeight(2);
      line(i, 408, i, 750);
    } else {
      stroke(255);
      strokeWeight(0.5);
      line(i, 408, i, 750);
    }
  }
  for (int i=0; i<800; i=i+5) {
    strokeWeight(2);
    point(200, i);
    if (i>385) {
      strokeWeight(5);
      stroke(c1);
    }
  }
}

void pera(){
  esfera();
}

void keyPressed() {
  if (key == 'a') {
    a = !a;
}
  switch(letter) {
  case 'a': 
    println("Alpha");  // Does not execute
    break;
  case 'b':
    println("Beta");
    break;
  default: 
    println("Mu");  // Prints "Bravo"
    break;
}
}

void mousePressed() {
  eleccionColores = (int)random(colores.length);
}