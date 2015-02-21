import processing.opengl.*;
ArrayList<Circle> circles;
float angle=0;
float d = 50;

PVector loc;
int rad = 1;

void setup() {
  size(500, 500, OPENGL);
  smooth(8);
  noStroke();
  noFill();
  rectMode(CENTER);
  loc = new PVector(0, 0);

  circles = new ArrayList<Circle>();
  for (int i = 0; i < 750; i+= 15) {
    circles.add(new Circle(i/2));
  } 
}

void draw() {
//  saveFrame("output/frame####.png");
  if(frameCount == 600) {
    exit();
  }
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  for (Circle c: circles) {
    c.display();
  }
  popMatrix();
}

