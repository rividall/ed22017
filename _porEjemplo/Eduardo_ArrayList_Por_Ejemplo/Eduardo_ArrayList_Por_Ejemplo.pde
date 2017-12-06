ArrayList<Particle> particles;

void setup() {
  size(400, 400); 
  smooth();

  particles = new ArrayList<Particle>(); //incicializacion
}

void draw() {
  background(255);

  //Use dot syntax with the add function() to put particles into your ArrayList
  //Here a new particle object is added to the ArrayList every cycle through draw.
  particles.add(new Particle()); 




  for (int i = 0; i < particles.size(); i++) { 
    Particle p = (Particle) particles.get(i);
    p.run();
  }


  if (particles.size() >500) {  //Cuando la colecicon llega a 100 se elimiana la particula y toma el valor cero del arraylist
    particles.remove(0);
  }
}