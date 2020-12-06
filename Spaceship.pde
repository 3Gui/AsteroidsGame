class Spaceship extends Floater {
  private int myLives;
  public Spaceship() {
    myLives = 5;
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int [corners];   
    yCorners = new int [corners];
    xCorners[0] = -8;
    xCorners[1] = 16;
    xCorners[2] = -8;
    yCorners[0] = -8;
    yCorners[1] = 0;
    yCorners[2] = 8;
    myColor = color(111, 236, 252);   
    myCenterX = 250;
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  public void hyperspace() {
    myCenterX = Math.random()*350 +100;
    myCenterY = Math.random()*350 +100;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*361;
  }
  
  public void rockets(){
    //color doesn't work?
    fill(255);
    double deg = (myPointDirection*(Math.PI/180));
    pushMatrix();
    translate((float)myCenterX,(float)myCenterY);
    rotate((float)deg);
    strokeWeight(2.5);
    fill(255);
    line(-12,-5,-20,-5);
    line(-12,0,-25,0);
    line(-12,5,-20,5);
    popMatrix();
    strokeWeight(1);
    
  }
  
  public void show(){
    super.show();
    
    if (isAccel) {
      
      
      rockets();
    } 
  }
  
  public void showLives(){
    
  fill(255);
  textSize(20);
  text("Lives = " + myLives, 5, 18);
  
  }
  
  public void minusLives(int n){
    myLives -= n;
    
  }
  
  
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getPointDir(){
    return myPointDirection;
  }
  public double getXspd(){
    return myXspeed;
  }
  public double getYspd(){
    return myYspeed;
  }
  
  public void setColor(int col){
    myColor = col;
    
  }
  public int getLives(){
    return myLives;
  }
  
  public void setLives(int lives){
    myLives = lives;
    
  }
  
  public void reset(){
    myLives = 5;
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int [corners];   
    yCorners = new int [corners];
    xCorners[0] = -8;
    xCorners[1] = 16;
    xCorners[2] = -8;
    yCorners[0] = -8;
    yCorners[1] = 0;
    yCorners[2] = 8;
    myColor = color(111, 236, 252);   
    myCenterX = 250;
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    
  }
  
}
