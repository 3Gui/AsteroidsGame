class Spaceship extends Floater {
  Spaceship() {
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int [corners];   
    yCorners = new int [corners];
    xCorners[0] = -8;
    xCorners[1] = 16;
    xCorners[2] = -8;
    yCorners[0] = -8;
    yCorners[1] = 0;
    yCorners[2] = 8;
    myColor = color(123, 142, 234);   
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
  }
}

