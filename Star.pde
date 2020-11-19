class star {
  private double mX, mY, mSize;
  private int mCol;
  
  public star(){
    mX = Math.random()*501;
    mY = Math.random()*501;
    mSize = Math.random()*3+2;
    mCol = color((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
  }
  
  public void show(){
    fill(mCol);
    ellipse((float)mX,(float)mY,(float)mSize,(float)mSize);
    
    
  }
  public int getCol(){
    return mCol;
    
  }
  
  
}
