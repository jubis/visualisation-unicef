PImage map;
Point windowSize = new Point(800,600);
Point imageSize = new Point( 1000, 600 );

void setup() {
  map = loadImage("map.jpg");
  size((int)windowSize.x,(int)windowSize.y);
}

void draw() {
  image(map, 0, 0, imageSize.x, imageSize.y);
  
  drawLaura();
  drawMatias();
  drawMatilda();
}

InfoWindow infowindow = new InfoWindow(new Point(200,200),200,200);
void drawMatilda() {
  infowindow.draw();
}

void drawLaura() {

}

void drawMatias() {

}
