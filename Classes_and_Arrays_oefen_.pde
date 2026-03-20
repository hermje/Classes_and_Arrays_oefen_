//OEFENEN OP CLASSEN EN ARRAYS
Cellen cel1;
Cellen cel2;

void setup() {
  size (500, 500);
  cel1 = new Cellen(10, 10, 50);
  cel2 = new Cellen(20, 20, 100);
}

void draw() {
  background(0);
  frameRate (30);
  cel1.display();
  cel1.update();
  cel2.display();
  cel2.update();
}

class Cellen {
  float celx;
  float cely;
  float celsize;

  Cellen (float tempx, float tempy, float tempsize) { //HIERAAN DENKEN: RETURN MET CLASS ZIJN!!!!! //MOTOR DIE CELLEN MAAKT elke keer je Cellen(); oproept
    celx = tempx;
    cely = tempy;
    celsize = tempsize;
  }

  void display() {
    rect(celx, cely, celsize, celsize);
  }

  void update() {
    celx = celx + random(-2, 2);
    cely = cely + random(-2, 2);
  }
}
