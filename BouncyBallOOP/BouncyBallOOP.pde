//declare a new ball called b
Ball allTheBalls[]  = new Ball [300];

void setup() {
  size(800, 600);
  //initialize b as a new object of the Ball class
  for (int i = 0; i < allTheBalls.length; i++) {
    allTheBalls[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < allTheBalls.length; i++) {
    allTheBalls[i].display();         //call b's display() method
    allTheBalls[i].shimmy();
    allTheBalls[i].explode();
    allTheBalls[i].bounce();
  }
}