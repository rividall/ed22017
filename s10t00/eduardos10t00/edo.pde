//Nueva clase
class edo {           // se declaran las variables de la clase edo
  float x, y, vx, vy, tam;
  color c;


  // Constructor
  edo() {                  //se inician las vaiables de la clase edo
    x = 0;
    y = 0;
    vx = random(3, 6);
    vy = random(3, 6);
    c = color(#4EDEAF);
    tam = 65;
  }
  // Métodos
  void movimiento() {     //función de movimiento
    x += vx;
    y += vy;
    if (x > width || x < 0) {    //si la figura toca uno de los lados
      vx *= -1;                  //rebota
    }
    if (y > height || y < 0) {   //si toca uno de los lados
      vy *= -1;                  //rebota
    }
  }

  void circulo() {          //función de dibujo
    strokeWeight(4);
    stroke(#90FFDB);
    fill(c);
    ellipse(x, y, 25, 25);
    strokeWeight(10);
    stroke(#313131);
    point(x, y);
    noFill();
    strokeWeight(3);
    stroke(#B2FFE6);
    ellipse(x, y, 40, 40);
    strokeWeight(2);
    rectMode(CENTER);
    //rect(x, y, 50, 50);
    stroke(#E0FFF5);
    //rect(x, y, 65, 65);
    stroke(#F0FFFA);
    ellipse(x, y, tam, tam);
  }


void raton() {              
  if (mousePressed) {         //si se mantiene clickeado el mouse
    ellipse(x, y, 100, 100);  //se dibuja una elipse y
    tam+=5;                   //el tamaño de la elipse aumenta
    
  } else {                   // si no,
    ellipse(x, y, tam, tam);  // se dibuja una elipse y
    tam-=5;                  //el tamaño de la elipse disminuye
  }
}



}