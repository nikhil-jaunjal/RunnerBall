class Piller
{
  float x;
  float y;
  float height;
  float width = 20;

  public float getX()
  {
    return this.x;
  }
  public float getY()
  {
    return this.y;
  }
  public Piller(float x, float y, float height)
  {
    this.x=x;
    this.y=y;
    this.height=height;
  }

  public void movePiller()
  {
    if (x+ width ==0)
    {
      x = displayWidth;
    }
    x = x - 1;
    reDrawPiller();
  }

  public void reDrawPiller()
  {
    fill(0);
    rect(x, y, width, height);
    stats.collision(ball,this);
  }
}