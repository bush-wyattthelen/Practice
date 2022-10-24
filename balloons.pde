class Balloon {
  int size;
  int elevation;
  int lateral;
  
  Balloon(int a, int b, int c) {
    size = a;
    elevation = b;
    lateral = c;
  }
  
  void levitate() {
    elevation -= 2;
  }
  
  void inflate() {
    size += 1;
  }
}



void setup() {
  size(600, 600);
}

Balloon myBalloon1 = new Balloon(50, 600, (int)(Math.random() * 600));
Balloon myBalloon2 = new Balloon(50, 600, (int)(Math.random() * 600));
Balloon myBalloon3 = new Balloon(50, 600, (int)(Math.random() * 600));

void draw() {
  background(170);
  
  fill (255, 0, 0);
  circle(myBalloon1.lateral, myBalloon1.elevation, myBalloon1.size);
  fill (0, 255, 0);
  circle(myBalloon2.lateral, myBalloon2.elevation, myBalloon2.size);
  fill (0, 0, 255);
  circle(myBalloon3.lateral, myBalloon3.elevation, myBalloon3.size);
  
  myBalloon1.levitate();
  myBalloon1.inflate();
  myBalloon2.levitate();
  myBalloon2.inflate();
  myBalloon3.levitate();
  myBalloon3.inflate();
}
