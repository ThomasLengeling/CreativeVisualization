float xoff = 0.3;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  background(0);
  stroke(255);

  beginShape();
  for (int i = 0; i < 20; i++) {

    float incNoise = noise(xoff);
    float x = i*incNoise + 250;
    float y = 50;

    vertex(x, y);
    xoff +=0.03;
  }
  endShape(CLOSE);
}
