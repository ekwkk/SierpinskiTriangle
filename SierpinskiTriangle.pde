public void setup()
{
	size(500,500);
	
}


public void draw()
{
	sierpinski(0,500,1000);
	frameRate(4);
}



public void sierpinski(int x, int y, int len) 
{
	if (len < 100)
	{
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else
	{
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		sierpinski(x, y, len/2);
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		sierpinski(x+len/2,y,len/2);
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		sierpinski(x+len/4, y-len/2,len/2);
	}
		
}