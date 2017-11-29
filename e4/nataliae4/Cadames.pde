class Cadames {
  float nub, i;
  int viento;

  Cadames(float nub, float i, int viento) {
    this.i = map(i, 0, 31, 0, TWO_PI);
    this.nub = (float)map(nub, 1, 15, 5, 45);
    this.viento = viento;
  }

  void enero() {
    stroke(#CED7E0);//color enero
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void febrero() {
    stroke(#6888AC);//color febrero
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void marzo() {
    stroke(#2B3F58);//color marzo
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void abril() {
    stroke(#F8D2CB);//color abril
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void mayo() {
    stroke(#F39FB3);//color mayo
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void junio() {
    stroke(#E9325B);//color junio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void julio() {
    stroke(#DDE063);//color julio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void agosto() {
    stroke(#AECC3D);//color agosto
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void septiembre() {
    stroke(#6EAA2E);//color junio
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void octubre() {
    stroke(#E3C38B);//color octubre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void noviembre() {
    stroke(#E77B50);//color noviembre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }

  void diciembre() {
    stroke(#9A4441);//color diciembre
    rotate(frameCount * viento * .0001);
    noFill();
    ellipse(40, 40, nub, nub);
  }
}