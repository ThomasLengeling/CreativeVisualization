/*
  Motion Example using Noise
  Thomas Sanchez Lengeling
*/

//noise increment variable
float noiseInc01 = 0.3;
float noiseInc02 = 0.23;

// initilization
void setup() {
  size(800, 800);
  
  //smooth lines
  smooth(32);
  background(255);
}

void draw() {
  
  //background alpha effect, transparent background
  noStroke();
  fill(255, 20);
  rect(0, 0, width, height);

  //color of the ellipse
  //stroke -> black with no filling
  stroke(0);
  noFill();
  
  
  //random noise increment 1
  float tam = 200 + noise(noiseInc01)*200;
  noiseInc01 += 0.022; //update
  
  // outer circle
  ellipse(width/2.0, height/2.0, tam, tam);
  
  //random noise increment 2
  float tam2 = 100 + noise(noiseInc02)*100;
  noiseInc02 += 0.03;
  
  // inner circle
  ellipse(width/2.0, height/2.0, tam2, tam2);
}
