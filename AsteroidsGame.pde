Spaceship Polaris = new Spaceship();
star[] field = new star[100];
void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
  for(int i = 0; i< field.length; i++){
    field[i] = new star();
  }
   
}


void draw() {
  background(0);
  for(int i = 0; i< field.length; i++){
   noStroke();
    field[i].show();
  }
  Polaris.show();
  Polaris.move();
}

void keyPressed() {
  
  if (key == 's') {
    Polaris.accelerate(0.3);
    Polaris.rockets();
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
