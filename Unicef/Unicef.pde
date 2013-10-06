PImage map;
Point windowSize = new Point(800,600);
Point imageSize = new Point( 1000, 600 );
ArrayList<InfoWindow> windows = new ArrayList<InfoWindow>();
ArrayList<ClickableArea> areas = new ArrayList<ClickableArea>();
ArrayList<PieChart> pieCharts;

void setup() {
  map = loadImage("map.jpg");
  size((int)windowSize.x,(int)windowSize.y);
// Create an empty ArrayList
pieCharts = new ArrayList<PieChart>();  
// adding piecharts to the list
pieCharts.add(new PieChart(percentages1)); 
pieCharts.add(new PieChart(percentages2)); 
pieCharts.add(new PieChart(percentages3)); 
  
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
}

Cube cube = new Cube( 0, 0 );
//areas.add( ClickableArea( new PrintJob( "testing :)" ) ) );
ClickableArea area = new ClickableArea( new InfoWindowJob( new Point( 100, 100 ), windows ) );
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
