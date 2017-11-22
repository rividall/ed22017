class Manuela_con_mayuscula {
  //variable 
  float x, y, diametro, stroke1, stroke2, vx, vy;
  color verde, amarillo, negro, blanco;

  Manuela_con_mayuscula() {
    x = random(2);
    y = random(200);
    diametro = 55;
    stroke1 = 3;
    stroke2 = 10;
    verde = #A3BD31;
    amarillo = #DEDC1C;
    blanco = #FFFFFF;  
    negro = #000000;
    vx = 2;
    vy = 1;
  }
  // Métodos

  void movimiento() {
    x += vx;
    y += vy;
    if (x > width || x < 0) {
      //vx *= -1;
    }
    if (y > height || y < 0) {
      //vy *= -1;
    }
  }

  void circulo () {  
    stroke(amarillo);
    strokeWeight(stroke2);
    fill(verde);  
    ellipse(x, y, diametro, diametro); 

    noFill(); 
    stroke(blanco); 
    strokeWeight(stroke1); 
    ellipse(x, y, 110, 110); //valores de la ellipse
    ellipse(x, y, 130, 130); //valores de la ellipse
    ellipse(x, y, 150, 150); //valores de la ellipse
    ellipse(x, y, 170, 170); //valores de la ellipse
    ellipse(x, y, 190, 190); //valores de la ellipse
    ellipse(x, y, 210, 210);//valores de la ellipse
  }
}