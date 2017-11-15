//Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 6to semestre - Expresión Digital II 
// Catalina Juez

// https://processing.org:8443/tutorials/pvector/
/*
Ejercicio donde tenemos una pelota rebotando constantemente que también se encuentra 
acelerando, pero esta tiene un limite de aceleración además de estar creada por vectores.
 */
//Cramos nuestros vectores
PVector pos;
PVector vel;
PVector acel;
float limiteVel;
color miColor, miColor1; 

void setup() { 
  size(500, 400); 
  pos = new PVector(250, 250); // Definimos el valor de nuestros vectores y float
  vel = new PVector(4, 4);
  limiteVel = 15;

  miColor= color(228, 115, 76);  
  miColor1= color(227, 133, 135);
  fill(miColor);
  
}

void draw() { 
  background(255); 
  ellipse(pos.x, pos.y, 30, 30);

  pos.add(vel); // Sumamos nuestro vector velocidad (vel) a nuestro vector posición (pos)
  vel.limit(limiteVel); // Definimos nuestra velocidad (vel) limite
  

  noStroke();
  if (pos.x > width || pos.x < 0) { 
    vel.x = vel.x * -1.05; // En vez de hacer la velocidad constante, multiplicamos esta para que  esta velocidad se acelere con el tiempo

    fill(miColor); //Cambiar de color de la pelota.
  }
  if (pos.y > height || pos.y < 0) { 
    vel.y = vel.y * -1.05; // En vez de hacer la velocidad constante, multiplicamos esta para que  esta velocidad se acelere con el tiempo

    fill(miColor1); //Cambiar de color de la pelota.
  }
}
void keyPressed () {
  if (key == 'x') {   // Si apretas “x”  la variable “velx” se le resta 2.
    vel.x = -2;
  }
  if (key == 'y') {   // Si apretas “y”  la variable “vely”  se le resta 2.
    vel.y = -2;
  }
}