//your code here
NormalParticle [] regPart;
void setup()
{
	//your code here
	size(500,500);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double npX, npY, spD, anG;
	//random direction in a circle
	double npDirect = Math.PI * Math.random();
	NormalParticle()
	{
		//x,y at center of screen
		npX = 250;
		npY = 250;
		//speed random from 0-9 decimal values included
		spD = Math.random()*10;

	}
	void move()
	{
		npX = npX + Math.cos(npDirect) * spD;
		npY = npY + Math.sin(npDirect) * spD;
	}
	void show()
	{
		ellipse(npX,npY,20,20);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

