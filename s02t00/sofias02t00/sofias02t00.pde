float y;
int x;
color negro;
color blanco;
color rosado;  //#E866F7
color celeste; //#73DDFC

void setup() {
 size (500, 500);
 x = 25;
 y = 25.5;
 
 negro = color (0, 0, 0);
 blanco = color (255, 255, 255);
 rosado = color (232, 102, 247);
 celeste = color (115, 221, 252);
}

void draw() {
 background (negro);
 
 //rect
 noStroke ();
 fill (rosado);
 rect (50, 50, 400, 400);

 //line
 stroke (celeste);                 //no es necesario repetir si, repito la misma figura
 strokeWeight (5);                 
 line (50, 0, 50, 500);            //vertical izquierda
 line (500, 50, 0, 50);            //horizontal arriba
 line (0, 450, 500, 450);          //horizontal abajo
 line (450, 0, 450, 500);          //vertical derecha
 
 //quad
 noStroke ();
 fill (celeste);
 quad (100, 150, 150, 350, 350, 350, 400, 150);
 
 //point
 strokeWeight (5);
 stroke (blanco);
 point (x, y);                     //arriba izquiera
 strokeWeight (5);
 point ( 475, 475);                //abajo derecha
 strokeWeight (5);
 point (x, 475);                   //abajo izquierda
 strokeWeight (5);
 point (475, y);                   //arriba derecha
 
 x += 4;                           //modificadores
 y += 4;                           //modificadores
 
 //ellipse
 noStroke ();
 strokeWeight (5);
 fill (rosado);
 ellipse (250, 250, 50, 50);
}