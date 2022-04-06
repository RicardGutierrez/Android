float x;
float y;

void setup() {
  size(200, 100);
  //start in middle of screen
  x = width/2;
  y = height/2;
  //gray background
  background(200);  
  //make the simulation faster
  frameRate(1000);
}

void draw() {
  
  stroke(0);
  
  //randomly move
  x += random(-1, 1);
  y += random(-1, 1);
  
  //prevent going off left or right
  if(x < 0){
    x = width;
  }
  if(x > width){
    x = 0;
  }

  //prevent going off top or bottom
  if(y < 0){
    y = height;
  }
  if(y > height){
    y = 0;
  }
  
  //draw the point
  point(x, y);
}
