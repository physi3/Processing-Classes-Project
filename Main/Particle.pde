class Particle {
  float radius, r, g, b;
  Positor pos = new Positor(); 
  Positor vel = new Positor(); 

  Particle() {
    radius = random(25, 50);
    float x = random(0+radius, size[0]-radius);
    float y = random(0+radius, size[1]-radius);
    pos.Set(x, y);
    vel.Set(random(0.3, 0.6), random(0.3, 0.6), random(3, 4));
    r = random(0, 250);
    g = random(0, 250);
    b = random(0, 250);
  };

  void update() {
    pos.apply(vel);
    if (pos.x-radius<=0 || pos.x+radius>=size[0]) {
      vel.x = vel.x*-1;
    } else if (pos.y-radius<=0 || pos.y+radius>=size[1]) {
      vel.y = vel.y*-1;
    }
  }

  void paint() {
    strokeWeight(radius/13);
    stroke(r, g, b);
    fill(r, g, b, 200);
    ellipse(pos.x, pos.y, radius*2, radius*2);
    ellipse(pos.x, pos.y, radius/6, radius/6);
  }
  boolean onEdge() {
    if (pos.x-radius<=0 || pos.x+radius>=size[0] || pos.y-radius<=0 || pos.y+radius>=size[1]) {
      return true;
    } else {
      return false;
    }
  }
};
