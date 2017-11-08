import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class estela extends PApplet {

Objeto o;

public void setup () {
  
  o = new Objeto();
}

public void draw() {
	background(253);
	o.aaa();
	o.eee();
	o.m();
	o.estelaMora();
}
class Objeto {
  // Variables
  int x, y;

// dos arrays para almacenar x, y
	int[] xhistory = new int[100];
	int[] yhistory = new int[100];

  Objeto() {
    this.x = 100;
		this.y = height /2;

		// se llenan los array con la posici\u00f3n inicial
		for (int i = 0; i < xhistory.length; i ++) {
		  xhistory[i] = x;
			yhistory[i] = y;
		}
  }


	// LO MISMO DE SIEMPRE --------------------------------
  public void aaa() {
		stroke(51);
		noFill();
		ellipse(x, y, 10, 10);

  }

	public void eee() {
		if (x > width) {
			x = 0;
		} else if (y < 0) {
			y = height;
		} else if (y > height) {
			y = 0;
		}
	}

	public void m( ) {
		x++;
		y += random(-3, 3);

		// ac\u00e1 lleno los arrays con los nuevos valores de x y
		xhistory[xhistory.length - 1] = x;
		yhistory[yhistory.length - 1] = y;
	}
	// ----------------------------------------------------

	//LO MISMO NUEVO --------------------------------------
	/*se pasa por los arrays que est\u00e1n siendo modificados en void m
		y se sobre escribe la casilla [i] con el valor siguiente
	*/
	public void estelaMora( ) {
		for (int i = 0; i < xhistory.length -1; i ++) {
		  xhistory[i] = xhistory[i+1]; // sobre escribir valores
			yhistory[i] = yhistory[i+1];
			noStroke();
			fill(51);
			ellipse(xhistory[i], yhistory[i], 2, 2); // uso de los arrays
		}
	}
}
  public void settings() {  size(400, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#0B1D3F", "--hide-stop", "estela" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
