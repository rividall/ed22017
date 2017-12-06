//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II 
// Catalina Juez

/*
Ejercicio donde tenemos una pelota rebotando constantemente que también se encuentra 
acelerando.
*/
float x, y, velx, vely; 

color miColor, miColor1; 

void setup() { 
  size(500, 400); 

  x = 1; 
  y = 1; 
  velx = 4; 
  vely = 4; 

  miColor= color(228, 115, 76);  
  miColor1= color(227, 133, 135);
  fill(miColor);
}

void draw() { 
  background(255); 
  ellipse(x, y, 30, 30);

  x += velx; 
  y += vely;

  noStroke();
  if (x > width || x < 0) { 
    velx = velx * -1.05; // En vez de hacer la velocidad constante, multiplicamos esta para que  esta velocidad se acelere con el tiempo

    fill(miColor); //Cambiar de color de la pelota.
  }
  if (y > height || y < 0) { 
    vely = vely * -1.05; // En vez de hacer la velocidad constante, multiplicamos esta para que  esta velocidad se acelere con el tiempo

    fill(miColor1); //Cambiar de color de la pelota.
  }
}
void keyPressed () {
  if (key == 'x') {   // Si apretas “x”  la variable “velx” se le resta 2.
    velx = -2;
  }
  if (key == 'y') {   // Si apretas “y”  la variable “vely”  se le resta 2.
    vely = -2;
  }
}