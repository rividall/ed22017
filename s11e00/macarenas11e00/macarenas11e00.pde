MarcaPasos[] pasos = new MarcaPasos[1];
color amarillo, azul, negro, blanco;
boolean cambio, cambio1;
void setup() {
  size(500, 500);

  amarillo = color(#F59F14); // iniciación variable de color
  azul = color(#14BAF5); // iniciación variable de color
  negro = color(#050505); // iniciación variable de color
  blanco = color(#FFFFFF);

  for (int i = 0; i < pasos.length; i ++) {
    pasos[i] = new MarcaPasos();
  }
}

void draw() {
  background(amarillo);
  for (int i = 0; i < pasos.length; i ++) {
    pasos[i].movimiento();
    pasos[i].marcaPasos();
    pasos[i].onda(10, frameCount * .1);

    //if (cambio) {
    //  pasos[i].onda(10, frameCount * .1);
    //}
    //if (cambio1) {
    //  pasos[i].movimiento();
    //}
  }
}

void keyPressed() {
  if (key == 'a') { 
    cambio = (!cambio);
    cambio1 = (!cambio1);
  }
}