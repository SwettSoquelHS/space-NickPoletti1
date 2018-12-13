//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles = new Normal[1500];
Jumbo[] parts = new Jumbo[100];
Oddball theOne;

void setup() {
  size(600, 600);
  background(0);
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Normal((Math.random()*600), (Math.random()*600), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 5, (float)(Math.random()*360));
  }
  for (int j = 0; j < parts.length; j++) {
    parts[j] = new Jumbo((Math.random()*600), (Math.random()*600), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 5, (float)(Math.random()*360));
  }
  theOne = new Oddball((Math.random()*600), (Math.random()*600), 0, 0, 0, 9, (float)(Math.random()*360));
} //end of setup


void draw() {
  fill(200, 8);
  rect(0, 0, width, height);
  for (int i = 0; i < particles.length; i++) {
    particles[i].show();
  }
  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
  }
  for (int j = 0; j < parts.length; j++) {
    parts[j].show();
  }
  for (int j = 0; j < parts.length; j++) {
    parts[j].move();
  }
  theOne.show();
  theOne.move();
} //end of draw
