class PieInfoWindow extends InfoWindow {
  private PieChart pie;
  private String header;
  private final int padding = 15;
  private int hSize = 30;
  
  public PieInfoWindow( Point start, String header ) {
    super( start, 300, 200 );
    this.header = header;
    this.pie = new PieChart( new float[] { 20, 30, 40 },
                             new String[] { "a", "b", "c" },
                             this.beginningOfRectangleX + this.padding , 
                             this.beginningOfRectangleY + this.padding + this.hSize );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      textSize( this.hSize );
      text( this.header, 
            this.beginningOfRectangleX + this.widthOfWindow/2 - textWidth( this.header )/2, 
            this.beginningOfRectangleY + this.hSize );  
      return true;
    }
    else {
      return false;
    }
  }
  
}
