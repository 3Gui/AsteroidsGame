Spaceship Polaris = new Spaceship();
Star[] field = new Star[200];
ArrayList <Bullet> bill = new ArrayList <Bullet>();
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isAccel = false;
boolean isHyper = false;
boolean isShooting = false; 
void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
  //star init
  for(int i = 0; i< field.length; i++){
    field[i] = new Star();
  }
  //asteroid init
  for(int i = 0; i< 20; i++){
    belt.add(new Asteroid());
  }
}


void draw() {
  background(0);
  
  //Show Starfield
  for(int i = 0; i< field.length; i++){
    noStroke();
    field[i].show();
  }
 //Asteroids + spaceship collision
 for(int i = 0; i < belt.size();i++){
   belt.get(i).show();
   belt.get(i).move();
   if (dist((float)Polaris.getCenterX(), (float)Polaris.getCenterY(),(float)belt.get(i).getCenterX(),(float)belt.get(i).getCenterY())< 22){
     belt.remove(i);
     Polaris.minusLives(1);
   }
 }
 //Bullet and Asteroid collision checker
 for(int i = 0; i < bill.size(); i++){
   for (int j = 0; j < belt.size(); j++){
     if (dist((float)bill.get(i).getCenterX(), (float)bill.get(i).getCenterY(),(float)belt.get(j).getCenterX(),(float)belt.get(j).getCenterY())< 10){
     belt.remove(j);
     bill.remove(i);
     break;
   }
   }
   
   
   
 }
 //Bullets and bullet boundaries
 for(int i = 0; i < bill.size();i++){
   bill.get(i).show();
   bill.get(i).move();
   if(bill.get(i).getCenterY() == 0 ||bill.get(i).getCenterY() == 500 ||bill.get(i).getCenterX() == 0 ||bill.get(i).getCenterX() == 500 ){
    bill.remove(i);
   }
   
 }
  //Spaceship
  Polaris.show();
  Polaris.move();
  Polaris.showLives();
  
 //controls
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
  if(isShooting){
    bill.add(new Bullet(Polaris));
    isShooting = false;
  }
  
  if(Polaris.getLives() == 0){
    noLoop();    
    lose();
  }
  
  if(belt.size() == 0 && Polaris.getLives() >0){
    noLoop();
    win();
  }
  
}




void restart(){
  Polaris.reset();
  for(int i = 0; i< field.length; i++){
    field[i].reset();
  }
  for(int i = 0; i< belt.size(); i++){
    belt.remove(i);
  }
  for(int i = 0; i< 20; i++){
    belt.add(new Asteroid());
  }
}

void win(){
  background(0,255,0);
  fill(0);
  text("You Win!", 205 ,200);
  text("Press R to restart", 170, 250);
}


void lose(){
  background(255,0,0);
  fill(0);
  text("You Lose", 205,200);
  text("Press R to restart", 170,250);
  
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
  if (key == ' '){
    isShooting = true;
  }
  
  if(key == 'r'){
    restart();
    loop();
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
