PImage map;
Point windowSize = new Point(800,600);

void setup() {
  map = loadImage("map.jpg");
  size((int)windowSize.x,(int)windowSize.y);
}

void draw() {
  drawMatilda();
  drawLaura();
  drawMatias();
}

void drawMatilda() {

}

void drawLaura() {
   image(map, 0, 0, 800, 400);

}

void drawMatias() {

}
