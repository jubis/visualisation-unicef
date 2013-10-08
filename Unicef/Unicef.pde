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
 
 InfoWindowJob job = new InfoWindowJob( new Point( 700, 100 ), new Point( 100, 100 ), null, windows );
 ClickableArea area = new ClickableArea( job );
 areas.add( area );
 
   //questionmark box
  ArrayList<Cube> cubes = new ArrayList<Cube>();
  cubes.add( new Cube(3,185,6,10) );
  areas.add( new ClickableArea( cubes, new InfoWindowJob(new Point(30,windowSize.y-30), new Point (30,30), null/*new QuestionMarkInfoWindow()*/, windows)));
  
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
  fill(255);
  stroke(0);
  rect(15,windowSize.y-45,30,30);
  textSize(20);
  fill(0);
  text("?", 27,windowSize.y-22.5);

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
  //country name...
  ArrayList<Cube> cubes = new ArrayList<Cube>();
  cubes.add( new Cube(10,1) );
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
  cubes.add( new Cube(13,50,3,8) );
  cubes.add( new Cube(14,51,10,20) );
  cubes.add( new Cube(24,61,10) );
  areas.add( new ClickableArea( cubes, null ) );
}
