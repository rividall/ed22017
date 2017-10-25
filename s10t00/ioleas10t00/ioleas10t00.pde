//DECLARAR
Onda miOnda;


void setup(){
  size(500,500);

  
  //INICIALIZAR
  miOnda = new Onda (0,0);
  }
  
  void draw(){
    background(0);
    
    //LLAMAR
    miOnda.correr();

  }
  