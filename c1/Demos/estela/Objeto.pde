class Objeto {
  // Variables
  int x, y;

// dos arrays para almacenar x, y
	int[] xhistory = new int[100];
	int[] yhistory = new int[100];

  Objeto() {
    this.x = 100;
		this.y = height /2;

		// se llenan los array con la posición inicial
		for (int i = 0; i < xhistory.length; i ++) {
		  xhistory[i] = x;
			yhistory[i] = y;
		}
  }


	// LO MISMO DE SIEMPRE --------------------------------
  void aaa() {
		stroke(51);
		noFill();
		ellipse(x, y, 10, 10);

  }

	void eee() {
		if (x > width) {
			x = 0;
		} else if (y < 0) {
			y = height;
		} else if (y > height) {
			y = 0;
		}
	}

	void m( ) {
		x++;
		y += random(-3, 3);

		// acá lleno los arrays con los nuevos valores de x y
		xhistory[xhistory.length - 1] = x;
		yhistory[yhistory.length - 1] = y;
	}
	// ----------------------------------------------------

	//LO NUEVO --------------------------------------
	/*se pasa por los arrays que están siendo modificados en void m
		y se sobre escribe la casilla [i] con el valor siguiente
	*/
	void estelaMora( ) {
		for (int i = 0; i < xhistory.length -1; i ++) {
		  xhistory[i] = xhistory[i+1]; // sobre escribir valores
			yhistory[i] = yhistory[i+1];
			noStroke();
			fill(51);
			ellipse(xhistory[i], yhistory[i], 2, 2); // uso de los arrays
		}
	}
}
