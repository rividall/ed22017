class Wave {

  int x, y, i, a, speed_a, magnitude_a;                                                // Coordenadas y variables de ola.

  float  alpha_x, alpha_y, omega_x, omega_y, pos_a_x, pos_a_y, pos_o_x, pos_o_y,       // Floats de los Controladores.
    lado_A, lado_B, lado_C, angle_B, angle_B_cos, lerp_C,                              // Floats de trigonometria.
    w_size, ocean_y, sun_size, sunrise, sunpoint, sun_ratio, sky_ratio;                // Floats del Sol y el Fondo.


  color sunny_low, sunny, sky, sky_low, ocean;
  boolean flow;                                                                        //Controla sentido de la ola.


  Wave() {
    alpha_x = -300;
    alpha_y = 0;
    omega_x = 300;
    omega_y = 0;
    w_size = 1;
    sun_size = 200;

    sunny = color(255, 90, 95);
    sunny_low = color(255, 90, 95);
    sky = color(220, 0, 126);
    ocean = color(0, 107, 177);

    magnitude_a = 45;                                                                
    speed_a = 1;
  }

  void display() {
    sky();
    math();
    sun();
    wavy();
    fill(255);
    alpha_();
    omega_();
  }

  // FUNCION OLA
  void wavy() {
    for (i = -(int)(lado_C/2)-((width+height)/2); i < (int)((lado_C/2)+9)+((width+height)/2); i = i + 16) {
      ocean();
      stroke(255);
      strokeWeight(3);
      pushMatrix();
      if (pos_a_x > pos_o_x && pos_a_y > pos_o_y) {
        translate((pos_a_x+pos_o_x)/2, (pos_a_y+pos_o_y)/2);
        rotate(angle_B);
      } else if (pos_a_x > pos_o_x && pos_a_y < pos_o_y) {
        translate((pos_a_x+pos_o_x)/2, (pos_a_y+pos_o_y)/2);
        rotate(-angle_B);
      } else if (pos_a_x < pos_o_x && pos_a_y > pos_o_y) {
        translate((pos_a_x+pos_o_x)/2, (pos_a_y+pos_o_y)/2);
        rotate(-angle_B);
      } else if (pos_a_x < pos_o_x && pos_a_y < pos_o_y) {
        translate((pos_a_x+pos_o_x)/2, (pos_a_y+pos_o_y)/2);
        rotate(angle_B);
      } else if (pos_a_x == pos_o_x) {
        translate((pos_a_x+pos_o_x)/2, (pos_a_y+pos_o_y)/2);
        rotate(radians(270));
      }
      line(i, sin(radians((a*2)+i))*20, i, sin(radians((a*2)+i))*magnitude_a);
      ocean_y = screenY(i, (sin(radians((a*2)+i))*20));
      popMatrix();
    }
  }
  // FUNCION DE TODOS LOS CALCULOS
  void math() {

    pos_a_x = lerp(pos_a_x, alpha_x, 0.1);
    pos_a_y = lerp(pos_a_y, alpha_y, 0.1);
    pos_o_x = lerp(pos_o_x, omega_x, 0.1);
    pos_o_y = lerp(pos_o_y, omega_y, 0.1);

    lado_A =  dist(pos_a_x, 0, pos_o_x, 0);
    lado_B =  dist(pos_a_y, 0, pos_o_y, 0);
    lado_C = dist(pos_a_x, pos_a_y, pos_o_x, pos_o_y);

    angle_B_cos = (sq(lado_A)+sq(lado_C)-sq(lado_B))/(2*lado_A*lado_C);
    angle_B = acos(angle_B_cos);
    lerp_C = lerp(lerp_C, lado_C, 0.1);

    if (flow == false) {
      a = a+ speed_a;
    } else {
      a = a-speed_a;
    }
    sun_size = 300+sunrise;

    sunpoint =-((alpha_y+omega_y)/4);
    if (sunpoint>height/2) {

      sunpoint = height/2;
    }
    sunrise = lerp(sunrise, sunpoint, 0.02);
    sun_ratio = map(sunpoint, -170, -40, 0, 1);
    sunny = lerpColor(#FFFFFF, sunny_low, sun_ratio);
    sky = lerpColor(#000000, sky_low, sun_ratio);
  }
  // ALPHA & OMEGA = CONTROLADORES DE OLA
  void alpha_() {
    ellipse(pos_a_x, pos_a_y, 20, 20);
  }
  void omega_() {
    ellipse(pos_o_x, pos_o_y, 20, 20);
  }
  void ocean() {
    noStroke();
    fill(ocean);
    triangle(i-7, height/2, 
      i+7, height/2, 
      i, ocean_y-(height/2));
  }
  // FUNCION SOL
  void sun() {
    noStroke();

    fill(sunny);
    ellipse(0, sunrise, sun_size, sun_size);
  }
  // FUNCION CIELO
  void sky() {
    noStroke();
    if (sun_ratio<1) {
      fill(sky);
    } else {
      fill(220, 0, 126);
    }
    rect(-(width/2), -(height/2), width, height);
  }
  // FUNCION MOUSE
  void mouse_p() {
    if (mouseButton == LEFT) {
      alpha_x = mouseX-(width/2);
      alpha_y = mouseY-(height/2);
    } else if (mouseButton == RIGHT) {
      omega_x = mouseX-(width/2);
      omega_y = mouseY-(height/2);
    }
    flow = !flow;
  }
  void mouse_d() {
    if (mouseButton == LEFT) {
      alpha_x = mouseX-(width/2);
      alpha_y = mouseY-(height/2);
    } else if (mouseButton == RIGHT) {
      omega_x = mouseX-(width/2);
      omega_y = mouseY-(height/2);
    }
  }
  // FUNCION TECLAS
  void teclas() {

    if (key == CODED) {
      if (keyCode == UP) {
        magnitude_a= magnitude_a+1;
      }
      if (keyCode == DOWN) {
        magnitude_a= magnitude_a-1;
      }
      if (keyCode == RIGHT) {
        speed_a = speed_a +1;
      }
      if (keyCode == LEFT) {
        speed_a = speed_a -1;
      }
    }
  }

  void ocean() {
    noStroke();
    fill(ocean);
    triangle(i-7, height/2,
      i+7, height/2,
      i, ocean_y-(height/2));
  }
  void sun() {
    noStroke();

    fill(sunny);
    ellipse(0, sunrise, sun_size, sun_size);
  }
  void sky() {
    noStroke();
    if (sun_ratio<1) {
      fill(sky);
    } else {
      fill(220, 0, 126);
    }
    rect(-(width/2), -(height/2), width, height);
  }
}

