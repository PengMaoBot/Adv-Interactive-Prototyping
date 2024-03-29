import processing.serial.*;

Serial myConnection;

float box;
float circleX;
float x = 0;
float bright = 0;

void setup() {
  size(600, 600);
  noStroke();
  circleX = 0;

  printArray(Serial.list());
  myConnection = new Serial(this, Serial.list()[2], 9600);
  myConnection.bufferUntil('\n');
}

void draw() {
  //background(0, 100, 150);
  circleX = circleX + 1;

  if (circleX >= width) {
    circleX = 0;
  }

  box = map(x, 0, height, 255, 0);
  //background(box, 56, 80, 121);
  background(box, 73, 100, 170);

  //SUN
  fill(255, 180);
  ellipse(450, 100, 100, 100);

  fill(255, 10);
  ellipse(450, 100, 120, 120);
  ellipse(450, 100, 140, 140);
  ellipse(450, 100, 160, 160);

  fill(box, 73, 100);
  ellipse(x, 100, 95, 95);

  //BUILDINGS
  fill(0, 80);
  rect(0, 290, 100, 200);
  rect(120, 200, 100, 300);

  rect(160, 150, 3, 50);

  rect(410, 350, 200, 300);
  rect(520, 300, 100, 50);

  //WINDOWS FIRST BUILDING
  fill(#FFF4D1, bright);
  rect(10, 310, 10, 10);
  rect(30, 330, 10, 10);
  rect(10, 330, 10, 10);
  rect(70, 330, 10, 10);
  rect(70, 350, 10, 10);
  rect(10, 410, 10, 10);
  rect(10, 390, 10, 10);
  rect(50, 390, 10, 10);

  //WINDOWS BUILDING 2
  rect(130, 220, 10, 10);
  rect(170, 220, 10, 10);
  rect(190, 220, 10, 10);
  rect(190, 240, 10, 10);
  rect(190, 260, 10, 10);
  rect(170, 260, 10, 10);
  rect(130, 260, 10, 10);
  rect(170, 280, 10, 10);
  rect(150, 280, 10, 10);
  rect(190, 300, 10, 10);
  rect(150, 340, 10, 10);
  rect(130, 340, 10, 10);
  rect(130, 360, 10, 10);
  rect(170, 360, 10, 10);
  rect(190, 420, 10, 10);
  rect(150, 420, 10, 10);
  rect(190, 400, 10, 10);
  rect(170, 440, 10, 10);
  rect(130, 470, 10, 10);
  rect(150, 470, 10, 10);
  rect(190, 470, 10, 10);

  //WINDOWS BUILDING 3
  rect(420, 370, 10, 10);
  rect(440, 370, 10, 10);
  rect(480, 370, 10, 10);
  rect(500, 370, 10, 10);
  rect(500, 390, 10, 10);
  rect(460, 390, 10, 10);
  rect(460, 410, 10, 10);
  rect(480, 410, 10, 10);
  rect(420, 410, 10, 10);
  rect(500, 430, 10, 10);
  rect(480, 430, 10, 10);
  rect(420, 430, 10, 10);
  rect(440, 470, 10, 10);
  rect(420, 470, 10, 10);

  //WINDOWS BUILDING 4
  rect(530, 360, 10, 10);
  rect(550, 340, 10, 10);
  rect(530, 320, 10, 10);
  rect(570, 320, 10, 10);
  rect(550, 320, 10, 10);
  rect(590, 380, 10, 10);
  rect(590, 400, 10, 10);
  rect(550, 380, 10, 10);
  rect(530, 380, 10, 10);
  rect(530, 420, 10, 10);
  rect(550, 420, 10, 10);


  //FILL GROUND
  //fill(255);
  fill(200, 250, 255);
  rect(0, 500, 600, 200);


  //GROUND
  fill(0);
  ellipse(0, 500, 200, 100);
  ellipse(0, 500, 300, 50);
  ellipse(300, 500, 70, 20);
  ellipse(500, 500, 100, 40);
  ellipse(450, 500, 100, 20);
  ellipse(300, 500, 70, 20);
  ellipse(580, 490, 170, 100);

  //BRIDGE
  fill(255, 150);
  rect(0, 428, 600, 2);
  fill(0);
  quad(width/2+500, height/2+150, width/2+576, height/2+170, width/2-586, height/2+170, width/2-560, height/2+150);
  rect(0, 430, 600, 5);
  rect(20, 430, 5, 20);
  rect(40, 430, 5, 20);
  rect(60, 430, 5, 20);
  rect(80, 430, 5, 20);
  rect(100, 430, 5, 20);
  rect(120, 430, 5, 20);
  rect(140, 430, 5, 20);
  rect(160, 430, 5, 20);
  rect(180, 430, 5, 20);
  rect(200, 430, 5, 20);
  rect(220, 430, 5, 20);
  rect(240, 430, 5, 20);
  rect(260, 430, 5, 20);
  rect(280, 430, 5, 20);
  rect(300, 430, 5, 20);
  rect(320, 430, 5, 20);
  rect(340, 430, 5, 20);
  rect(360, 430, 5, 20);
  rect(380, 430, 5, 20);
  rect(400, 430, 5, 20);
  rect(420, 430, 5, 20);
  rect(440, 430, 5, 20);
  rect(460, 430, 5, 20);
  rect(480, 430, 5, 20);
  rect(500, 430, 5, 20);
  rect(520, 430, 5, 20);
  rect(540, 430, 5, 20);
  rect(560, 430, 5, 20);
  rect(580, 430, 5, 20);

  //BRIDGE SHADOW
  fill(0, 50);
  rect(0, 505, 600, 10);

  //REFLECTION
  fill(100, 150);
  rect(0, 500, 600, 200);

  //SNOW
  fill(255, 150);
  ellipse(10, circleX, 10, 10);
  ellipse(50, circleX+20, 10, 10);
  ellipse(80, circleX, 5, 5);
  ellipse(110, circleX+100, 5, 5);
  ellipse(140, circleX+150, 10, 10);
  ellipse(180, circleX-200, 10, 10);
  ellipse(200, circleX-150, 5, 5);
  ellipse(240, circleX-50, 5, 5);
  ellipse(240, circleX, 10, 10);
  ellipse(300, circleX+20, 5, 5);
  ellipse(440, circleX, 10, 10);
  ellipse(440, circleX, 10, 10);
  ellipse(550, circleX+100, 10, 10);
  ellipse(530, circleX-250, 10, 10);
  ellipse(530, circleX-200, 5, 5);
  ellipse(580, circleX-300, 5, 5);
  ellipse(300, circleX-400, 5, 5);
  ellipse(140, circleX-350, 5, 5);
  ellipse(400, circleX-300, 5, 5);
  ellipse(550, circleX, 5, 5);

  fill(255);
  ellipse(100, 630, 400, 100);
  ellipse(0, 600, 350, 100);
  fill(255, 150);
  ellipse(370, 500, 100, 1);
  ellipse(570, 510, 100, 1);
  ellipse(140, 500, 100, 1);
  ellipse(360, 550, 100, 3);
  ellipse(400, 560, 50, 1);
  ellipse(150, 530, 50, 1);
}
void serialEvent(Serial conn) {
  String fromSerial = conn.readString();

  if (fromSerial !=null) {
    fromSerial = trim(fromSerial);

    String[] data = split(fromSerial, ',');
   //printArray(data);

    if (data.length ==2) {
      //printArray(float(data[0]));
      x = float(data[1]);
      x = map(x, 0, 4096, 10, width);
      
      //circleHue = float(data[1]);
      //circleHue = map(circleHue, 0, 4096, 0, 360);
    }
    if (data.length ==1) {
      printArray(float(data[0]));
     if (float(data[0])>20){
       bright = 100;
      } else{
        bright = 0;
      }
      
      //circleHue = float(data[1]);
      //circleHue = map(circleHue, 0, 4096, 0, 360);
    }


    //for the circle diameter
    //diameter = float(fromSerial);
    //diameter = constrain(diameter, 30, width); // range


    //circleHue = float(fromSerial);
    //circleHue = map(circleHue, 0, 4096, 0, 360);
  }
  //println( fromSerial );
}
