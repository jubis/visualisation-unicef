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
 
 InfoWindowJob job = new InfoWindowJob( new Point( 700, 100 ), new Point( 100, 100 ), windows );
 ClickableArea area = new ClickableArea( job );
 areas.add( area );
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

void drawMatias() {
}

public void mouseClicked() {
  for( ClickableArea area : areas ) {
    area.click( mouse() );
  }
}

public Point mouse() {
  return new Point( mouseX, mouseY );
}

public void initCountries() {
  //India
  ArrayList<Cube> cubes = new ArrayList<Cube>();
  cubes.add( new Cube(139, 70, 3) );
  cubes.add( new Cube(140, 73, 2) );
  cubes.add( new Cube(140, 75, 3, 20) );
  cubes.add( new Cube(143, 77, 2, 30) );
  cubes.add( new Cube(145, 80, 4, 9) );
  cubes.add( new Cube(149, 82, 1, 6) );
  cubes.add( new Cube(145, 89, 2, 6) );
  cubes.add( new Cube(147, 89, 2, 2) );
  cubes.add( new Cube(150, 83, 3, 3) );
  cubes.add( new Cube(151, 79, 3, 8) );
  cubes.add( new Cube(141, 95, 2, 8) );
  cubes.add( new Cube(138, 78, 2, 11) );
  
  areas.add( new ClickableArea( cubes, null ) );
  
  //Finland
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(106, 27, 4, 11) );
  areas.add( new ClickableArea( cubes, null ) );
}
