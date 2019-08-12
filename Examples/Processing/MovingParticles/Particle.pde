class Particle {
  //Moving particle position
  float posX = 400;
  float posY = 400;

  float size = 50;

  //noise increase
  float noiseInc = 0.3;

  //rotation 
  float angle = 0.0;
  
  float angleInc = 0.0;

  //create particle
  Particle() {
    //random initilization

    size = random(30, 90);

    //noise increase
    noiseInc = random(0.01, 0.03);

    //rotation 
    angle = random(0, 10);
    
    angleInc = random(-0.03, 0.03);
  }

  //draw particles
  void draw() {
    noStroke(); // no contour/outline
    fill(0, 200, 220); //fill the with RGB color
    ellipse(posX, posY, size, size); //draw an ellipse
  }

  //udpate particles
  void update() {
    //speed in the X direction
    float n = noise(noiseInc + posX, noiseInc + posY);
    noiseInc += 0.025;

    posX += ( n ) * cos(angle);
    posY += ( n ) * sin(angle);

    angle += angleInc;

    //change the size of the particle
    if (size >= -0.1) {
      size -= n*0.1;
    }
  }
  
}
