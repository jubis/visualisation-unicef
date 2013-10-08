PImage map;
Point windowSize = new Point(800,600);
Point imageSize = new Point( 1000, 600 );
ArrayList<InfoWindow> windows = new ArrayList<InfoWindow>();
ArrayList<ClickableArea> areas = new ArrayList<ClickableArea>();
ArrayList<PieChart> pieCharts = new ArrayList<PieChart>();


void setup() {
  map = loadImage("map.jpg");
  size((int)windowSize.x,(int)windowSize.y);
}

void draw() {
  image(map, 0, 0, imageSize.x, imageSize.y);
  for( InfoWindow window: windows) {
    window.draw();
  }
  
  drawLaura();
  drawMatias();
  drawMatilda();
}

InfoWindow infowindow = new InfoWindow(new Point(200,200),200,200);
void drawMatilda() {
  infowindow.draw();
}

void drawLaura() {
 
//pieCharts.add(new PieChart({0.1*TWO_PI, 0.5*TWO_PI, 0.2*TWO_PI, 0.05*TWO_PI, 0.15*TWO_PI}); 
//pieCharts.add(new PieChart({0.2*TWO_PI, 0.2*TWO_PI, 0.3*TWO_PI, 0.15*TWO_PI, 0.15*TWO_PI}); 
//pieCharts.add(new PieChart({0, 0.6*TWO_PI, 0.2*TWO_PI, 0.05*TWO_PI, 0.15*TWO_PI});   
  
 
}

Cube cube = new Cube( 0, 0 );
//areas.add( ClickableArea( new PrintJob( "testing :)" ) ) );
InfoWindowJob job = new InfoWindowJob( new Point( 700, 100 ), new Point( 100, 100 ), windows );
ClickableArea area = new ClickableArea( job );
//areas.add( area );
void drawMatias() {
  area.draw();
}

public void mouseClicked() {
  area.click( mouse() );
}

public Point mouse() {
  return new Point( mouseX, mouseY );
}
