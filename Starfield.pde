NormalParticle [] regPart;
void setup()
{
  //your code here
  size(500,500);
  regPart = new NormalParticle[100];
  for(int nP = 0; nP < regPart.length; nP++)
  {
    regPart[nP] = new NormalParticle();
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
/*(void mousePressed()
{

}
*/
class NormalParticle implements Particle
{
  int npX, npY; 
  double spD, anG, npDirect;
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
  void move()
  {
    npX += Math.cos(npDirect) * spD;
    npY += Math.sin(npDirect) * spD;
  }
  void show()
  {
    ellipse(npX,npY,5,5);
  }
}
interface Particle
{
  void move()
  void show()
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
