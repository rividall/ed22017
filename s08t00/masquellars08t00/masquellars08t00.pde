// muy difícil de entender todo
//#AA4225 rojo
//#058789 verde
//#030303 negro
color eleccionC;
color[] r = new color[4];
color c, blanco;
int  x, q, w, o;
float e, t, p, l;
int[] u = new int [3];
boolean m;
int eleccionu;

void setup() { 
  size(500, 500);// Tamaño del canvas
  // valoriza las  
  r[0] = #AA4225;
  r[1]= #058789;
  r[2] = #030303;
  r[3]= #FFFFFF;
  q = 100;
  w = 100;
  u[0] = 80;
  u[1] = 120;
  u[2] = 150;
  m = true;
  l = 120;
}

void draw() {
  background(r[eleccionC]);//color al fondo
  // se llaman las funciones creadas más abajo.
  fondorojo(q, w, u[eleccionu]);
  fondoverde(q, w, l);
  fondonegro(q, w);
  fondoblanco(q, w, #FFFFFF, e);
  // La figura se mueve en relacion a la posicion de x e y.
  if (mouseX > 225) {
    q = 0;
  } else { 
    q = 100;
  }
  if (mouseY > 225) {
    w = 0;
  } else { 
    w = 100;
  }

  e = map( mouseX, 0, 15, 0, 25);

  if (m) { //si m es verdadero o toma el valor de u
    o = u[0];
    if (!m) { //si m es falso o toma el valor de o
      o = (int)random(0, u.length);
    }
    for (float i = l; i < mouseX; i += 3) {
      l = 300;
      fill(#030303);
      triangle(x+75, w +75, x+75, w + 500, x+320, w+320);
    }
  }
}
// Se crea figura de color rojo para que se camufle en color de fondo rojo.
void fondorojo(int x, int y, int o) {
  noStroke();
  fill(#AA4225);
  ellipse(x+200, y +200, o, o);
  ellipse(x+275, y +275, o, o);
  ellipse(x+120, y +120, o, o);
}
// se crea figura verde para que se camufle en color de fondo verde.
void fondoverde(int x, int y, float p) {
  fill(#058789);
  rect(x + 175, y +175, 120, p);
  rect(x + 100, y +100, 120, p);
}
// se crea figura negra para que se camufle en color de fondo negra.
void fondonegro(int x, int y) {
  fill(#030303);
  triangle(x+75, y +75, x+75, y+320, x+320, y+320);
}
// se crea figura blanca para que se camufle en color de fondo blanca.
void fondoblanco(int x, int y, color blanco, float e) {
  fill(blanco);
  triangle(e+85, y +85, e+75, y+320, e+295, y+295);
}
//Al apretar s, el fondo cambia de color, al llegar al ultimo color vuelve al primero
void keyPressed() {
  if (key == 's') {
    eleccionC++;
    m = !m;
  }

  if (eleccionC > 3) {
    eleccionC = 0;
  }
  eleccionu++;
  if (eleccionu > 2) {
    eleccionu = 0;
  }
}