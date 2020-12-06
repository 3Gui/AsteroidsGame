class Star{
  private double mX, mY, mSize;
  private int mCol;
  
  public Star(){
    mX = Math.random()*501;
    mY = Math.random()*501;
    mSize = Math.random()*4+1.5;
    mCol = color((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
  }
  
  public void show(){
    fill(mCol);
    ellipse((float)mX,(float)mY,(float)mSize,(float)mSize);
    
    
  }
  
   public void reset(){
    mX = Math.random()*501;
    mY = Math.random()*501;
    mSize = Math.random()*4+1.5;
    mCol = color((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
    
  }
  
}
