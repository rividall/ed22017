class JaviR {
  // variables
  float a, b, x, x2, y, y2, vx, vy, vx2, vy2, cant, tam, tam2;
  int q, w;

  // colores iniciales de los objetos
  color espuma = color(227, 217, 202);
  color agua = color(149, 167, 146);

  color[] esp = new color[4]; // array espuma
  color[] ag = new color[4]; // array agua

  // constructor
  JaviR() {
    x = width/2;
    y = height*.3;
    y2 = height;
    x2 = random(width);
    vx = random(-3, 4);
    vy = random(-3, 4);
    vy2 = random(-4, -1);
    cant = 3;
    tam = random(1, 5);
    tam2 = random(1, 4);
    q = 2;
    w = 5;

    // colores del primer array
    esp[0] = color(227, 217, 202); // 1
    esp[1] = color(255, 255, 219); // 2
    esp[2] = color(249, 248, 235); // 3
    esp[3] = color(233, 226, 208); // 4
    // colores del segundo array
    ag[0] = color(149, 167, 146); // 1
    ag[1] = color(0, 170, 160); // 2
    ag[2] = color(122, 158, 177); // 3
    ag[3] = color(110, 87, 115); // 4
  }

  // métodos
  void union() {
    espuma();
    olas();
    mover();
    onda();
    keyPressed();
  }

  void olas() {
    noStroke();
    fill(espuma);
    ellipse(x, y, tam, tam);
  }

  void espuma() {
    fill(agua); 
    ellipse(x2, y2, tam2, tam2);
  }

  // se genera un desplazamiento lineal
  void mover() {
    // moviemiento espuma
    y += vy;
    x += vx;

    if (x > width || x < 0) {
      x = width/2;
      y = height*.3;
    }

    // moviemiento agua
    y2 += vy2;
    x2 += vx2;

    if (y2 < height*.3) {
      y2 = height;
    }
  }

  // genera las ondas del movimiento
  void onda() {
    //ondas espuma
    vy = cant * cos(radians(a*6))/q;
    a++;
    //ondas agua
    vx2 = cant * cos(radians(b*4))/w;
    b++;
  }

  // se cambia la paleta de colores por medio del teclado
  void keyPressed() {
    if (key == 'a') {
      espuma = esp[0];
      agua = ag[0];
    }

    if (key == 's') {
      espuma = esp[1];
      agua = ag[1];
    }

    if (key == 'd') {
      espuma = esp[2];
      agua = ag[2];
    }

    if (key == 'f') {
      espuma = esp[3];
      agua = ag[3];
    }

// mientras mayor el número, más pequeña será la onda
// espuma
    if (key == '1') { q = 1; }
    if (key == '2') { q = 2; }
    if (key == '3') { q = 3; }
    if (key == '4') { q = 4; }
    if (key == '5') { q = 5; }
    
// mientras mayor el número, más pequeña es la onda
// agua
    if (key == 'q') { w = 1; }
    if (key == 'w') { w = 2; }
    if (key == 'e') { w = 3; }
    if (key == 'r') { w = 4; }
    if (key == 't') { w = 5; }
  }
}