int hour;
int minute;
int second;

void setup() {
  size(300, 300);
  strokeWeight(5);
  textSize(50);
}

void draw() {
  background(100);
  noFill();
  hour = hour() % 12 * 30; //first converts 24 hour into 12 hour, then multiplies it by 30 to make it out of 360
  minute = minute() * 6; //multiplies by 6 to make it out of 360
  second = second() * 6;

  stroke(50, 200, 255);
  arc(150, 150, 280, 280, radians(-90), radians(hour) - radians(90)); //the negative 90 makes it so that the arcs start at the top, and not the right side
  
  stroke(255, 20, 255);
  arc(150, 150, 265, 265, radians(-90), radians(minute) - radians(90));
  
  stroke(100, 255, 20);
  arc(150, 150, 250, 250, radians(-90), radians(second) - radians(90));
  
  fill(50, 200, 255); //draws the numbers in the middle
  if (hour / 30 < 10) {
    text(str(hour / 30), 140, 130);
  } else {
    text(str(hour / 30), 120, 130);
  }
  
  fill(255, 20, 255);
  if (minute / 6 < 10) {
    text("0" + str(minute / 6), 120, 175);
  } else {
    text(str(minute / 6), 120, 175);
  }
}