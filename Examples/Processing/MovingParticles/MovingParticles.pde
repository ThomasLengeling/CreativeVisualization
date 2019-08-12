//array of particles
Particle [] particles;

int numParticles  = 50;

//setup initial parameters
void setup() {

  //size of the window
  size(800, 800);

  particles = new Particle[numParticles];

  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle();
  }
  background(0);
}

void draw() {

  //background color 0 -> black 255 -> white
  fill(0, 0);
  noStroke();
  rect(0, 0, width, height);
  
  //draw and update
  for (int i = 0; i < numParticles; i++) {
    particles[i].update();
    particles[i].draw();
  }
  
}
