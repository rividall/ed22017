class Manuela { //Inicio de la clase
  //se declaran las variables de float y color
  float x, y, diametro, stroke1, stroke2, stroke3, vx, vy;
  color verde, amarillo, negro, blanco;


  //Constructor, es aquí en donde se declaran los valores de las variables
  Manuela() { 
    x = random(255);
    y = random(255);
    diametro = 100;
    stroke1 = 3;
    stroke2 = 5;
    stroke3 = 8;
    verde = #A3BD31;
    amarillo = #DEDC1C;
    blanco = #FFFFFF;  
    negro = #000000;
    vx = 2;
    vy = 1;
  }

  //inicio función de movimiento
  void movimiento() {
    x += vx; // x = x+vx
    y += vy; // y = y+vy 
    if (x > width || x < 0) { //Sí x es mayor al ancho , ó x es menor a 0
      vx  *= -1; // vx se multiplica por -1
    }
    if (y > height || y < 0) { //Sí y es mayor al alto, ó y es menor a 0
      vy *= -1; // vy se multiplica por -1
    }
  } //Cierre función movimiento

  //inicio función circulo
  void circulo () {
    stroke(verde); 
    strokeWeight(stroke3); //strokeWeight = 8
    fill(amarillo); 
    ellipse(x, y, diametro, diametro); // (random, random, 100, 100)

    noFill(); 
    stroke(negro); 
    strokeWeight(stroke1); //strokeWeight = 3

    for (float i = 1; i < 11; i = i + 1) { //i es igual a 1, y se aumenta 1 hasta llegar a 11
      ellipse(x, y, 10*i, 10*i); // (random, random, 10*el resultado de i, 10*el resultado de i)
    }
  } //Cierre función circulo

  //inicio funcion argollas
  void argollas() {
    noFill(); 
    stroke(blanco); 
    strokeWeight(stroke2);  //strokeWeight = 5

    for (float i = 1; i < 10; i = i + 1) {   //i es igual a 1, y se aumenta 1 hasta llegar a 10
      ellipse(250, 250, x*i, x*i); //(250, 250, random*el resultado de i, random*el resultado de i)
    }
  } //Cierre función circulo
} // Cierre clase