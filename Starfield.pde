Particle [] sprinkles = new Particle [100];
Oddball Bosco = new Oddball();



void setup(){
   size(800,800);
   background(255);
   for(int x = 0; x < sprinkles.length; x++)
     sprinkles[x] = new Particle();
}

void draw()
{
  
  for(int x = 0; x <sprinkles.length; x++){
  sprinkles[x].show();
  sprinkles[x].move();
  sprinkles[x].drawAgain();
  }
  
  Bosco.show();
  Bosco.newMovement();
  Bosco.drawAgain();

  
 
 fill(0,0,0,20);
  rect(0,0,800,800, 1);
  
  fill(255);
  noStroke();
  ellipse(400,400,150,150);
}
class Particle
{
  int mySize;
  double myX, myY, mySpeed, myAngle, myColor;
  Particle(){
    myX = 400;
    myY = 400;
    mySize = 20;
    mySpeed = (double)(Math.random()*10)+5;
    myAngle = Math.PI * (double)(Math.random()*2.01);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
  void show(){
    noStroke();
    fill((int)myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);

    //fill(0,0,0,1000);
    //ellipse((float)myX,(float)myY,20,20); 
  }


  void move(){
    myX += mySpeed * (Math.cos(myAngle));
    myY += mySpeed * (Math.sin(myAngle));
    
  }
  
  void drawAgain(){
    if(myX > 800 || myX >800 || myX < 0 || myY < 0){
      myX = 400;
      myY = 400;
      myAngle = Math.PI * (double)(Math.random()*2.01);
    }
     
    
    
  }

}

class Oddball extends Particle
{
  Oddball(){
    myColor = color(255,255,255);
    mySpeed = (Math.random()*10-4);
    mySize = 100;
    
  }
  void newMovement(){
    
    myX += (int)(Math.random()*20-10);
    myY += (int)(Math.random()*20-10);
    
  }
  
}
