// Nueva clase.
class Edo {

  int x1, y1, x2, y2, cx, cy, x3, y3, x4, y4; // Se declaran las variables decimales, de color y enteras.
  int veluno, veldos;
  color aqua, blanq, celq;
  float i = 0;
  float o = 0;
  float g = 3;
  float f = 2;

  // Constructor.
  Edo() {
    x1 = 70;       // Se inician las variables decimales, de color y enteras.
    y1 = 70;
    x2 = 70;
    y2 = 70;
    cx = 325;
    cy = 250;
    x3 = 50;
    y3 = 100;
    veluno = 1;
    veldos = 2;
    aqua = (#8BC0FF);
    blanq =(#D6E9FF);
    celq = (#AAD8FF);
  }
  // Métodos.
  void ondas() {    // Se dibujan las ondas que aparecen y decaparecen.
    stroke(aqua);
    strokeWeight(3);
    noFill();
    ellipse(width/2, height/2, x1, y1);
    stroke(blanq);
    ellipse(width/2, height/2, x2, y2);


    if (x1 > 200) {        // Si el tamaño de la elipse 1 supera los 200px, la elipse vuelve a crearse desde 70px.
      x1 = 70;
      if (y1 > 200) {
        y1 = 70;
      }
    }

    if (x2 > 300) {       // Si el tamaño de la elipse 2 supera los 300px, la elipse vuelve a crearse desde los 70px.
      x2 = 70;
      if (y2 > 300) {
        y2 = 70;
      }
    }


    x1 += veluno;        // Los tamaños aumentan en 1 y 2 px.
    y1 += veluno;
    x2 += veldos;
    y2 += veldos;
  }

  void centro() {         // Se dibujan los arcos que rotan.
    stroke(celq);
    strokeWeight(5);
    translate(cx, cy);   // Posiciona el arco a la mitad del canvas.
    rotate(i);           // Velocidad rotación.
    arc(0, 0, 20, 20, PI, PI*2);
    resetMatrix();

    translate(cx, cy);
    rotate(o);
    arc(0, 0, 50, 50, PI, PI*2);
    resetMatrix();

    i=i+0.04;         // Rotación hacia la derecha.
    o=o-0.05;         // Rotación hacia la izquierda.
  }

  void lineas() {       //Se dibujan las líneas que rotan.

    strokeWeight(g);
    translate(cx, cy);
    rotate(i);
    line(120, 120, 160, 160);
    resetMatrix();


    translate(cx, cy);
    rotate(o);
    line(120, 120, 160, 160);
    resetMatrix();

    translate(cx, cy);
    rotate(i+10);
    line(75, 75, 90, 90);
    resetMatrix();

    translate(cx, cy);
    rotate(o+5);
    line(75, 75, 90, 90);
    resetMatrix();
  }



  void keyPressed() {      // Si se aprieta la tecla c, el color de las ondas y grosor de las líneas cambian; si se aprieta n, se revierten los cambios.
    if (key == 'c') {
      aqua = color(0, 0, random(50, 200));
      blanq = color(0, 0, random(50, 200));
      g ++;
    }
    if (g >= 25) {        // Cuando las líneas sean o superen los 25px de grosor, se quedarán así.
      g --;
    }

    if (key == 'n') {
      aqua = #8BC0FF;
      blanq =#D6E9FF;
      g --;

      if (g <= 3) {       // Cuando las líneas sean inferior o igual a los 3px de grosor, se quedarán así.
        // mentira.
        g ++;
      }
    }
  }

  void ptos() {        // Se dibuja un punto.
    strokeWeight(4);
    stroke(#8BAAA9);
    for (int i = -600; i < 400; i +=15) {   // El punto se multiplica por todo el eje Y.
      point(x3, y3+i+mouseY);  // El punto sigue al mouse en el eje Y.
    }

    x3 +=3;
    if (x3 > 650) {    // El punto vuelve a aparecer al llegar al final del canvas.
      x3 = 0;
    }
  }

  void click() {         // Función de mouse.
    if (mousePressed) {
      celq = #FF989B;     // Mientras el mouse está clickeado, el color celq es rojo.
    } else {
      celq = #AAD8FF ;   // Cuando el mouse no está clickeado, el color rojo es celq.
    }
  }
}
