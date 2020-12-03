Spaceship Polaris = new Spaceship();
star[] field = new star[200];
//Asteroid george = new Asteroid();
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isAccel = false;
boolean isHyper = false;
void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
  for(int i = 0; i< field.length; i++){
    field[i] = new star();
  }
  
  for(int i = 0; i< 20; i++){
    belt.add(new Asteroid());
  }
}


void draw() {
  background(0);
  
  for(int i = 0; i< field.length; i++){
   noStroke();
    field[i].show();
  }
 
 for(int i = 0; i < belt.size();i++){
   belt.get(i).show();
   belt.get(i).move();
 }
 
  Polaris.show();
  Polaris.move();
  
  if (isAccel) {
    Polaris.accelerate(0.055);
  }
  if (isTurningLeft) {
    Polaris.turn(-5);
  } 
  if (isTurningRight) {
    Polaris.turn(5);
  }
  if (isHyper) {
    Polaris.hyperspace();
    isHyper = false;
  }
  
  
  
  //george.show();
  //george.move();
}













void keyPressed() {
  
  if (key == 's') {
    isAccel = true;
  }
  if (key == 'a') {
    isTurningLeft = true;
  } 
  if (key == 'd') {
    isTurningRight = true;
  }
  if (key == 'w') {
    isHyper = true;
  }
  
}

void keyReleased() {
  
  if (key == 's') {
    isAccel = false;
  }
  if (key == 'a') {
    isTurningLeft = false;
  } 
  if (key == 'd') {
    isTurningRight = false;
  }
 
  
}
