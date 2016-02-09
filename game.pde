PImage img;

Ball myBall;

float ScreenWidth,ScreenHeight; 
<<<<<<< HEAD
=======

>>>>>>> c3428e2cc0764fa4ee46af9a5fca4e4c83b63ed8
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
 
<<<<<<< HEAD
   myBall = new Ball(200,200);
 
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
=======
   myBall = new Ball();
 
  location = new PVector(50,50);
  velocity = new PVector(5.10,10);
>>>>>>> c3428e2cc0764fa4ee46af9a5fca4e4c83b63ed8
  
  X = width/2;
  Y = height/2;
  
  ScreenWidth  = width;
<<<<<<< HEAD
  ScreenHeight = height;
=======
  ScreenHeight = height;
>>>>>>> c3428e2cc0764fa4ee46af9a5fca4e4c83b63ed8
