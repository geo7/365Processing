/* Souce Cited:

The Nature of Code by Daniel Shiffman
Chapter 7: Cellular Automata
http://natureofcode.com/

*/
ArrayList<GOL> gols;

void setup() {
  size(500, 500);
  background(255);      
  
  frameRate(10);
  gols = new ArrayList<GOL>();
  for (int i = -400; i < width; i += 100) {
    for (int j = -400; j < height; j += 100) {
      gols.add(new GOL(i,j));
    }
  }
}

void draw() {
//  saveFrame("output/frames####.png");
  for (GOL gol : gols) {
    gol.display();
    gol.generate();
  }
}

