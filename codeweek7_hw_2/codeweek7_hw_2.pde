// Code_1_FA18
// Week 7
// Bryan Ma

// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

ArrayList<Ball> balls = new ArrayList<Ball>();
bouncingEyes myEyes = new bouncingEyes(100, 100, 100, 50);

void setup() {
  size(800, 800);


  for (int i = 0; i < 10; i++) {
    balls.add(new Ball(random(width), random(height)));
  }
}

void draw() {
  background(30);
  for (int i = 0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.display();
    ball.update();
  }

  //myEyes.eyeMovement();
  //myEyes.drawEyes();
  //myEyes.eyeBoundaries();
  //myEyes.mousePressed();

  myEyes.updateEyeball();
}

void mousePressed() {
  myEyes.mousePressed();
}

class bouncingEyes {
  float posX;
  float posY;
  float eyeWidth;
  float eyeHeight;
  float dx = 5;
  float dy = 5;
  int r, g, b = 0;
  color c1 = color(r, g, b);

  bouncingEyes(float posX, float posY, float eyeWidth, float eyeHeight) {
    this.posX = posX;
    this.posY = posY;
    this.eyeWidth = eyeWidth;
    this.eyeHeight = eyeHeight;
  }
  void eyeBoundaries() {
  }
  void drawEyes() {
  }

  void mousePressed() {
    eyeWidth = 0;
    eyeHeight = 0;
  }
  void eyeMovement() {
  }

  void updateEyeball() {

    if (posX < 0 + eyeWidth/2 || posX > width - eyeWidth/2) {
      dx *= -1;
      r = int(random(0, 255));
      g = int(random(0, 255));
      b = int(random(0, 255));
    }
    if (posY < 0 + eyeHeight/2 || posY > height - eyeHeight/2) {
      dy *= -1;
      r = int(random(0, 255));
      g = int(random(0, 255));
      b = int(random(0, 255));
    }
    c1 = color(r, g, b);
    posX += dx;
    posY += dy;

    fill(255);
    ellipse(posX, posY, eyeWidth, eyeHeight);
    fill(c1);
    ellipse(posX, posY, eyeHeight, eyeHeight);
  }
}

class Ball {
  // what does it have and do? 
  // create the variables
  // position x,y
  // velocity x,y
  float posX;
  float posY;
  float velX;
  float velY;
  float size;

  // create the constructor
  Ball(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-5, 5);
    this.velY = random(-5, 5);
    this.size = random(50, 200);
  }

  // draw to the screen
  void display() {
    ellipse(this.posX, this.posY, size, size);
  }

  // update its position and velocity.
  void update() {
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width-this.size/2 || this.posX < this.size/2) {
      this.velX *= -1;
    }
    if (this.posY > height-this.size/2 || this.posY < this.size/2) {
      this.velY *= -1;
    }
  }
}
