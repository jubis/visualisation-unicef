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
  
  drawLaura();
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
  cubes.add( new Cube(149, 82, 1, 6) );
  cubes.add( new Cube(150, 82, 3, 4) );
  cubes.add( new Cube(138, 78, 2, 11) );
  cubes.add( new Cube(143, 83, 6, 7) );
  cubes.add( new Cube(143, 90, 3, 5) );
  cubes.add( new Cube(146, 90, 2, 3) );
  cubes.add( new Cube(141, 95, 4, 11) );
  cubes.add( new Cube(143, 80, 2, 3) );
  cubes.add( new Cube(145, 82, 3, 1) );
  cubes.add( new Cube(151, 79, 3, 3) );
   areas.add( new ClickableArea( cubes, null ) );
   
  //Nepal
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(143, 77, 2, 3) );
  cubes.add( new Cube(145, 78, 2, 4) );
  cubes.add( new Cube(147, 79, 3, 3) );
   areas.add( new ClickableArea( cubes, null ) );
  
  //Finland
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(106, 27, 4, 11) );
   areas.add( new ClickableArea( cubes, null ) );
  
  //Kenya
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(115, 112, 5, 8) );
  cubes.add( new Cube(117, 120, 2, 2) );
   areas.add( new ClickableArea( cubes, null ) );
  
  //Tanzania
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(113, 120, 4, 8) );
  cubes.add( new Cube(116, 122, 3, 10) );
  cubes.add( new Cube(114, 128, 2, 3) );
  cubes.add( new Cube(113, 119, 3, 1) );
   areas.add( new ClickableArea( cubes, null ) );
  
  //Bolivia
  cubes = new ArrayList<Cube>();
  cubes.add( new Cube(49, 135, 5, 5) );
  cubes.add( new Cube(49, 140, 5, 6) );
  cubes.add( new Cube(54, 139, 2, 4) );
  cubes.add( new Cube(49, 131, 3, 4) );
    areas.add( new ClickableArea( cubes, null ) );
 
 //Brazil
 cubes = new ArrayList<Cube>();
 cubes.add( new Cube(48, 115, 13, 5) );
 cubes.add( new Cube(68, 124, 2, 9) );
 cubes.add( new Cube(58, 147, 5, 12) );
 cubes.add( new Cube(46, 123, 2, 7) );
 cubes.add( new Cube(52, 111, 3, 4) );
 cubes.add( new Cube(48, 120, 20, 11) );
 cubes.add( new Cube(52, 131, 16, 4) );
 cubes.add( new Cube(54, 135, 14, 4) );
 cubes.add( new Cube(56, 139, 12, 8) );
   areas.add( new ClickableArea( cubes, null ) );
   
 //Vietnam
 cubes = new ArrayList<Cube>();
 cubes.add( new Cube(158, 87, 3, 6) );
 cubes.add( new Cube(160, 93, 2, 1) );
 cubes.add( new Cube(161, 94) );
 cubes.add( new Cube(162, 95, 1, 2) );
 cubes.add( new Cube(163, 96, 1, 5) );
 cubes.add( new Cube(162, 101, 2, 2) );
 cubes.add( new Cube(161, 103, 2, 2) );
   areas.add( new ClickableArea( cubes, null ) );
   
 //Laos
 cubes = new ArrayList<Cube>();
 cubes.add( new Cube(160, 94) );
 cubes.add( new Cube(161, 95, 1, 3) );
 cubes.add( new Cube(162, 97, 1, 2) );
   areas.add( new ClickableArea( cubes, null ) );
}
