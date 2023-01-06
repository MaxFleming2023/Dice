class Die {
  int myX;
  int myY;
  int numDots;
  int dotSize;
  Die(int x_, int y_) {
    myX = x_;
    myY = y_;
    numDots = (int)(Math.random()*6)+1;
    dotSize = 7;
  }
  Integer roll() {
    return numDots;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (numDots == 1)
    {
      ellipse(myX+27, myY+27, dotSize, dotSize);
    }
    if (numDots == 2)
    {
      ellipse(myX+11, myY+11, dotSize, dotSize);
      ellipse(myX+42, myY+42, dotSize, dotSize);
    }
    if (numDots == 3)
    {
      ellipse(myX+11, myY+11, dotSize, dotSize);
      ellipse(myX+27, myY+27, dotSize, dotSize);
      ellipse(myX+42, myY+42, dotSize, dotSize);
    }
    if (numDots == 4)
    {
      ellipse(myX+11, myY+11, dotSize, dotSize);
      ellipse(myX+11, myY+42, dotSize, dotSize);
      ellipse(myX+42, myY+42, dotSize, dotSize);
      ellipse(myX+42, myY+11, dotSize, dotSize);
    }
    if (numDots == 5)
    {
      ellipse(myX+11, myY+11, dotSize, dotSize);
      ellipse(myX+11, myY+42, dotSize, dotSize);
      ellipse(myX+27, myY+27, dotSize, dotSize);
      ellipse(myX+42, myY+42, dotSize, dotSize);
      ellipse(myX+42, myY+11, dotSize, dotSize);
    }
    if (numDots == 6)
    {
      ellipse(myX+11, myY+11, dotSize, dotSize);
      ellipse(myX+11, myY+42, dotSize, dotSize);
      ellipse(myX+11, myY+27, dotSize, dotSize);
      ellipse(myX+42, myY+42, dotSize, dotSize);
      ellipse(myX+42, myY+11, dotSize, dotSize);
      ellipse(myX+42, myY+27, dotSize, dotSize);
    }
  }
}
