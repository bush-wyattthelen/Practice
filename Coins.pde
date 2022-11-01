void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  background(200);
  int headCount = 0;
  for (int i = 35; i < width; i += 60) {
    Coin tempCoin = new Coin(i, 150);
    tempCoin.flip();
    if (tempCoin.heads == true) headCount++;
    tempCoin.show();
  }
  text("Head count: " + headCount, 250, 200);
}
void mousePressed()
{
  redraw();
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;

  //three member functions
  Coin(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void flip()
  {
    heads = (int)(Math.random() * 2) == 0;
  }
  void show()
  {
    fill(255);
    ellipse(myX, myY, 50, 50);
    fill(0);
    if (heads == true) text("heads", myX, myY);
    else text("tails", myX, myY);
  }
}
