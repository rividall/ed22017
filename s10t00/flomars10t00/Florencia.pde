class Florencia {
  //variables
  float x, y, a, b, z, vx, vy, va, vb;
  color c, d;
  //constructor
  Florencia() {
    x = 100;
    y = 250;
    a = 100;
    b = 300;
    z = 100;
    vx = random(-3, 3);
    va = random(-5, 5);
    vy = random(-4, 4);
    vb = random(-5, 5);
    c = color(#FF00EF);
    d = color(#A01CE8);
  }
  //metodos
  void movimiento () {
    x += vx;
    y += vy;
    a += va;
    b += vb;
    z ++;

    if (x > 450 || x < 50) {
      vx *= -1;
    }
    if (y > 450 || y < 50) {
      vy *= -1;
    }
    
    if (a < -150 || a > 350) {
      va *= -1;
     
    }
    if (b < -100  || b > 300) {
      vb *= -1;
    }
    
    if(z >  50){
      z *= -1;
    }
    if(z < 1){
      z *= -1;
    }

}
  


  void function () {
    
    
     noStroke();
    fill(d);
    ellipse(x, y,  z,  z);
   
    strokeWeight(3);
    stroke(0);
    fill(c);
    ellipse(x, y,  100,  100);
    
    strokeWeight(5);
    stroke(0);
    fill(d);
    line(a + 150, b + 150,  a + 150, b + 150);
    line(a + 150, b + 200,  a + 150, b + 100);
    
    
    }
  }