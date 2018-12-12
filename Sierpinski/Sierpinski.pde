void setup() {
  size(2000, 1000);
}

void draw() {
  background(255);
  sierpinski(new PVector(width/2, 0), new PVector(0, height), new PVector(width, height));
}

void sierpinski(PVector p1, PVector p2, PVector p3) {
  triangle(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y);
  if (dist(p1.x, p1.y, p2.x, p2.y) > 2) {
    PVector p12 = p1.copy().add(p2).div(2);
    PVector p23 = p2.copy().add(p3).div(2);
    PVector p13 = p1.copy().add(p3).div(2);
    
    sierpinski(p1, p12, p13);
    sierpinski(p12, p2, p23);
    sierpinski(p23, p13, p3);
  }
}
