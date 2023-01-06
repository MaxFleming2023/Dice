//10th tries the charm
int sumDots;
int sumOfSums;
int avg;
int numRolls;
int rows = 10;
int cols = 10;
void setup() {
  background(204);
  size(600, 600);
  noLoop();
  sumDots = 0;
  avg = 0;
  numRolls = 0;
  sumOfSums = 0;
}

void draw() {
  background(204);
  int xDie = width / (cols+1);
  int yDie = height / (rows+1);
  for (int forX = 0; forX < cols; forX++) {
    for (int forY = 0; forY < rows; forY++) {
      int x = (forX + 1)* xDie;
      int y = forY * yDie;

      Die newDie = new Die(x - 25, y + 25);
      newDie.show();
      sumDots+=newDie.roll();
    }
    textSize(15);
    text("sum " + sumDots, 25, height-height+20);
    text("Avg " + avg, width - 50, height-height+20);
  }
}

void mousePressed() {
  redraw();
  numRolls++;
  sumOfSums += sumDots;
  avg = sumOfSums/numRolls;
  sumDots = 0;
}
