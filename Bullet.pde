class Bullet extends Floater
{
  
 public Bullet(Spaceship ship){
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY(); 
    myXspeed = ship.getXspd();
    myYspeed = ship.getYspd();
    myPointDirection = ship.getPointDir();
    myColor = color(99,218,157);
    super.accelerate(6);
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 6, 6); 
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  /*
   public void reset(){
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY(); 
    myXspeed = ship.getXspd();
    myYspeed = ship.getYspd();
    myPointDirection = ship.getPointDir();
    myColor = color(99,218,157);
    super.accelerate(6);
    
  }
  */
}
