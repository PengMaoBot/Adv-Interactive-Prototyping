Lightning l;
Person p;
Ground g;
Tree t;
int x;
int y;

void setup() {
  size(1080, 720);
  p = new Person();
  g = new Ground();
  l = new Lightning(new PVector(width/2, 40), 600, 2, 5);
  t = new Tree();
}

void draw() {

  background(239, 43, 34);
  
    //loop to draw 1 lightning bolt:
  while(y<700){//to bottom of screen
     int endX = x + int(random(-4,4)); //x-value varies
     int endY = y + 1;    //y just goes up
     strokeWeight(2);//bolt is a little thicker than a line
     stroke(255); //white line
     line(x,y,endX,endY);//draw a tiny segment
     x = endX;  //then x and y are moved to the 
     y = endY;  //end of the segment and so on
  }

  p.display();
  g.display();
  t.display();


}
void mousePressed(){
  x = mouseX; //the mouse location becomes
  y = mouseY;  //the source of the bolt
  redraw(); //very useful function! Means "run draw() again"
}
