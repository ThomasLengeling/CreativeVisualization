//Moving particle position
float posX = 400;
float posY = 400;

float sizeX = 60;
float sizeY = 60;

//noise increase
float noiseInc = 0.3;


//rotation 
float angle = 0.0;

//setup initial parameters
void setup() {

  //size of the window
  size(800, 800);

  //clean background
  background(0);
}

void draw() {

  //background color 0 -> black 255 -> white
  fill(0, 2);
  noStroke();
  rect(0, 0, width, height);

  //speed in the X direction
  float n = noise(noiseInc);
  noiseInc += 0.02;

  posX += n * cos(angle);
  posY += n * sin(angle);
  
  angle += 0.01;

  //change the size of the particle
  if (sizeX >= -0.1) {
    sizeX -= n*0.5;
    sizeY -= n*0.5;
  }

  //draw the particle
  stroke(255); // no contour/outline
  fill(0, 200, 220); //fill the with RGB color
  ellipse(posX, posY, sizeX, sizeY); //draw an ellipse
}
