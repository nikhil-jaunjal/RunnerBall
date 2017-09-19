int displayWidth = 900;
int displayHeight = 500;
float ballx = 200;
float bally = 300;
float ballRadius = 30;
float groundY = 300;
float pillerWidth = 20;

public void settings()
{
  size(displayWidth, displayHeight);
}

Ball ball;
Ground ground;
Piller pillers[] = new Piller[5];
Statistics stats;

public void setup()
{
  background(255, 255, 255);
  reset();
}
public void reset()
{
  fill(0);
  ellipse(ballx, bally-15, ballRadius, ballRadius);
  fill(0);
  rect(0, groundY, displayWidth, displayHeight-300);

  ball = new Ball(ballx, bally-15);
  ground = new Ground();
  
  for(int i=0;i<pillers.length;i++)
  {
   float pillerY = random(150,300); 
   //**** get piller properties / height
   pillers[i] = new Piller((displayWidth/2)+pillerWidth+i*175,pillerY,displayHeight-groundY);
  }
  stats = new Statistics();
}
public void draw()
{
  background(255, 255, 255);
  ball.bounce();
  ground.groundRedraw();
  for(int i = 0; i< pillers.length; i++)
  {
   pillers[i].movePiller();
  }
  stats.showScore();
}