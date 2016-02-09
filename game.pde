PImage img;

float ScreenWidth,ScreenHeight; 

int X , Y , weight , heigh , speedX , speedY;
int stepX , stepY;
int stepW , stepH , stepS;
int stepXR, stepYR;
int stepXL , stepYL;
int ScoreLeft = 0; 
int ScoreRight = 0;
int endScore = 5;

PVector location;
PVector velocity;

boolean goUpLeft, goDownLeft;
boolean goUpRight, goDownRight;

oid setup() 
{
 size(500, 500);
 img = loadImage("background.jpg");

  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
  
  X = width/2;
  Y = height/2;
  
  ScreenWidth  = width;
  ScreenHeight = height;
  
  weight = 50;
  heigh  = 50;
  
  speedX = 4;
  speedY = 4;