class PieInfoWindow extends InfoWindow {
  private PieChart pie;
  private String header;
  private final int padding = 10;
  
  public PieInfoWindow( Point start, String header ) {
    super( start, 300, 200 );
    this.header = header;
    this.pie = new PieChart( new float[] { 20, 30, 40 },
                             new String[] { "a", "b", "c" },
                             this.beginningOfRectangleX + this.padding, 
                             this.beginningOfRectangleY + this.padding );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      return true;
    }
    else {
      return false;
    }
  }
  
}
