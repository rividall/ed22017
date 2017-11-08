class Joaquin {
  
  //Se declaran las variables
  int x, y, s;
  int vx, vy;

  Joaquin(int w, int h) { //se le asignan valores a las variables
    vx=(int)random(-15, 15);
    vy=(int)random(-15, 15);
    x = w;
    y = h;
    s = (250);
  }



  void pokebola() { //funcion que llama a las otras funciones y la convierte en una sola
    movimiento();
    tres();
    keyPressed();
  }
  void movimiento() { //parametros de rebote
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height || y < 0) {
      vy *= -1;
    }
    x += vx;
    y += vy;
  }

  void tres() { //dibujo de la pokebola
    //función 3
    fill(255, 0, 0);
    arc(x, y, s, s, PI, PI*2, CHORD);
    fill(255);
    arc(x, y, s, s, 0, PI, CHORD);
    ellipse(x, y, s - 177, s - 177);
  }

  void keyPressed() { /*Teclas que alteran la posición de 
   las pokebolas para hacer explosione*/

    if (key=='q') {
      x = 50;
      y = 50;
    }
    if (key=='w') {
      x = 750;
      y = 50;
    }
    if (key == 'e') {
      x = 750;
      y = 750;
    }
    if (key == 'r') {
      x = 50;
      y = 750;
    } else {
      x = x + vx;
      y = y + vy;
    }
  }
}