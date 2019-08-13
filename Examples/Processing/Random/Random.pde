

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  noFill();

  //slow the frameRate
  frameRate(5);
}

void draw() {
  background(0);

  //translate everything to a x,y position
  translate(0, 50);
  
  //draw random points
  beginShape();
  for (int i=0; i < width; i++) {
    vertex(i, random(0, 50));
  }
  endShape();
  
  //Gaussian random
  translate(0, 100);
  beginShape();
  for (int i=0; i < width; i++) {
    float y = randomGaussian()*15;
    vertex(i, y);
  }
  endShape();
  
  //random noise
  translate(0, 50);
  beginShape();
  for (int i=0; i < width; i++) {
    float y = noise(i)*100;
    vertex(i, y);
  }
  endShape();

  translate(0, 100);
  beginShape();
  for (int i=0; i < width; i++) {
    float y = noise(i*.1)*100;
    vertex(i, y);
  }
  endShape();

  translate(0, 100);
  beginShape();
  for (int i=0; i < width; i++) {
    float y = noise(i*.01)*100;
    vertex(i, y);
  }
  endShape();
}
