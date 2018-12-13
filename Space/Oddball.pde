class Oddball extends Normal {
  public Oddball(double myX, double myY, int R, int G, int B, double speed, float direction) {
    super(myX, myY, R, G, B, speed, direction);
  }
  void move() {
    if (myX > 600 || myX < 0) {
      direction = direction - (float)(Math.random()*180);
      myX = 0;
    }
    if (myY > 600 || myY < 0) {
      direction = direction + (float)(Math.random()*180);
      myY = 0;
    }
    myX = myX + Math.cos(radians(direction))*speed;
    myY = myY + Math.sin(radians(direction))*speed;
  }

  void show() {
    pushMatrix();
    translate((float) myX, (float)myY);
    fill(R, G, B);
    rect(0, 0, (float)(Math.random()*20)+20, (float)(Math.random()*20)+20);
    popMatrix();
  }
}
