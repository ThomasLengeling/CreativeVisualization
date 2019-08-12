//Moving particle position
float posX = 0;
float posY = height/2.0;

//setup initial parameters
void setup(){
  
  //size of the window
  size(800, 800);
}

void draw(){
  
  //background color 0 -> black 255 -> white
  background(0);
  
  //speed in the X direction
  posX += 4;
  
  //draw the particle
  noStroke(); // no contour/outline
  fill(0, 200, 220); //fill the with RGB color
  ellipse(posX, posY, 10, 10); //draw an ellipse
  
}
