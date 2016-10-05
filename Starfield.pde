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
    regPart[1] = new JumboParticle();


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

/*void mousePressed(){
	for(int p = 0; p < regPart.length; p++){
		regPart[p].npX =250;
		regPart[p].npY =250;
	}

}*/

class NormalParticle implements Particle
{
  double spD, anG, npX, npY, npDirect;
  int neg;
  NormalParticle()
  {
    npX = width/2;
    npY = height/2;
    spD = Math.random()*2;
	npDirect = Math.PI * Math.random()* 2;
  }
  public void move()
  {
    npX += Math.cos(npDirect) * spD;
    npY += Math.sin(npDirect) * spD;
    if((npX > 490 && npX < 10) && (npX > 490 && npX < 10)) {
    	n
    }
    

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
	double spD, npX, npY, npDirect;
	int anG; 
	int size = 10;
	  OddballParticle()
  {
    npX = 250;
    npY = 250;
    spD = Math.random()*10;
	//npY = npY + (int)(Math.random()*2)-1;
  }
  public void show(){
  	ellipse((int)npX,(int)npY,size,size);
  }
  public void move(){
  	
  	npX = npX + (int)(Math.random()*7)-3;
  	npY = npY + (int)(Math.random()*7)-3;
  	size++;
  	if(size > 50)
  	{
  		size = 10;
  		//size++;
  	}
  	
  	//npX = 250 + 20*Math.cos(anG);
  	//npX = 250 + 20*Math.sin(anG);
  }
}
class JumboParticle extends NormalParticle //uses inheritance
{
  //your code here
  public void show() {
	ellipse((float)npX,(float)npY,20,20);
  
  }
}
