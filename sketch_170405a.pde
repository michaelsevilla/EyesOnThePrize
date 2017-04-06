import java.awt.MouseInfo;


PVector theBallPosition;
PVector theBallVelocity;
PImage bg;
Eye left, right;
class Eye {
  int maxX, maxY, minX, minY;
  PImage img;
  Eye (String img, int maxX, int maxY, int minX, int minY) {
    this.img = loadImage(img);
    this.maxX = maxX;
    this.maxY = maxY;
    this.minX = minX;
    this.minY = minY;
  }
  void draw() {
    int x = MouseInfo.getPointerInfo().getLocation().x;
    int y = MouseInfo.getPointerInfo().getLocation().y;
    if (x > maxX) x = maxX;
    if (y > maxY) y = maxY;
    if (x < minX) x = minX;
    if (y < minY) y = minY;
    image(img, x, y);
  }
}
void setup(){
  smooth();
  frameRate(30);
  size(816,848);
 
  theBallPosition = new PVector(width/2,height/2); 
  theBallVelocity = new PVector(1.3,1); 
  
  bg = loadImage("pic.jpeg");
  left = new Eye("eye_left.png", 420, 265, 376, 260);
  right = new Eye("eye_right.png", 600, 280, 548, 275);  
  
  //line(15, 25, 70, 90);

}
void draw(){
  noStroke();
  background(bg);
  imageMode(CENTER);
  left.draw();
  right.draw();
}