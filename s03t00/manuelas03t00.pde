int x, y, velx, vely; //declaro las variables de x, y, velocidad
color mycolor; //declaro la variable del color

void setup () {
  size (500, 500); //tamaño del canvas
  x = 250; //cordenada de x
  y = 1; //cordenada de y
  mycolor = #A3BD31; //verde 
  velx = (int)random(0, 8); //velocidad y valores de x
  vely = (int)random(5, 3); //velocidad y valores de y
}

void draw () {
  noStroke(); //sin vorde
  fill (mycolor); //relleno verde
  ellipse (x, y, 10, 10); //cordenadas del circulo
  //noStroke ();
  //fill (#CCCCCC);
  //rect (0, 240, 500, 30);
  //rect (240, 0, 30, 500);
  
  
  if  (x > 500 || x < 0) { //cordenadas de x
    velx *=-1; //se invierte
  }

  if (y > 500 || y < 0) { //Cordenadas de y
    vely *=-1; //se invierte
  }

  if (x < 250 && y < 250) { //si x es menor a 250
    mycolor = #A3BD31; //color verde
  } 

  if (x < 250 && y > 250) {
    mycolor = #FFFFFF; //color blanco
  }

  if (x > 250 && y > 250) {
    mycolor = #DEDC1C; //colo amarillo
  } else if (x > 250 && Y < 250) { //si x es mayor a 250 
    mycolor = #000000; //color negro
  }

  x += velx; //x aumenta su valor
  y +=vely; //y aumenta su valor
}