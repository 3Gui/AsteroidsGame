class Asteroid extends Floater
{
  private double rotSpeed;
 
  public Asteroid(){
    corners = 6;
    yCorners = new int [corners];
    xCorners = new int [corners]; 
    xCorners[0] = 13;
    yCorners[0] = 0;
    xCorners[1] = 7;
    yCorners[1] = -9;
    xCorners[2] = -5;
    yCorners[2] = -7;
    xCorners[3] = -7;
    yCorners[3] = 0;
    xCorners[4] = -7;
    yCorners[4] = 7;
    xCorners[5] = 8;
    yCorners[5] = 9;
    rotSpeed = 1;
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myColor = color(43,123,234);
    myXspeed = Math.random()*2 -1;
    myYspeed = Math.random()*2 -1;
  }
  

  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  
  
  
  
}
