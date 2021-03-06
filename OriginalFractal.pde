//drawing parameters
public int detail = 30; //makes fractal more 'detailed' by recursive func
public int sizeFractal = detail*15;


public void setup()
{
	background(100, 5);
	size(sizeFractal, sizeFractal); //fits the fractal
}

public int count = 0;
public void draw()
{
	background(100, 5);
	recursiveSquareBox(width/2, height/2, sizeFractal); 
	sizeFractal += 10;

	//resets sizeFractal to conserve memory
	if (sizeFractal >= 2*width)
	{
		sizeFractal = detail*15;
	}

	fill(250, 0, 10);
	noStroke();
}

public void mouseClicked() //reset when clicked
{
	sizeFractal = detail*15;
}

public void recursiveSquareBox(int x, int y, int len) //recursive func to draw recursiveSquareBox
{
	fill(len/2, 100); //fill color changes
	rect(x-len/2, y-len/2, len, len); //draws square centered with h/w of len
	// the 'change' - each square is 1/2 size of prior
	len = len/2; 

	// recursive call
	if (len > detail/2)
	{
		recursiveSquareBox(x, y, len);
	}

	/* method 1 */
	// if (len > detail)
	// {
	// 	recursiveSquareBox(x+len/4, y+len/4, len/2);
	// 	// recursiveSquareBox(x+len/2, y, len/2);
	// 	// recursiveSquareBox(x+len/4, y-len/2, len/2);
	// }
	// else 
	// {
	// 	fill(255, 255, 255);
	// 	strokeWeight(1);
	// 	rect(x, y, len, len);
	// }

	/* method 2 */
	// if (len < detail)
	// {

	// }
	// else 
	// {
	// 	fill(255, 255, 255);
	// 	strokeWeight(1);
	// 	rect(x, y, len, len);
	// 	recursiveSquareBox(x+len/4, y+len/4, len/2);
	// }
}