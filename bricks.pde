void setup()
{
  size(380,385);
  noLoop();
}
void draw()
{
  for(int y = 0; y < 385; y += 15)
  {
    for(int x = (y % 30 == 0) ? 0 : -25; x < 380; x += 55)
    {
      System.out.println("running at " + x + ", " + y);
      Brick bob = new Brick(x,y);
      bob.show();
    }
  }
}
class Brick
{
  int myX, myY;
  Brick(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
