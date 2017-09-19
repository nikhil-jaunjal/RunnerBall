class Statistics
{
  int score = 0;
  public void showScore()
  {
    fill(255, 0, 0);
    stroke(255, 0, 0);
    text("score: "+score++, displayWidth/2 - 10, 20);
  }

  public void showError()
  {
    noLoop();
    fill(0);
    stroke(0);
    text("Game Over", displayWidth/2 - 10, 50);
  }
  public void collision(Ball ball, Piller piller)
  {
    if (ball.getX()+15 >= piller.getX() && ball.getX()-15<=piller.getX()+piller.width && ball.getY()+15>=piller.getY())
    {
      showError();
    }
  }
}