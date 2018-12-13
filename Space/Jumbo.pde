class Jumbo extends Normal {
  public Jumbo(double myX, double myY, int R, int G, int B, double speed, float direction) {
    super(myX, myY, R, G, B, speed, direction);
  }
  void move() {
    if (myX > 600 || myX < 0) {
      direction = direction-180;
    }
    if (myY > 600 || myY < 0) {
      direction = direction-180;
    }
    if (!mousePressed) {
      myX = myX + Math.cos(radians(direction))*speed;
      myY = myY + Math.sin(radians(direction))*speed;
    } else {
      myX = mouseX - Math.random()*20;
      myY = mouseY - Math.random()*20;
      R = (int)(Math.random()*255);
      G = (int)(Math.random()*255);
      B = (int)(Math.random()*255);
    }
  }

  void show() {
    pushMatrix();
    translate((float) myX, (float)myY);
    fill(R, G, B);
    ellipse(0, 0, 15, 15);
    popMatrix();
  }
}
