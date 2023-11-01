int[][] letters = {
  {0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1}, //M
  {0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0}, //O
  {1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0}, //V
  {1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1}, //E
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, //
  {0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0}, //O
  {1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0}, //V
  {1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1}, //E
  {1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1}, //R
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}//.
};
int blockSize = 20;
void setup() {
  size(1400, 500);
  noStroke();
}
void vivi() {
  translate(blockSize*8+20, blockSize*8+20);
  for (int i = 0; i < letters.length; i++) {
    int xPos = 0;
    int yPos = 0;
    for (int j = 0; j < letters[i].length; j++) {
      if (letters[i][j] == 1) {
        fill(77-random(0,30), 6+random(0,50), 100+random(0,60), random(100, 255));
        float youyou = blockSize-9+random(0, 14);
        ellipse(xPos, yPos, youyou, youyou);
      }
      xPos += blockSize;
      if (j % 4 == 3) {
        xPos = 0;
        yPos += blockSize;
      }
    }
    translate(blockSize * 6, 0);
  }
}
//FOR YOU,A THOUSAND TIMES OVER.


void draw() {
  background(255, 20);
  vivi();
  
}
