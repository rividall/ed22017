int x;
float y;

void setup() {
size(500, 500);

x = 200; 
y = 205.5; 
}

void draw() {

background(51); //negro

fill(255, 255, 255);
noStroke();
ellipse(200, 200, 200, 200);

stroke(255, 80, 80); //rojo
strokeWeight(90); 
point(x, 200);

noStroke();
ellipse(200, 200, 200, 200);
stroke(51);
strokeWeight(15);
noFill();
ellipse(210, 210, 180, 180);

stroke(60); //azul
strokeWeight(90); 
point(200, y);

stroke(255, 150, 0, 50);
strokeWeight(30);
fill(250, 150, 0, 90);
rect(140, 330, 200, 100);

noFill();
stroke(200, 220, 150);
strokeWeight(10);
quad(100, 330, 300, 330, 300, 400, 100, 400); 

stroke(200, 220, 150, 90);
line(200, 318, 200, 440);

//Modificadores
x ++; 
y --;

}