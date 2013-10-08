PImage map;
Point windowSize = new Point(1000,600);
Point imageSize = new Point( 1000, 600 );
ArrayList<InfoWindow> windows = new ArrayList<InfoWindow>();
ArrayList<ClickableArea> areas = new ArrayList<ClickableArea>();
ArrayList<PieChart> pieCharts = new ArrayList<PieChart>();

void setup() {
  map = loadImage("map.jpg");
  size((int)windowSize.x,(int)windowSize.y);
 //pieCharts.add(new PieChart(new float[]{100, 400, 400, 1000, 700}, null, 0, 0)); 
 pieCharts.add(new PieChart(new float[]{800, 300, 400, 700}, null, 300, 300)); 
 pieCharts.add(new PieChart(new float[]{700, 700, 400}, new String[]{"word1", "word2", "word3"}, 300, 30));
 
 initCountries();
}

void draw() {
  image(map, 0, 0, imageSize.x, imageSize.y);
  for( InfoWindow window: windows) {
    window.draw();
  }
  for( ClickableArea area : areas ) {
    area.draw();
  }
  
 // drawLaura();
  drawMatias();
  drawMatilda();
}

InfoWindow infowindow = new InfoWindow(new Point(200,200),200,200);
void drawMatilda() {
  //infowindow.draw();
}

void drawLaura() {
 for(int i=0; i<pieCharts.size(); i++){
   pieCharts.get(i).draw();
  }
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

public void initCountries() {
  //country name...
  ArrayList<Cube> cubes = new ArrayList<Cube>();
  cubes.add( new Cube(141,70) );
  cubes.add( new Cube(11,1) );
  cubes.add( new Cube(12,1) );
  cubes.add( new Cube(13,1) );
  cubes.add( new Cube(14,2) );
  areas.add( new ClickableArea( cubes, null ) );
  
  //country name...
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(10,50) );
  cubes.add( new Cube(11,50) );
  cubes.add( new Cube(12,50) );
  cubes.add( new Cube(13,50) );
  cubes.add( new Cube(14,51) );
  areas.add( new ClickableArea( cubes, null ) );
}
