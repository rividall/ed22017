class Copito { 
  float ypos, hpos, speed;
  Copito (float y, float h) {  
    ypos = y; 
    hpos = h;
  } 
  
  void update() { 
    if(!lluvia){
    speed = random(0, 2);
    }
    else{
    speed = random(5, 50);
    }
    ypos += speed ; 
    if (ypos > height) { 
      ypos = -150; 
    } 
    ellipse(hpos, ypos, 8, 8); 
    ellipse(hpos, ypos+150, 8, 8); 

  } 
}

class Nube {
float ypos, hpos, speed;
  Nube () {  
    ypos = random(30,200);
    hpos = random(10, 500);

}


void update(){
  speed = random(0, 2);
  
  hpos += speed ; 
    if (hpos > width+100) { 
      hpos = -100; 
    } 
    
    
    ellipse(hpos, ypos+5, 20, 30);
    ellipse(hpos-7, ypos, 70, 33);
    ellipse(hpos+10, ypos+3, 50, 50);
    ellipse(hpos+26, ypos+6, 40, 40);
    ellipse(hpos+5, ypos+8, 70,33);
    
  } 
}