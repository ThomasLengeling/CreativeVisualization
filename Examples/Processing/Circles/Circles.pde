void setup() {
  size(800, 800);
  rectMode(CENTER);
  
  smooth(32);
  noLoop();
}

void draw() {
  background(0);

  for (int i = 0; i < 15; i++) {
    for (int j = 0; j < 15; j++) {
      float x = i*50 + 50;
      float y = j*50 + 50;
      float rand = random(0, 1);

      if (rand > 0 && rand < 3) {
        drawSemi(x, y);
      }

      if (rand >= 0.3 && rand < 0.6) {
        drawComplete(x, y);
      }

      if (rand >= 0.6) {
        drawInverse(x, y);
      }
    }
  }
}


void drawSemi(float x, float y) {
  //draw Rectagle
  noStroke();
  fill(200);
  rect(x, y, 50, 50);

  fill(255, 255, 0);
  arc(x, y, 50, 50, radians(90), radians(270));

  fill(90, 50, 105);
  arc(x, y, 50, 50, radians(-90), radians(90));
}

void drawUpDown(float x, float y) {
  noStroke();
  fill(0, 155, 55);
  rect(x, y, 50, 50);

  fill(155, 0, 100);
  arc(x- 25, y, 50, 50, radians(-90), radians(90));

  fill(255, 100, 255);
  arc(x + 25, y, 50, 50, radians(90), radians(270));
}

void drawInverse(float x, float y) {
  noStroke();
  fill(0, 155, 55);
  rect(x, y, 50, 50);

  fill(155, 0, 100);
  arc(x- 25, y, 50, 50, radians(-90), radians(90));

  fill(255, 100, 255);
  arc(x + 25, y, 50, 50, radians(90), radians(270));
}
