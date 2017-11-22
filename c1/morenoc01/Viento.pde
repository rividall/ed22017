//Inicio de la clase "Viento"
class Viento {
  // Variables
 float x = 100 , y= 100, vx, vy, mov;
 // Constructor
  Viento () {  // inicializacion de la nueva clase
  }

  // Métodos
  void tela(){
    int numX = (width/100)+1;
    int numY = (height/100)+1;

    float [] xpunto = new float [numX];
    float [] ypunto = new float [numY];

    for(int i = 0 ; i < numX ; i++){ //i es igual a 0, y aumenta en 1, hasta llegar a numX
      for(int j = 0 ; j < numY ; j++){
        xpunto[i] = i*(width/(numX-1));
        ypunto[j] = j*(height/(numY-1));
        // interacción
        float mx = mouseX; // este debiera ser un parámetro que se pasa por un argumento en el mismo método
        float my = mouseY; // así en el código general es fácil leer que tela() tiene modificadores externos

        float distancia = dist(xpunto[i] , ypunto[j] , mx , my); //  se le denomina float distancia a los variables xpunto[i] , ypunto[j] , mx , my. ademas se carcula la distancia entre estas con el dist
        float tam = map(distancia , 0 , 1000 , 0.1 , 1);          //Se crea el movimiento de esta. Se reasigna un número de un rango a otro.

        pushMatrix();

        translate(xpunto[i],ypunto[j]);
        scale(tam);

        ellipse(xpunto[i],ypunto[j],100,100);
        popMatrix();
      }
    }
  }
}
