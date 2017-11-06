//variable
Natalia [] n = new Natalia[50];

void setup() {
size(500,500);
for(int i = 0; i < n.length; i++) {
n[i]= new Natalia(random(20));
}
}

void draw(){
background(255);
for(int i = 0; i < n.length; i++) {
  n[i].uno();
  n[i].dos();
}
}