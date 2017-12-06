class Dia {

  int minT, meanT, maxT;
  float posY, posY2, posY3, posX, pos;
  String titulo;
  int num, maxWSpeed, meanWSpeed;
  float wDir;
  int transp = 0;
  String info;
  int precipitation;
  float precSum;

  float x = 0;
  float y = 0;

  float a = 1;
  float velX = .05;

  Dia(float t_precSum, int t_maxWSpeed, 
    int t_meanWSpeed, int t_wDir,  
    int t_precipitation, int t_num, int t_minT, int t_meanT, int t_maxT, int t_pos) {

    num = t_num;
    precSum = t_precSum;
    maxWSpeed = t_maxWSpeed * 3;
    meanWSpeed = t_meanWSpeed * 3;
    wDir = radians(t_wDir);

    precipitation = t_precipitation * 3;
    minT = t_minT;
    meanT = t_meanT;
    maxT = t_maxT;  
    pos = t_pos;
  }

  void display() {


    pushMatrix();
    translate(width/2, height/2);
    flechaViento();
    popMatrix();
  }

  void flechaViento() {
    pushMatrix();
    noStroke();
    //stroke(100, transp);
    strokeWeight(.5);
    rotate(wDir);
    float m = map(maxT, -6, 19, 0, 255); 
    fill(m, 0, 0, transp);
    quad(0, 50, -20, (maxWSpeed*1.5)-20, 0, 50 + maxWSpeed * 1.5, 20, (maxWSpeed*1.5)-20); 
    transp += 15;
    popMatrix();
  }


  void temps() {
    posX = map(pos, weekS, weekO, 0, width);
    posY = map(minT, -13, 18, 0, height);
    posY2 = map(meanT, -13, 18, 0, height);
    posY3 = map(maxT, -13, 18, 0, height);
    stroke(255);
    line(posX+25, height, posX+25, 0);
    noStroke();
    ellipseMode(CORNER);
    fill(200, 20, 20);
    ellipse(posX, posY, 50, 20);
    fill(20, 200, 20);
    ellipse(posX, posY2, 50, 20);
    fill(20, 20, 200);
    ellipse(posX, posY3, 50, 20);
  }

  void drop(float x, float y) {
    ellipseMode(CORNER);
    noStroke();
    fill(0, 0, 130);
    ellipse(x, y, precSum, precSum);
    fill(0, 0, 210);
    ellipse(x, y, precSum-2, precSum-2);
    fill(0, 0, 255);
    ellipse(x, y, precSum - 4, precSum-4);
    fill(200, 150);
    ellipse(x+4, y+4, precSum-8, precSum-10);
  }
  
    void datos() {
    if (pantalla == 0) {
      fill(255);   
      info = semana[semanaDay]+ " " + titulo;
      text(info, 20, 50);
    }

    if (pantalla == 1) {
      fill(255);
      info = "semana del " + titulo;
      text(info, 20, 50);
    }
  }

  void lluvia(int r) {

    pushMatrix();
    translate(width/2, height/2);
    drop(x, y);  
    x = r * cos(a);
    y = r * sin(a);
    a += velX;
    popMatrix();
  }
}