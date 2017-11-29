class France {
  int mes, dia, max, min, rocio, x, y, vx, vy, viento;
  float i;
  color summer, spring, winter, automn, summer1, spring1, winter1, automn1;

  // constructor
  France (int i, int mes, int dia, int max, int min, int rocio, int viento) {
    this.i = map(i, 0, 364, 0, TWO_PI); //contador tranformado en angulo 
    this.mes = mes;
    this.dia = dia;
    this.max = max;
    this.min = min;
    this.rocio = rocio;
    this.viento = viento; 
    x = width/4;
    y = height/4;

    summer = color(#3E980E);
    summer1 = color(#2AA028);
    
    spring = color(#E53AB2);
    spring1 = color(#2AA028);
    
    winter = color(#89CBE8);
    winter1 = color(#5D8FB4);
    
    automn = color(#E09C2D);
    automn1 = color(#E57635);
  }

  // Verano
  void verano() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(summer);
    ellipse(x, y, max, max);
    ellipse(x - 50, y - 50, min, min);

    popMatrix();
  }

  // Primavera
  void primavera() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(spring);
    ellipse(x, y, max, max);
    ellipse(x - 50, y - 50, min, min);

    popMatrix();
  }

  void invierno() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(winter);
    ellipse(x, y, max, max);
    ellipse(x - 50, y - 50, min, min);

    popMatrix();
  }

  void otono() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(automn);
    ellipse(x, y, max, max); // temperatura maxima
    ellipse(x - 50, y - 50, min, min); // temperatura minima

    popMatrix();
  }

  void enero() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(winter1);
    ellipse(x, y, max, max); // temperatura maxima
    ellipse(x - 50, y - 50, min, min); // temperatura minima
    ellipse(x - 90, y - 90, rocio, rocio);
    popMatrix();
    textSize(16);
    fill(winter);
    text("Enero", 20, 480);
  }

  void marzo() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(spring1);
    ellipse(x, y, max, max); // temperatura maxima
    ellipse(x - 50, y - 50, min, min); // temperatura minima
    ellipse(x - 90, y - 90, rocio, rocio);
    popMatrix();
    textSize(16);
    fill(spring);
    text("Marzo", 70, 480);
  }

  void julio() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(summer1);
    ellipse(x, y, max, max); // temperatura maxima
    ellipse(x - 50, y - 50, min, min); // temperatura minima
    ellipse(x - 90, y - 90, rocio, rocio);
    popMatrix();
    textSize(16);
    fill(summer);
    text("Julio", 125, 480);
  }

  void octubre() {
    pushMatrix();
    translate(height/2, width/2);
    rotate(frameCount* (viento/2));
    noFill();
    stroke(automn1);
    ellipse(x, y, max, max); // temperatura maxima
    ellipse(x - 50, y - 50, min, min); // temperatura minima
    ellipse(x - 90, y - 90, rocio, rocio);
    popMatrix();
    textSize(16);
    fill(automn);
    text("Octubre", 165, 480);
  }
}