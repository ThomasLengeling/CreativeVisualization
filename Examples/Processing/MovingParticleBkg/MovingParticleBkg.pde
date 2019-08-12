//Moving particle position
float posX = 50;
float posY = 400;

float sizeX = 60;
float sizeY = 60;

//setup initial parameters
void setup(){
  
  //size of the window
  size(800, 800);
  
  //clean background
  background(0);
}

void draw(){
  
  //background color 0 -> black 255 -> white
  fill(0, 2);
  noStroke();
  rect(0, 0, width, height);
  
  //speed in the X direction
  posX += 2;
  
  //change the size of the particle
  sizeX -= 0.2;
  sizeY -= 0.2;
  
  //draw the particle
  stroke(20); // no contour/outline
  fill(0, 200, 220); //fill the with RGB color
  ellipse(posX, posY, sizeX, sizeY); //draw an ellipse
  
}
