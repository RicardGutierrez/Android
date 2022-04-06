float x, y, speedX, speedY;
float radius = 20;
float rectSizeY = 100;
float rectSizeX = rectSizeY*0.15;

boolean stoped = true;

void setup() {
  fullScreen();
  frameRate(30);
  orientation(LANDSCAPE);
  fill(0, 255, 0);
  radius = max(20, width/50);
  rectSizeY = radius * 5;
  rectSizeX = rectSizeY*0.25;
  ellipseMode(RADIUS);
  newGame();
}

void newGame() {
  stoped=true;
  speedX=0;
  speedY=0;
  x = width/2;
  y = height/2;
}

void reset() {
  stoped=false;
  speedX = random(10, 30);
  speedY = random(5, 15);
}

void draw() { 
  background(0);

  ellipse(x, y, radius, radius);
  rect(0, 0, rectSizeX, height);
  rect(width-rectSizeX, 
        mouseY-rectSizeY/2, 
        rectSizeX, rectSizeY);
//Moviment de la pilota
  x +=___ ;
  y +=___;

// if ball hits movable bar, invert X direction
 if (x+radius > width-rectSizeX &&
  y+radius > mouseY-rectSizeY/2 && 
  y-radius < mouseY+rectSizeY/2 ) {    speedX = speedX * -1;
  } 

// if ball hits wall, change direction of X
  if (x - radius < rectSizeX) {
  //CODI
  }
//NewGame
  if (x+radius>=___) {
    newGame();
  }

// if ball hits up or down, change direction of Y   
  if (y+radius > height || y-radius < 0) {
    //CODI
  }
}

void mousePressed() {
  if (stoped) {
    reset();
  }
}
