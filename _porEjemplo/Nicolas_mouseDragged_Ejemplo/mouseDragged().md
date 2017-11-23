### mouseDragged()

La función mouseDragged () es utilizado  vez cada vez que se mueve el mouse mientras se presiona un botón del mouse. (Si no se presiona un botón, se llama mouseMoved () en su lugar , si no se arrastra este se llamaria mousePressed() ).

Los eventos de mouse y teclado solo funcionan cuando un programa tiene draw (). Sin draw (), el código solo se ejecuta una vez y luego deja de escuchar eventos.

```

mouseDragged()
mouseDragged(event) 
```

###  Por ejemplo:

```java

int value = (#fb3838);
void setup () {
  size (600,600);
background (0);


}
void draw() {

  fill(value);
  rectMode(CENTER);
  rect(300,300,300,300);
    
}

void mouseDragged() 
{
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}
```
Al hacer click y arrastrar el mouse sobre el canvas , el rectangulo cambia de valor ( el color para este caso).

Ahora que sabemos como cambiar un variable con el mouseDragged() podemos cambiar la posicion de esta. A continuación les dejare un codigo que permite arrastrar una ellipse y dejarlo una elipse estacionaria hasta arrastrarlo de nuevo con el mouse.

```java

float x = 250;
float y = 250;
int bs = 20;
boolean wow_a = false;
boolean wow_b = false;

void setup()
{
  size(500,500);
  smooth();
  background(255);
}
 
void draw()
{

 // Si el cursor esta en el ellipse este cambia a color rojo y se esta afuera del ellipse este cambia a un color amarillo
  if (mouseX > x-bs && mouseX < x+bs && 
      mouseY > y-bs && mouseY < y+bs) {
    wow_a = true;  
    if(!wow_b) { 
      stroke(#d75252); 
      fill(#d75252);
    } 
  } else {
    stroke(#efe35e);
    fill(#efe35e);
    wow_a = false;
  }
  // se dibuja el ellipse
   ellipse(x,y,50,50);
  
}
 
void mouseDragged()
{
  // calcula la distancia desde el mouse x, y ubicación a la corriente
   // a la posición actual de la elipse
 
  float d = dist(x, y, mouseX, mouseY);
 
  // si la distancia está dentro del rango, entonces establece la posición x, y
  // a la posición x, y del mouse y actualiza la posición de la elipse en
  //la pantalla
 
  if (d<25){
      x=mouseX;
      y=mouseY;
      background(255);
      ellipse(x,y,50,50);
  }
   wow_b = false;
}  

```


