class Positor {
  float x, y, mag;
  Positor(float tempX, float tempY, float tempMag) {
    x = tempX;
    y = tempY;
    mag = tempMag;
  }
  Positor(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    mag = 0;
  }
  void Set(float tempX, float tempY, float tempMag) {
    x = tempX;
    y = tempY;
    mag = tempMag;
  }
  void Set(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    mag = 0;
  }
  Positor() {
    x=0;
    y=0;
    mag=0;
  }
  void apply(Positor other) {
    x = x + other.x*other.mag;
    y = y + other.y*other.mag;
  };
};
