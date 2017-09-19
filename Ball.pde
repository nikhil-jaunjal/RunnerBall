class Ball
{
  float radius = 30;
  float x;
  float y;

  public void bounce()
  {
    if (keyPressed)
    {
      if (key == ' ')
      {
        y -= 7;
      }
    }  
    y += 3;
    if (y>=bally-15) 
    {
      y = bally-15;
    }
    ballRedraw();
  }

  public float getX()
  {
    return this.x;
  }

  public float getY()
  {
    return this.y;
  }

  public Ball(float x, float y)
  {
    this.x = x;
    this.y = y;
  }

  public void ballRedraw()
  {
    fill(0);
    stroke(0);
    ellipse(x, y, radius, radius);
  }
}