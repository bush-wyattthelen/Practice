void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(0);
  for(int i = 0; i < 100; i++)
  {
    int input = (int)(Math.random() * 20) == 19 ? 4 : 3;
    Clover bob = new Clover(input, (int)(Math.random() * width), (int)(Math.random() * height));
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Clover
{
  int numLeaves, myX, myY;
  Clover(int a, int b, int c)//constructor
  {
    numLeaves = a;
    myX = b;
    myY = c;
  }
  void show()
  {
     //I used some ugly math below
     //you can ignore it for now
    fill(0, 255, 0);
    stroke(0, 255, 0);
    float rot = random(PI*2);
    translate(myX, myY);
    rotate(rot);
    for (float i = 0; i < PI * 2; i+= PI*2/numLeaves)
    {     
      rotate(i);
      translate(6, 0);
      ellipse(0, 0, 10, 10);
      translate(-6, 0);
      rotate(-i);
    }
    rotate(-rot);
    translate(-myX, -myY );
  }
}
