NormalParticle [] regPart;
void setup()
{
  //your code here
  size(500,500);
  regPart = new NormalParticle[100];
  for(int nP = 0; nP < regPart.length; nP++)
  {
    regPart[nP] = new NormalParticle();
    regPart[0] = new OddballParticle();
  }  
  //noLoop();
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
  //int npX, npY; 
  double spD, anG, npX, npY, npDirect;
  //random direction in a circle
  NormalParticle()
  {
    //x,y at center of screen
    npX = 250;
    npY = 250;
    //speed random from 0-9 decimal values included
    spD = Math.random()*10;
	npDirect = Math.PI * Math.random()* 2;

  }
  public void move()
  {
    npX += Math.cos(npDirect) * spD;
    npY += Math.sin(npDirect) * spD;
  }
  public void show()
  {
    ellipse((float)npX,(float)npY,5,5);
  }
}
interface Particle
{
	public void show()
	public void move()
}
class OddballParticle extends Particle //uses an interface
{
  public void show(){
  	ellipse((int)npX,(int)npY,5,5))
  }
  public void move(){
  	npX += (int)(Math.random()*2)-1;
  	npY += (int)(Math.random()*2)-1;
  }
}
class JumboParticle extends Particle //uses inheritance
{
  //your code here
}
