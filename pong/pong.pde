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
 
   myBall = new Ball();
 
   location = new PVector(100,100);
   velocity = new PVector(2.5,5);
  
   X = width/2;
   Y = height/2;
  
   ScreenWidth  = width;
   ScreenHeight = height;
 
   rectMode(CENTER);
   stepX = 10;
   stepY = height/2;

   stepXR = width - 10;
   stepYR = height/2;

   stepW = 10;
   stepH = 100;
   stepS = 5;
  
   textSize(20);
   textAlign(CENTER, CENTER);
  
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
  
  drawcricle();
  movecricle();
  actionOff();

  drawstep();
  movestep();
  recordstep();
  contactstep();
  
  scores();
  GameOver();
  
}

void drawstep() 
{
  
  rect(stepX, stepY, stepW, stepH);

  rect(stepXR, stepYR, stepW, stepH);

}

void movestep()
{
  if ( goUpL )
  {
    
    stepY = stepY - stepS;
    
  }
  if ( goDownL ) 
  {
    
    stepY = stepY + stepS;
    
  }
  if ( goUpR )
  {
    
    stepYR = stepYR - stepS;
    
  }
  if ( goDownR )
  {
    
    stepYR = stepYR + stepS;
    
  }
}

void recordstep()
{
  if (stepY - stepH/2 < 0)
  {
    
    stepY = stepY + stepS;
    
  }
  if (stepY + stepH/2 > height) 
  {
    
    stepY = stepY - stepS;
    
  }
  if (stepYR - stepH/2 < 0)
  {
    
    stepYR = stepYR + stepS;
    
  }
  if (stepYR + stepH/2 > height)
  {
    
    stepYR = stepYR - stepS;
    
  }
  
}

void contactstep()
{
  
  if (X - weight/2 < stepX + stepW/2 && Y - heigh/2 < stepY + stepH/2 && Y + heigh/2 > stepY - stepH/2 )
  {
    if (speedX < 0)
    {
      
      speedX = -speedX;
      
    }
  }
  
  else if (X + weight/2 > stepXR - stepW/2 && Y - heigh/2 < stepYR + stepH/2 && Y + heigh/2 > stepYR - stepH/2 ) 
  {
    if (speedX > 0)
    {
      
      speedX = -speedX;
      
    }
  }
}

void  actionOff()
{
  if ( X > width - weight/2)
  {
    
    setup();
    speedX = - speedX;
    ScoreLeft = ScoreLeft + 1;
    
  } 
  else if ( X < 0 + weight/2)
  {
    
    setup();
    ScoreRight = ScoreRight + 1;
    
  }

  if ( Y > height - heigh/2) 
  {
   
    speedY = - speedY;
    
  } 
  else if ( Y < 0 + heigh/1) 
  {
    
    speedY = - speedY;
    
  }
}

void scores() 
{
 
  fill(255);
  text(ScoreLeft , 100 , 50);
  text(ScoreRight , width-100 , 50);
  
}

void GameOver() 
{
  if(ScoreLeft == endScore) 
  {
    
    GameOver("Left wins.");
    
  }
  if(ScoreRight == endScore)
  {
    
    GameOver("Right wins."); 
    
  }
}

void GameOver(String text) 
{
  speedX = 100;
  speedY = 100;
  
 
  setup();
  text("Click to play again", width/2 , height/2 + 20);
  text(text, width/2 , height/3);
  
  if(mousePressed) 
  {
    setup();
    ScoreRight = 0;
    ScoreLeft = 0;
    speedX = 4;
    speedY = 4;
    
  }  
}
