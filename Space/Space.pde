//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles = new Normal[1000];

void setup() {
  size(600, 600);
  background(0);
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Normal((Math.random()*600), (Math.random()*600), 5, (float)(Math.random()*360));
  }
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
} //end of draw
