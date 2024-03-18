void setup() {
  size(400, 300);
}

void draw() {
  background(198, 112, 149); // Pared living

  // Dibujar el marco de madera
  fill(189, 104, 24); 
  rect(48, 47, width - 96, height - 96);

  // Dibujar el cielo
  fill(137, 198, 233); //
  rect(60, 60, width - 120, height - 150); 

  // Dibujar nubes blancas
  drawCloud(120, 98, 31);
  drawCloud(279, 124, 35);
 drawCloud(313, 130, 23);
}

void drawCloud(float x, float y, float size) {
  noStroke(); 
  fill(255); 

  // Dibujar elipses de la nube
  ellipse(x, y, size * 2, size); // 
  ellipse(x - size * 0.9, y + size * 0.1, size * 1.2, size * -0.5);  
  ellipse(x + size * 0.8, y + size * 0.0, size * 0.5, size * 0.5); 

  // Dibujar la línea negra que divide mar y cielo
  stroke(0);  
  strokeWeight(1);  
  line(60, height - 60, width - 60, height - 60); 
  
  // Dibujar el mar
  fill(148, 174, 234); 
  rect(60, height - 60, width - 120, -30); 

  // Dibujar el barco
  fill(192, 41, 16); 
  beginShape();
  vertex(158, height - 90); 
  vertex(249, height - 90); 
  vertex(288, height - 114); 
  vertex(115, height - 114); 
  endShape(CLOSE);

  // Dibujar el mástil
  fill(218, 34, 3); 
  rect(199, height - 195, 6, 81); 

  // Dibujar las velas
  fill(247, 240, 239); 
  triangle(183, height - 115, 199, height - 194, 148, height - 135); 
  triangle(228, height - 115, 204, height - 194, 257, height - 134); 
}
