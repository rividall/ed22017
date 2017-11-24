class Clima{
 
  //variables
  int maxima;
  int media;
  int minima;
  float rad = radians(maxima);
    //constructor
  Clima(int maxima, int media, int minima) {
    this.maxima = maxima;
    this.media = media;
    this.minima = minima;

   
  }
  
  //functions
  void weather(){
    for(int i=0; i<100; i+=10){
    arc(i, i, 80, 80, 0, rad, OPEN);
  }
  }
  void date(){
  
  
  }  
}