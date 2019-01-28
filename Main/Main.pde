int[] size = {700,500};
Particle myParticle = new Particle();

void setup() {
  size(700,500);
};



void draw() {
  background(140, 200, 250);
  myParticle.update();
  myParticle.paint();
};
