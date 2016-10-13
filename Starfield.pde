
Particle [] regPart;
void setup()
{
  //your code here
  size(500,500);
  regPart = new Particle[500];
  for(int nP = 0; nP < regPart.length; nP++)
  {
  regPart[nP] = new NormalParticle();
  }
  regPart[0] = new OddballParticle();
  regPart[1] = new JumboParticle();
}
void draw()
{
  //your code here
  background(0);
  for(int nP = 0; nP < regPart.length; nP++)
  {
    regPart[nP].move();
    regPart[nP].show();
  }
}
class NormalParticle implements Particle
{
  double npX, npY, npDirect, spD;
  float size = (int)(Math.random()*3)+1;
  NormalParticle()
  {
    npX = width/2;
    npY = height/2;
    spD = (Math.random()*3)+.5;
    npDirect = TWO_PI * Math.random();
  }
  public void move()
  {
    npX += Math.cos(npDirect) * spD;
    npY += Math.sin(npDirect) * spD;
    size += .05;
    if(npX > 500 || npX < 0 || npY > 500 || npY < 0) {
      npX = width/2;
      npY= height/2;
      size = (int)(Math.random()*3)+1;
      npDirect = TWO_PI * Math.random();
    }
  }
  public void show()
  {
    fill(188, 229, 255);
    ellipse((int)npX,(int)npY, (float)size, (float)size);
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  double anG, spD, npX, npY;
  int r = 200;
    OddballParticle()
  {
    npX=250;
    npY=250;
    spD = Math.random()*10;
    anG = TWO_PI/8;
  
  }
  public void move(){
    r--;   
    npX = 250+ r*Math.cos(anG);
    npY = 250+ r*Math.sin(anG);
    anG += .1;
    if(npX > 500 || npX < 0 || npY > 500 || npY < 0){
      r= 200;
    }
}
public void show(){
  fill(80,81,81);
    ellipse((int)npX,(int)npY,30,30);
  }
}
class JumboParticle extends NormalParticle //uses inheritance
{
  //your code here
  public void show() {
  fill(244, 220, 66);
  ellipse((float)npX,(float)npY,size*5,size*5);
  
  }
}