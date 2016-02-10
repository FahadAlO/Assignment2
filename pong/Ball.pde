class Ball
{
  int X = 0;
  int Y = 0;
  
  Ball(float X , float Y)
  {
    
  weight = 15;
  heigh  = 15;
  
  speedX = 4;
  speedY = 4;
  
  }

 void display(){
   
 // ellipse(200,200,20,20);
   
 }
    
  }
  
  
  
void drawcricle() 
{

  ellipse(X, Y, weight, heigh);
  
}

void movecricle()
{
  
  X = X + speedX;
  Y = Y + speedY;
  
}

void keyPressed()
{
  if (key == 'q' || key == 'Q') 
  {
    
     goUpL = true;
     
  }
  if (key == 'a' || key == 'A')
  {
    
    goDownL = true;
    
  }
  if (keyCode == UP)
  {
    
    goUpR = true;
    
  }
  if (keyCode == DOWN)
  {
    
    goDownR = true;
    
  }
}

void keyReleased()
{
  if (key == 'q' || key == 'Q')
  {
    
    goUpL = false;
    
  }
  if (key == 'a' || key == 'A')
  {
    
    goDownL = false;
    
  }
  if (keyCode == UP)
  {
    
    goUpR = false;
    
  }
  if (keyCode == DOWN)
  {
    
    goDownR = false; 
    
  }
}
  
  
  