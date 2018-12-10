class Normal {
  double myX;
  double myY;
  double speed;
  float direction;
  int r, g, b;

  public Normal(double myX, double myY, double speed, float direction) {
    this.myX = myX;
    this.myY = myY;
    this.speed = speed;
    this.direction = direction;
    r = 200;
    g = 100;
    b = 50;
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
      r = (int)(Math.random()*255);
      g = (int)(Math.random()*255);
      b = (int)(Math.random()*255);
    }
  }

  void show() {
    pushMatrix();
    translate((float) myX, (float)myY);
    fill(r, g, b);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }
}
