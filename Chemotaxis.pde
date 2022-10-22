Bubble[] aLot = new Bubble[40];
void setup()   
{
  size(600, 600);
  
  for (int i = 0; i < aLot.length; i++)
  {
    aLot[i] = new Bubble();
  }
}   
void draw()   
{
  background(136, 206, 235);
  for (int i = 0; i < aLot.length; i++)
  {
    aLot[i].move();
    aLot[i].show();
  }
}  
void mousePressed()
{
  for (int i = 0; i < aLot.length; i++)
  {
    aLot[i] = new Bubble();
  }
}
class Bubble    
{     
  int myX, myY;
  Bubble()
  {
    myX = mouseX;
    myY = mouseY;
  }
  void move()
  {
    myX += (int)(Math.random()*10) - 5;
    myY += (int)(Math.random()*7) - 4;
  }
  void show()
  {
    fill(255, 100);
    noStroke();
    ellipse(myX, myY, 60, 60);
  }
}
