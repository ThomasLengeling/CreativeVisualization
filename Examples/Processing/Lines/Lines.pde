void setup() {
  size(800, 800);
  smooth(32);

  background(0);
}

void draw() {

  stroke(255);
  for (int i = 0; i < 20; i++) {
    float x = 50;
    float y = 50 + 20*i;
    line(250, y, 550, y );
  }
}
