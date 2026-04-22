

float margin = 100; // Margin for labels and spacing
float gridEndXFactor = 0.5; // factor gaande van 0 tot 1 die bepaalt waar het einde van de grid ligt, zodat we flexibel kunnen zijn met de layout zonder overal in de code aanpassingen te moeten maken

float getGridEndX() { // Float om de X-positie van het einde van de grid te berekenen op basis van een factor van de totale breedte, zodat we flexibel kunnen zijn met de layout.
  return width * gridEndXFactor;
}

void tekenHeatmapUI() { //@amberverberck-ctrl ik heb even uw draw functie hier weggehaald en in de hoofdmap gezet en uw code hier omvat in een functie die we dan in de draw kunnen oproepen 
  background(255);
  drawGrid(7, 30);  // 7 ages on X-axis, 30 countries on Y-axis
  drawGridHeaders();
  fill(0); // Black text
  textSize(20);
  textAlign(CENTER, CENTER);
  text("HIV Prevalence by Age and Country", getGridEndX() / 2, 30); // Title, hier zit getGridEndX() in verwerkt zodat we flexibel kunnen zijn met de layout zonder overal in de code aanpassingen te moeten maken
  text("Age", margin + ((numGridColumns() + 1) * getGridCellWidth()) / 2, height - 20); // Label for X-axis
  text("Country", margin / 2, margin + ((numGridRows() + 1) * getGridCellHeight()) / 2); // Label for Y-axis

  stroke(0); // Black border for legend
  noFill();
  strokeWeight(2);
  rect(getGridEndX() + 20, 350, 40, 300); // legend box
}

void drawGrid(int numAges, int numCountries) {
  stroke(0);      // Black lines
  strokeWeight(1); // Thin lines
  
  float xSpacing = getGridCellWidth();
  float ySpacing = getGridCellHeight();
  float gridStartX = margin;
  float gridStartY = margin;
  float gridWidth = xSpacing * (numAges + 1);
  float gridHeight = ySpacing * (numCountries + 1);
  
  // Draw vertical lines for ages (X-axis)
  for (int i = 0; i <= numAges + 1; i++) {
    float x = gridStartX + i * xSpacing;
    line(x, gridStartY, x, gridStartY + gridHeight);
  }
  
  // Draw horizontal lines for countries (Y-axis)
  for (int i = 0; i <= numCountries + 1; i++) {
    float y = gridStartY + i * ySpacing;
    line(gridStartX, y, gridStartX + gridWidth, y);
  } 
}

float getGridCellWidth() {
  return (getGridEndX() - margin) / (aantalKolommen + 1.0);
}

float getGridCellHeight() {
  return (height - 2 * margin) / (aantalRijen + 1.0);
}

int numGridColumns() {
  return int(aantalKolommen);
}

int numGridRows() {
  return int(aantalRijen);
}

void drawGridHeaders() {
  float cellWidth = getGridCellWidth();
  float cellHeight = getGridCellHeight();

  fill(245);
  noStroke();
  rect(margin, margin, cellWidth, cellHeight);

  fill(0);
  textAlign(CENTER, CENTER);
  textSize(12);

  for (int col = 0; col < dataPunt.size() && col < numGridColumns(); col++) {
    String leeftijd = dataPunt.get(col).leeftijdsCategorie;
    float centerX = margin + (col + 1.5) * cellWidth;
    float centerY = margin + cellHeight / 2;
    text(leeftijd, centerX, centerY);
  }

  for (int row = 0; row < numGridRows(); row++) {
    int index = row * numGridColumns();
    if (index >= dataPunt.size()) {
      break;
    }

    String land = dataPunt.get(index).landNaam;
    float centerX = margin + cellWidth / 2;
    float centerY = margin + (row + 1.5) * cellHeight;
    text(land, centerX, centerY);
  }
}
  
