Particle myParticle = new Particle();

void setup() {
  size(400, 400);
};



void draw() {
  background(140, 200, 250);
  myParticle.update();
  myParticle.paint();
};
