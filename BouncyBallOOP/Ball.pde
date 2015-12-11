class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    c = color(random(255), random(50), random(100, 255));
  }

  Ball(int tDiam) {
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    c = color(random(255), random(50), random(100, 255));
    vel.mult(4);
    vel.limit(30);
  }


  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void shimmy() {
    loc.add(vel);
    vel.mult(1.5);
    vel.limit(15);
  }

  void explode() {
    if (keyPressed) {
      loc = new PVector (width/2, height/2);
    }
  }

  void bounce() {
    if (loc.x + diam/2 >= width) {
      vel.x = -abs(vel.x);
    }
    if (loc.x - diam/2 <= 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + diam/2 >= height) {
      vel.y = -abs(vel.y);
    }
    if ( loc.y - diam/2 <= 0) {
      vel.y = abs(vel.y);
    }
  }
}