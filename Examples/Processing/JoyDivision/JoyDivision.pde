void setup() {
  size(500, 800);


  background(0);
  fill(0);
  stroke(255);
}

void draw() {
  // this will be the amplitude height of the curve.
  float amp = 10;

  // in this case we start with y values
  for (int j = 0; j < 50; j++) {
    beginShape();
    for (int i = 0; i < 200; i++) {
      amp = abs(i - 100);
      amp = map(amp, 0, 100, 40, 0);

      float x = 50 + 2*i;
      float y = 50 + j*15;

      vertex(x, y - noise(i * 0.1, j * 0.5)*amp);
    }
    endShape();
  }
  
}
