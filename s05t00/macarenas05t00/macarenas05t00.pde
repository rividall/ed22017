// Universidad del Desarrollo, Facultad de Diseño, Diseño Digital
// Macarena Ferrer Valle
// s07 tarea 00

color amarillo, azul, negro, blanco, a, am, ama, aa, amm, az, n, bl; // declaración de variables de color
boolean b, s, d, f, g, h; // declaración de boolean

void setup() { // inicio ámbito de configuración
  size(900, 300); // tamaño del Canvas de 900 px por 300 px

  amarillo = color(#F59F14); // iniciación variable de color amarillo
  am = color(#F59F14); // iniciación variable de color amarillo
  ama = color(#F59F14); // iniciación variable de color amarillo
  aa =  color(#F59F14); // iniciación variable de color amarillo
  amm = color(#F59F14); // iniciación variable de color amarillo
  azul = color(#14BAF5); // iniciación variable de color azul
  a = color(#14BAF5); // iniciación variable de color azul
  az = color(#14BAF5); // iniciación variable de color azul
  negro = color(#050505); // iniciación variable de color negro
  n = color(#050505); // iniciación variable de color negro
  blanco = color(#FFFFFF); // iniciación variable de color blanco
  bl = color(#FFFFFF); // iniciación variable de color blanco

  b = true; // iniciación variable de b verdadera (función uno)
  s = true; // iniciación variable de s verdadera (función uno)

  d = true; // iniciación variable de d verdadera (función dos)
  f = true; // iniciación variable de f verdadera (función dos)
  
  g = true; // iniciación variable de g verdadera (función tres)
  h = true; // iniciación variable de h verdadera (función tres)
} // fin ámbito de configuración

void draw() { // inicio ámbito de dibujo
  background(blanco); // fondo del canvas de color blanco
  noStroke(); // las funciones no tendran borde

  uno(150, 150); // función uno
    if (b) { // si b es verdadera 
      amarillo = #F59F14; // el amarillo es amarillo
    } else  if (!b) { // si b es falsa
      azul = #F59F14; // el azul es amarillo
    }
    if (s) { //si s es verdadera
      azul = #14BAF5; // el azul es azul
    } else if (!s) { // si s es falsa
      amarillo = #14BAF5; // el amarrilo es azul
    }

  dos(450, 150); // función dos
    if (d) { // si d es verdadera 
      aa = #F59F14; // aa (amarillo) es amarillo
    } else  if (!d) { // si d es falso
      aa = #050505; // aa (amarillo) es negro
    }
    if (f) { // si f es verdadera
      n = #050505; // n (negro) es negro
    } else if (!f) { // si f es falso 
      n = #F59F14; // n (negro) es negro
    }

  tres(750, 150); // función tres
   if (g) { // si g es verdadera
      amm = #F59F14; // amm (amarillo) es amarillo
    } else  if (!g) { // si g es falso
      amm = #FFFFFF; // amm (amarillo) es blanco
    }
    if (h) { // si h es verdadera
      bl = #FFFFFF; // bl (blanco) es blanco
    } else if (!h) { // si g es falso
      bl = #F59F14; // bl (blanco) es amarillo
    }

}// fin ámbito de dibujo

void uno(int x, int y) { // inicio ámbito de función uno, sandia entera
  // circulo uno exterior
  fill(azul);
  ellipse(x, y, 208, 208);
  
  // circulo dos (parte blanca sandia)
  fill(blanco);
  ellipse(x, y, 175, 175);
  
  // circulo tres (parte comestible sandia)
  fill(amarillo);
  ellipse(x, y, 165, 165);
  
  // pepas sandia
  fill(negro);
  ellipse(79, 150, 5, 9);
  ellipse(97, 189, 5, 9);
  ellipse(120, 184, 5, 9);
  ellipse(127, 216, 5, 9);
  ellipse(172, 211, 5, 9);
  ellipse(150, 189, 5, 9);
  ellipse(130, 154, 5, 9);
  ellipse(109, 140, 5, 9);
  ellipse(97, 114, 5, 9);
  ellipse(200, 200, 5, 9);
  ellipse(186, 180, 5, 9);
  ellipse(184, 159, 5, 9);
  ellipse(161, 140, 5, 9);
  ellipse(135, 119, 5, 9);
  ellipse(135, 92, 5, 9);
  ellipse(212, 163, 5, 9);
  ellipse(202, 136, 5, 9);
  ellipse(200, 109, 5, 9);
  ellipse(174, 109, 5, 9);
  ellipse(161, 87, 5, 9);
} // fin ámbito de función uno, sandia entera

void dos(int x, int y) { // inicio ámbito de función dos, media sandia
  // arco uno exterior
  fill(a);
  arc(x, y, 208, 208, 0, PI);
  
  // arco dos (parte blanca sandia)
  fill(blanco);
  arc(x, y, 175, 175, 0, PI);
  
  // circulo arco (parte comestible sandia)
  fill(am);
  arc(x, y, 165, 165, 0, PI);
  
  //pepas
  fill(n);
  ellipse(376, 160, 5, 9);
  ellipse(391, 181, 5, 9);
  ellipse(402, 201, 5, 9);
  ellipse(399, 160, 5, 9);
  ellipse(426, 160, 5, 9);
  ellipse(419, 181, 5, 9);
  ellipse(424, 206, 5, 9);
  ellipse(445, 217, 5, 9);
  ellipse(442, 190, 5, 9);
  ellipse(450, 169, 5, 9);
  ellipse(471, 169, 5, 9);
  ellipse(466, 190, 5, 9);
  ellipse(469, 212, 5, 9);
  ellipse(489, 190, 5, 9);
  ellipse(494, 160, 5, 9);
  ellipse(513, 165, 5, 9);
  
} // fin ámbito de función dos, media sandia

void tres(int x, int y) { // inicio ámbito de función tres, sandia comida
  // arco uno exterior
  fill(az);
  arc(x, y, 208, 208, 0, PI);
  
  // arco dos (parte blanca sandia)
  fill(blanco);
  arc(x, y, 175, 175, 0, PI);
  
  // arco tres (parte comestible sandia)
  fill(ama);
  arc(x, y, 165, 165, 0, PI);
  
  // arco cuatro (parte comido sandia)
  fill(bl);
  arc(x, y, 122, 125, 0, PI);
  
  // mordiscos
  fill(bl);
  ellipse(694, 171, 20, 20);
  ellipse(703, 185, 20, 20);
  ellipse(719, 195, 20, 20);
  ellipse(733, 204, 20, 20);
  ellipse(756, 210, 20, 20);
  ellipse(775, 208, 20, 20);
  ellipse(789, 199, 20, 20);
  ellipse(799, 193, 20, 20);
  ellipse(809, 183, 20, 20);
  ellipse(811, 173, 20, 20);
  ellipse(818, 163, 20, 20);
  
} // fin ámbito de función tres, sandia comida

void keyPressed() { // inicio ámbito de teclas
  if (key == 'a') { // si la tecla a se apreta los colores de la sandia uno (función uno) se invierten 
    b = (!b);
    s = (!s);
  }
  if (key == 's') { // si la tecla s se apreta las pepas de la sandia dos (función dos) desaparesen  
    d = (!d);
    f = (!f);
  }
   if (key == 'd') { // si la tecla d se apreta la sandia tres (función tres) pasa de estar comida a estar llena
    g = (!g);
    h = (!h);
  }
} // fin ámbito de teclas