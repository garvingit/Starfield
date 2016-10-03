Particle [] regPart;
void setup()
{
  //your code here
  size(500,500);
  regPart = new Particle[100];
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
  double spD, anG, npX, npY, npDirect;
  NormalParticle()
  {
    npX = 250;
    npY = 250;
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
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double spD, anG, npX, npY, npDirect;
	  OddballParticle()
  {
    npX = 250;
    npY = 250;
    spD = Math.random()*10;
	//npY = npY + (int)(Math.random()*2)-1;
  }
  public void show(){
  	ellipse((int)npX,(int)npY,50,50);
  }
  public void move(){
  	npX = npX + (int)(Math.random()*3)-1;
  	npY = npY + (int)(Math.random()*3)-1;

    /* if(npX > 500) 
     {
       npX = npX + (int)(Math.random()*2)-1;
       npY = npY + (int)(Math.random()*3)-1;
     }
     else if(npX < 0) 
     {
       npX = npX + (int)(Math.random()*2);
       npY = npY + (int)(Math.random()*3)-1;
     }
     else if(npY > 500)
     {
       npY = npY + (int)(Math.random()*2)-1;
       npX = npX + (int)(Math.random()*3)-1;
     }
     else if(npY < 0) 
     {
       npY = npY + (int)(Math.random()*2);
       npX = npX + (int)(Math.random()*3)-1;
     }
     */
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
