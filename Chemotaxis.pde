//declare bacteria variables here
Bacteria[] aLot = new Bacteria[1];
void setup()   
{
  size(600, 600);
  //initialize bacteria variables here
  for (int i = 0; i < aLot.length; i++)
  {
    aLot[i] = new Bacteria();
  }
}   
void draw()   
{
  background(136, 206, 235);   
  //move and show the bacteria
  for (int i = 0; i < aLot.length; i++)
  {
    aLot[i].move();
    aLot[i].show();
  }
}  
class Bacteria    
{     
  //lots of java!
  int myX, myY;
  Bacteria()
  {
    myX = myY = 300;
  }
  void move()
  {
    myX += (int)(Math.random()*7) - 3;
    myY += (int)(Math.random()*7) - 3;
  }
  void show()
  {
    noFill();
    ellipse(myX, myY, 30, 30);
  }
}
