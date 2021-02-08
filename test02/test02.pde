Lightning l;
Person p;
Ground g;
Tree t;



void setup(){
    size(1080 ,720);
    p = new Person();
    g = new Ground();
    l = new Lightning(new PVector(width/2,40),100,0,5);
    t = new Tree();
  }
  
void draw(){
   background(239,43,34);
   p.display();
   g.display();
   l.update(1);
   l.display();
   t.display();
   

  }
