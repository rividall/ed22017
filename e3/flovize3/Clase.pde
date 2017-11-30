class Clase {
  int fecha, temperatura, temperatura2, humedad, visibilidad, viento;
  float lluvia;
  


  Clase(int fecha, int humedad, int temperatura, int temperatura2, float lluvia, int visibilidad, int viento) {
  
    
    this.fecha = fecha;
    this.humedad = humedad;
    this.temperatura = temperatura;
    this.temperatura2 = temperatura2;
    this.lluvia = lluvia;
    this.visibilidad = visibilidad;
    this.viento = viento;
  
  }


  void funcion(){ 
    
    switch(fecha){
    case 1:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(50, 300, 100, -viento);
      break;
    case 2:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(150, 300, 100, -viento);
      break;
    case 3:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(250, 300, 100, -viento);
      break;
    case 4:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(350, 300, 100, -viento);
      break;
    case 5:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(450, 300, 100, -viento);
      break;
    case 6:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 7:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 8:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 9:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 10:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 11:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
    case 12:
      ellipseMode(CORNER);
      stroke(0);
      strokeWeight(0.5);
      fill(visibilidad+50, 10);
      ellipse(550, 300, 100, -viento);
      break;
  
  
      
  }
  }

  void texto(){
    fill(0,150);
    textSize(10);
    text(fecha, 300, temperatura+80);
    
    
}
} 