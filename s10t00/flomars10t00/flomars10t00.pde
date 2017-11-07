//variables

Florencia n, m; //nuevo datatype

void setup(){
  size(500, 500);
  n = new Florencia();
  m = new Florencia();
}

void draw(){
  background(#B2FFE3);
  n.function();
  n.movimiento();
  m.function();
  m.movimiento();

}