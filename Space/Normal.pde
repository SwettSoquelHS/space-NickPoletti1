class Normal {
  double myX;
  double myY;
  double speed;
  float direction;
  int R, G, B;

  public Normal(double myX, double myY, int R, int G, int B, double speed, float direction) {
    this.myX = myX;
    this.myY = myY;
    this.speed = speed;
    this.direction = direction;
    this.R = R;
    this.G = G;
    this.B = B;
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
    }else {
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
    ellipse(0, 0, 5, 5);
    popMatrix();
  }
}
