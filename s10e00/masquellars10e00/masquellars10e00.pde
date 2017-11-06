//#AA4225 rojo
//#058789 verde 
Masquellar m; 

void setup() {
  size(500, 100);//se ajusta tamaño del canvas
 
    m = new Masquellar();
  }

void draw() {
  background(#030303);//color al fondo
    m.reja(60, 3);
    m.medio(60, 3);
    m.movimiento();
  }

void keyPressed() {//funcion de activar con teclado
}