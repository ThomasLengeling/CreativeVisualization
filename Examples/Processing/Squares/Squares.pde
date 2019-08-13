
void setup() {
  size(720, 720);

  background(0);

  //change color mode to HSB
  colorMode(HSB, 360, 1, 1);
  rectMode(CENTER);
}

void draw() {
  //fill background depending on the mouse X position
  background(mouseX / 2.0, 1, 1);


  //draw a square and circle depending on the mouse Y position
  noStroke();

  fill(360 - mouseY /2.0, 1, 1);
  rect(width/2.0, height/2.0, 250, 250);

  fill(360 - mouseY /4.0, 1, 1);
  ellipse(width/2.0, height/2.0, 100, 100);
}
