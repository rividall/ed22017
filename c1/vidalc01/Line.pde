class Line {
  float colR, colG, colB, vel, velf, tamx, ntamx, tamy, ntamy, p1, p2, np1, np2;


  Line(float colR, float colG, float colB, float tamx, float tamy) {
    this.colR = colR;
    this.colG = colG;
    this.colB = colB;
    this.tamx = tamx;
    this.tamy = tamy;
    p1 = width/2;
    p2 = height/2;
    vel = 8;
    velf = 30;
    ntamx = -tamx;
    ntamy = -tamy;
  }
  //No hay decripción de lo que el programa hará
  void linea() {
    stroke(colR, colG, colB);
    if (frameCount % vel == 0) {
      np1 = p1 + random(ntamx, tamx);
      np2 = p2 + random(ntamy, tamy);
      float d = dist(p1, p2, np1, np2);
      strokeWeight(d);

      line(p1, p2, np1, np2);
      // esto puede ser un método individual
      if (np1 > width || np2 > height) {
        np1=20;
        np2=20;
      } else if (np1 < 0 || np2 < 0) {
        np1 = width-20;
        np2 = height-20;
      }
      p1 = np1;
      p2 = np2;
      // hasta aquí
    }
  }

//No hay decripción de lo que el programa hará
  void fade() {
    if (frameCount % velf ==0) {
      noStroke();
      fill(0, 2);
      rect(0, 0, width, height);
    }
  }
}
