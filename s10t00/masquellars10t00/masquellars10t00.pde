Punto[]p = new Punto[70];

void setup() {
size(800,800);
for (int i = 0; i<p.length; i++){
p[i] = new Punto();}

}

void draw() {
background(#030303);
for(int i = 0; i<p.length; i++){
p[i].puntitorojo();
p[i].puntitoverde();
p[i].movimientorojo();
p[i].movimientoverde();
}

}



void keyPressed() {}