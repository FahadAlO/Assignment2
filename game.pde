PImage img;

Ball myBall;

float ScreenWidth,ScreenHeight; 

int X , Y;
int  weight , heigh;
int speedX , speedY;
int stepX , stepY;
int stepW , stepH , stepS;
int stepXR, stepYR;
int stepXL , stepYL;
int ScoreLeft = 0; 
int ScoreRight = 0;
int endScore = 5;

PVector location;
PVector velocity;

boolean goUpL, goDownL;
boolean goUpR, goDownR;

void setup() 
{
   size(500, 500);
 
   img = loadImage("background.jpg");
 
   myBall = new Ball(200,200);
 
   location = new PVector(100,100);
   velocity = new PVector(2.5,5);
  
  X = width/2;
  Y = height/2;
  
  ScreenWidth  = width;
  ScreenHeight = height;

  textSize(30);
  textAlign(CENTER, CENTER);
  
  rectMode(CENTER);
  stepX = 10;
  stepY = height/2;
  
  
  stepXR = width - 10;
  stepYR = height/2;

  stepW = 10;
  stepH = 100;
  stepS = 5;
  
}

void draw() 
{
  
   myBall.display();
  
  image(img,0,0,ScreenWidth,ScreenHeight);

  location.add(velocity);

if ((location.x > width) || (location.x < 0)) 
{
    velocity.x = velocity.x * -1;
    
  }
  
if ((location.y > height) || (location.y < 0))
{
    
    velocity.y = velocity.y * -1;
}
