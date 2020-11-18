Spaceship Polaris = new Spaceship();

void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
}


void draw() {
  background(0);
  Polaris.show();
  Polaris.move();
}

void keyPressed() {
  
  if (key == 's') {
    Polaris.accelerate(0.3);
  }
  if (key == 'a') {
    Polaris.turn(-15);
  } 
  if (key == 'd') {
    Polaris.turn(15);
  }
  if (key == 'w') {
    Polaris.hyperspace();
  }
  
}

