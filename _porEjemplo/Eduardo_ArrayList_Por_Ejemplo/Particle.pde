class Particle {
  
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  Particle() {
    x = mouseX;
    y = mouseY;
    xspeed = random(-2,2);
    yspeed = random(-2,2);
  }
  
  void run(){
    move();
    gravity();
    display();
  }
  
  
  void move() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void gravity() {
    yspeed += 0.1;
  }
  
  void display() {
    stroke(0);
    ellipse(x,y,10,10);
  }
}